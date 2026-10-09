import heapq
import itertools
import sys
from collections.abc import Iterable
from dataclasses import dataclass

from abstractions import SignSet

import jpamb
import sexpr
from jpamb import jvm
from jvm.state import PC, StackInt

GROUP_NAME = "DenizIsikli"


class Worklist:
    """A FIFO-ish worklist, ordered by bytecode offset so that most of a
    straight-line region converges before loop back-edges are revisited,
    with no duplicate entries pending at once."""

    def __init__(self, pcs: Iterable[PC] = ()):
        self._counter = itertools.count()
        self._heap: list[tuple[int, int, PC]] = []
        self._pending: set[PC] = set()
        for pc in pcs:
            self.add(pc)

    def add(self, pc: PC):
        if pc not in self._pending:
            self._pending.add(pc)
            heapq.heappush(self._heap, (pc.offset, next(self._counter), pc))

    def pop(self) -> PC:
        _, _, pc = heapq.heappop(self._heap)
        self._pending.discard(pc)
        return pc

    def __contains__(self, pc: PC) -> bool:
        return pc in self._pending

    def __bool__(self) -> bool:
        return bool(self._heap)

    def __len__(self) -> int:
        return len(self._heap)


@dataclass(frozen=True)
class State(sexpr.AsSExpr):
    locals: tuple[SignSet, ...]
    stack: tuple[SignSet, ...]

    def __post_init__(self):
        assert isinstance(self.locals, tuple)
        assert isinstance(self.stack, tuple)

    def __str__(self):
        return f"{', '.join(map(str, self.locals))}/{':'.join(map(str, self.stack))}"

    def __or__(self, other):
        assert isinstance(other, State), f"Expected State but got {other!r}"
        assert len(self.stack) == len(other.stack), "Stacks should be equal lenght"
        assert len(self.locals) == len(other.locals), "Locals should be equal lenght"

        return State(
            tuple(s1 | s2 for s1, s2 in zip(self.locals, other.locals)),
            tuple(s1 | s2 for s1, s2 in zip(self.stack, other.stack)),
        )

    def push(self, value: SignSet):
        assert isinstance(value, SignSet), f"Expected sign set but got {value}"
        return State(self.locals, self.stack + (value,))

    def pop(self, number=1):
        if number == 0:
            return (), self
        return self.stack[-number:], State(self.locals, self.stack[:-number])

    def load(self, index):
        return self.locals[index]

    def store(self, index, value):
        return State(
            tuple(self.locals[:index]) + (value,) + tuple(self.locals[index + 1 :]),
            self.stack,
        )


def manystep(
    bc: jpamb.Bytecode,
    pc: PC,
    state: State,
) -> Iterable[tuple[PC, object] | str]:
    opr = bc[pc]
    match opr:
        case jvm.Push(type=t, value=v):
            match t:
                case jvm.Int():
                    yield (pc + 1, state.push(SignSet.abstract([StackInt(v)])))
                case jvm.Reference():
                    yield (pc + 1, state.push(SignSet.from_sign("0")))
                case jvm.Object(name) if name == jvm.ClassName("java.lang.String"):
                    yield (pc + 1, state.push(SignSet.from_sign("+")))
                case _:
                    raise NotImplementedError(f"Unhandled push type {t!r}")

        case jvm.Negate():
            [v], after = state.pop(1)
            yield (pc + 1, after.push(v.negate()))

        case jvm.Cast():
            [_v], after = state.pop(1)
            # Sound but imprecise: a narrowing cast could flip the sign.
            yield (pc + 1, after.push(SignSet.top()))

        case jvm.NewArray(dim=1):
            [_count], after = state.pop(1)
            yield (pc + 1, after.push(SignSet.from_sign("+")))

        case jvm.Dup(words=1):
            [v], after = state.pop(1)
            yield (pc + 1, after.push(v).push(v))

        case jvm.ArrayStore():
            [arrayref, _index, _value], after = state.pop(3)
            if 0 in arrayref.signs:
                yield "null pointer"
            if arrayref.signs - {0}:
                # We do not track array lengths, so bounds are never provably safe.
                yield "out of bounds"
                yield (pc + 1, after)

        case jvm.ArrayLoad():
            [arrayref, _index], after = state.pop(2)
            if 0 in arrayref.signs:
                yield "null pointer"
            if arrayref.signs - {0}:
                yield "out of bounds"
                yield (pc + 1, after.push(SignSet.top()))

        case jvm.ArrayLength():
            [arrayref], after = state.pop(1)
            if 0 in arrayref.signs:
                yield "null pointer"
            if arrayref.signs - {0}:
                yield (pc + 1, after.push(SignSet.from_sign("0+")))

        case jvm.Store(index=i):
            [v], after = state.pop(1)
            yield (pc + 1, after.store(i, v))

        case jvm.Incr(index=i, amount=a):
            v = state.load(i)
            delta = SignSet.abstract([StackInt(a)])
            new_v, _errs = v.arithmetic(delta, jvm.BinaryOpr.Add)
            yield (pc + 1, state.store(i, new_v))

        case jvm.Get(static=True, field=field):
            # Hack - Only handle the assertion case
            assert field.extension.name == "$assertionsDisabled"

            # Hack - Assuming assertions are never disabled
            va = SignSet.abstract([StackInt(0)])

            yield (pc + 1, state.push(va))

        case jvm.If(condition=op, target=target):
            [v1, v2], after = state.pop(2)
            for res in v1.compare(v2, op):
                match res:
                    case True:
                        yield (pc % target, after)
                    case False:
                        yield (pc + 1, after)

        case jvm.Ifz(condition=op, target=target):
            [val], after = state.pop(1)

            for res in SignSet.compare(val, SignSet.abstract([StackInt(0)]), op):
                match res:
                    case True:
                        yield (pc % target, after)
                    case False:
                        yield (pc + 1, after)
                    case err:
                        yield err

        case jvm.Load(index=i):
            va = state.load(i)
            yield (pc + 1, state.push(va))

        case jvm.Goto(target=t):
            yield (pc % t, state)

        case jvm.Binary(operant=op):
            [v1, v2], after = state.pop(2)
            res, errs = v1.arithmetic(v2, op)
            for err in errs:
                yield err
            if res != SignSet.bot():
                yield (pc + 1, after.push(res))

        case jvm.InvokeStatic(method=method):
            nargs = len(method.extension.params)
            args, after = state.pop(nargs)
            callee_states, results, retval = analyze_method(bc, method, tuple(args))
            # Expose the callee's own reachable program points too, so
            # interprocedural coverage shows up in the emitted report.
            yield from callee_states.items()
            for r in results:
                if r == "ok":
                    if method.extension.return_type is not None:
                        yield (pc + 1, after.push(retval))
                    else:
                        yield (pc + 1, after)
                else:
                    yield r

        case jvm.InvokeVirtual(method=method) if method.extension.name == "equals":
            [objectref, _arg], after = state.pop(2)
            if 0 in objectref.signs:
                yield "null pointer"
            if objectref.signs - {0}:
                yield (pc + 1, after.push(SignSet.from_sign("0+")))

        case jvm.Return(type=None):
            yield "ok"

        case jvm.Return(type=t):
            # Hack -- we assume that we always return.
            yield "ok"

        case jvm.New(classname=jvm.ClassName("java.lang.AssertionError")):
            # Hack -- if we create an assertion error, we probably also throw it.
            yield "assertion error"


_method_cache: dict[tuple, tuple[dict[PC, State], frozenset[str], SignSet]] = {}
_in_progress: set[tuple] = set()


def analyze_method(
    bc: jpamb.Bytecode, methodid, arg_locals: tuple[SignSet, ...]
) -> tuple[dict[PC, State], frozenset[str], SignSet]:
    """Run the worklist to a fixed point for a single method call, memoized by
    (methodid, abstracted arguments). Direct recursion is broken by returning
    an (empty) placeholder on re-entry with the same call signature; the
    non-recursive paths of the callee are still fully explored."""

    key = (methodid, arg_locals)
    if key in _method_cache:
        return _method_cache[key]
    if key in _in_progress:
        return ({}, frozenset(), SignSet.bot())

    _in_progress.add(key)
    try:
        method = bc.getmethod(methodid)
        locals_ = list(arg_locals) + [SignSet.bot()] * (
            method.max_locals - len(arg_locals)
        )
        start = PC(methodid, 0)
        states: dict[PC, State] = {start: State(tuple(locals_), ())}
        worklist = Worklist([start])
        results: set[str] = set()

        budget = 20_000
        while worklist and budget > 0:
            budget -= 1
            p = worklist.pop()
            for res in manystep(bc, p, states[p]):
                if isinstance(res, str):
                    results.add(res)
                else:
                    pc_, st2 = res
                    before = states.get(pc_)
                    after = st2 if before is None else (before | st2)
                    if before is None or after != before:
                        states[pc_] = after
                        worklist.add(pc_)

        retval = SignSet.bot()
        for p, st_ in states.items():
            op = bc[p]
            if isinstance(op, jvm.Return) and op.type is not None and st_.stack:
                retval = retval | st_.stack[-1]

        out = (states, frozenset(results), retval)
    finally:
        _in_progress.discard(key)

    _method_cache[key] = out
    return out


def initialstate(
    bc: jpamb.Bytecode,
    methodid: jvm.AbsMethodID,
    inputs: jpamb.Input | None,
) -> dict[PC, State]:
    method = bc.getmethod(methodid)
    locals = [SignSet.bot()] * method.max_locals

    if inputs is None:
        for i, p in enumerate(methodid.extension.params):
            locals[i] = SignSet.top()
    else:
        for i, x in enumerate(inputs.values):
            match x:
                case jpamb.case.Boolean(value=value):
                    locals[i] = SignSet.abstract([StackInt(int(value))])
                case jpamb.case.Int(value=value):
                    locals[i] = SignSet.abstract([StackInt(int(value))])
                case jpamb.case.Array():
                    locals[i] = SignSet.from_sign("+")
                case jpamb.case.String():
                    locals[i] = SignSet.from_sign("+")
                case _:
                    raise NotImplementedError(f"Unsupported value {x!r}")

    state = State(tuple(locals), ())
    return {PC(methodid, 0): state}


@dataclass
class AbstractInterpreter:
    bc: jpamb.Bytecode
    worklist: Worklist
    states: dict[PC, State]
    looped: bool = False

    @staticmethod
    def initial(bc: jpamb.Bytecode, methodid: jvm.AbsMethodID, inputs):
        states = initialstate(bc, methodid, inputs)
        worklist = Worklist(states.keys())

        return AbstractInterpreter(bc, worklist, states)

    def step(self) -> tuple[PC, set[str], bool]:
        pc = self.worklist.pop()

        print(f"Stepping {pc}:\n > {self.bc[pc]}", file=sys.stderr)

        finals = set()
        changed = False

        for res in manystep(self.bc, pc, self.states[pc]):
            if isinstance(res, str):
                finals.add(res)
            else:
                pc_, st = res

                before = self.states.get(pc_, None)
                if before is None:
                    after = st
                else:
                    after = before | st
                    # Updating an already-visited program point means we went
                    # around a back-edge (loop); we cannot prove this
                    # terminates, so "*" stays a possible outcome.
                    self.looped = True
                if before is None or after != before:
                    self.states[pc_] = after
                    self.worklist.add(pc_)
                    changed = True

        return pc, finals, changed


def interpret():
    """The static analysis"""
    methodid, input, steps = jpamb.getcase(
        "static",
        "1.0",
        GROUP_NAME,
        ["static", "python"],
        for_science=True,
    )
    suite, eff = jpamb.setup()
    bc = jpamb.Bytecode(suite, eff, {})

    ai = AbstractInterpreter.initial(bc, methodid, input)

    x = jpamb.emit_init(ai.states)

    last_pc = next(iter(ai.states))
    seen_finals: set[str] = set()
    visited: set[PC] = set()

    while steps > 0 and ai.worklist:
        pc, final, changed = ai.step()
        last_pc = pc
        first_visit = pc not in visited
        visited.add(pc)

        new_finals = final - seen_finals
        for f in new_finals:
            seen_finals.add(f)
            jpamb.emit_step(x, pc, f, depth=1)
            steps -= 1

        # A PC must be reported at least once to count as covered. On a
        # revisit (a loop back-edge bringing more refined info), skip the
        # report only if it genuinely adds nothing new, to save budget.
        if first_visit or changed or new_finals:
            x = jpamb.emit_step(x, pc, ai.states, depth=1)
            steps -= 1

    # A back-edge we revisited means we cannot prove termination: the
    # program might run forever, so "*" is a sound possible outcome.
    if steps > 0 and ai.looped and not seen_finals:
        jpamb.emit_step(x, last_pc, "*", depth=1)


def analyse():
    """The static analysis"""

    methodid = jpamb.getmethodid(
        "static",
        "1.0",
        GROUP_NAME,
        ["static", "python"],
        for_science=True,
    )

    suite, eff = jpamb.setup()
    bc = jpamb.Bytecode(suite, eff, {})

    steps = 300

    ai = AbstractInterpreter.initial(bc, methodid, None)

    final = set()
    while steps > 0 and ai.worklist:
        _pc, finals, _changed = ai.step()
        final |= finals
        steps -= 1

    if ai.looped and not final:
        final.add("*")

    for f in jpamb.QUERIES:
        if f not in final:
            print(f"{f};no")
        else:
            print(f"{f};maybe")
