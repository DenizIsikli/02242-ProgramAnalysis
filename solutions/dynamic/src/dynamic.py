import itertools
import random
import sys
import time

import jpamb
import jvm
import jvm.state as jvmc

GROUP_NAME = "DenizIsikli"

I32_MIN = -(1 << 31)
I32_MAX = (1 << 31) - 1
I16_MIN = -(1 << 15)
I16_MAX = (1 << 15) - 1


def to_i32(v: int) -> int:
    v &= 0xFFFFFFFF
    if v & 0x80000000:
        v -= 1 << 32
    return v


def to_i16(v: int) -> int:
    v &= 0xFFFF
    if v & 0x8000:
        v -= 1 << 16
    return v


def java_div(a: int, b: int) -> int:
    q = abs(a) // abs(b)
    if (a < 0) != (b < 0):
        q = -q
    return to_i32(q)


def java_rem(a: int, b: int) -> int:
    return to_i32(a - java_div(a, b) * b)


def binary(op, v1: int, v2: int) -> int | str:
    match op:
        case jvm.BinaryOpr.Add:
            return to_i32(v1 + v2)
        case jvm.BinaryOpr.Sub:
            return to_i32(v1 - v2)
        case jvm.BinaryOpr.Mul:
            return to_i32(v1 * v2)
        case jvm.BinaryOpr.Div:
            if v2 == 0:
                return "divide by zero"
            return java_div(v1, v2)
        case jvm.BinaryOpr.Rem:
            if v2 == 0:
                return "divide by zero"
            return java_rem(v1, v2)
        case a:
            raise NotImplementedError(f"Unhandled binary {op!r}")


def compare(op, v1: int, v2: int) -> bool:
    match op:
        case jvm.CmpOpr.Eq:
            return v1 == v2
        case jvm.CmpOpr.Ne:
            return v1 != v2
        case jvm.CmpOpr.Lt:
            return v1 < v2
        case jvm.CmpOpr.Le:
            return v1 <= v2
        case jvm.CmpOpr.Ge:
            return v1 >= v2
        case jvm.CmpOpr.Gt:
            return v1 > v2
        case _:
            raise NotImplementedError(f"Unhandled comparation {op!r}")


def _pop_args(frame: jvmc.Frame, n: int) -> list:
    args = [frame.stack.pop() for _ in range(n)]
    args.reverse()
    return args


def step(bc: jpamb.Bytecode, state: jvmc.State) -> tuple[jvmc.PC, jvmc.State | str]:
    assert isinstance(state, jvmc.State), f"expected state but got {state}"
    frame = state.frames.peek()
    pc = frame.pc
    opr = bc[pc]
    output = state
    print(f"Stepping {pc}:\n > {opr}", file=sys.stderr)
    match opr:
        case jvm.Push(type=t, value=v):
            match t:
                case jvm.Int():
                    frame.stack.push(jvmc.StackInt(to_i32(v)))
                case jvm.Reference():
                    frame.stack.push(jvmc.StackReference(0))
                case jvm.Object(name) if name == jvm.ClassName("java.lang.String"):
                    ref = state.heap.new(jvmc.HeapString(v))
                    frame.stack.push(ref)
                case _:
                    raise NotImplementedError(f"Unhandled push type {t!r}")
            frame.pc += 1

        case jvm.Negate(type=jvm.Int()):
            v = frame.stack.pop()
            assert isinstance(v, jvmc.StackInt), f"expected int, but got {v}"
            frame.stack.push(jvmc.StackInt(to_i32(-v.value)))
            frame.pc += 1

        case jvm.Cast(from_=jvm.Int(), to_=jvm.Short()):
            v = frame.stack.pop()
            assert isinstance(v, jvmc.StackInt), f"expected int, but got {v}"
            frame.stack.push(jvmc.StackInt(to_i16(v.value)))
            frame.pc += 1

        case jvm.NewArray(type=t, dim=1):
            count = frame.stack.pop()
            assert isinstance(count, jvmc.StackInt), f"expected int, but got {count}"
            size = count.value
            if size < 0:
                size = 0
            elif size > 1_000_000:
                size = 1_000_000
            ref = state.heap.new(jvmc.HeapArray(t, [0] * size))
            frame.stack.push(ref)
            frame.pc += 1

        case jvm.Dup(words=1):
            v = frame.stack.pop()
            frame.stack.push(v)
            frame.stack.push(v)
            frame.pc += 1

        case jvm.ArrayStore(type=_t):
            value = frame.stack.pop()
            index = frame.stack.pop()
            arrayref = frame.stack.pop()
            assert isinstance(index, jvmc.StackInt), f"expected int, but got {index}"
            assert isinstance(arrayref, jvmc.StackReference), (
                f"expected ref, but got {arrayref}"
            )
            if arrayref.value == 0:
                output = "null pointer"
            else:
                array = state.heap[arrayref]
                assert isinstance(array, jvmc.HeapArray)
                if not (0 <= index.value < len(array.values)):
                    output = "out of bounds"
                else:
                    array.values[index.value] = value.value
                    frame.pc += 1

        case jvm.ArrayLoad(type=_t):
            index = frame.stack.pop()
            arrayref = frame.stack.pop()
            assert isinstance(index, jvmc.StackInt), f"expected int, but got {index}"
            assert isinstance(arrayref, jvmc.StackReference), (
                f"expected ref, but got {arrayref}"
            )
            if arrayref.value == 0:
                output = "null pointer"
            else:
                array = state.heap[arrayref]
                assert isinstance(array, jvmc.HeapArray)
                if not (0 <= index.value < len(array.values)):
                    output = "out of bounds"
                else:
                    frame.stack.push(jvmc.StackInt(array.values[index.value]))
                    frame.pc += 1

        case jvm.ArrayLength():
            arrayref = frame.stack.pop()
            assert isinstance(arrayref, jvmc.StackReference), (
                f"expected ref, but got {arrayref}"
            )
            if arrayref.value == 0:
                output = "null pointer"
            else:
                array = state.heap[arrayref]
                assert isinstance(array, jvmc.HeapArray)
                frame.stack.push(jvmc.StackInt(len(array.values)))
                frame.pc += 1

        case jvm.Store(type=_t, index=i):
            value = frame.stack.pop()
            frame.locals[i] = value
            frame.pc += 1

        case jvm.Load(type=_t, index=i):
            frame.stack.push(frame.locals[i])
            frame.pc += 1

        case jvm.Incr(index=i, amount=a):
            v = frame.locals[i]
            assert isinstance(v, jvmc.StackInt), f"expected int, but got {v}"
            frame.locals[i] = jvmc.StackInt(to_i32(v.value + a))
            frame.pc += 1

        case jvm.Binary(type=jvm.Int(), operant=op):
            v2, v1 = frame.stack.pop(), frame.stack.pop()
            assert isinstance(v1, jvmc.StackInt), f"expected int, but got {v1}"
            assert isinstance(v2, jvmc.StackInt), f"expected int, but got {v2}"

            value = binary(op, v1.value, v2.value)

            if isinstance(value, str):
                output = value
            else:
                frame.stack.push(jvmc.StackInt(value))
                frame.pc += 1

        case jvm.If(condition=op, target=target):
            v2, v1 = frame.stack.pop(), frame.stack.pop()
            if compare(op, v1.value, v2.value):
                frame.pc %= target
            else:
                frame.pc += 1

        case jvm.Ifz(condition=op, target=target):
            value = frame.stack.pop()
            assert isinstance(value, (jvmc.StackInt, jvmc.StackReference)), (
                f"expected int or ref, but got {value}"
            )

            if compare(op, value.value, 0):
                frame.pc %= target
            else:
                frame.pc += 1

        case jvm.Goto(target=target):
            frame.pc %= target

        case jvm.Get(static=True, field=field):
            # Hack - Only handle the assertion case
            assert field.extension.name == "$assertionsDisabled"

            # Hack - Assuming assertions are never disabled
            frame.stack.push(jvmc.StackInt(0))
            frame.pc += 1

        case jvm.New(classname=jvm.ClassName("java.lang.AssertionError")):
            # Hack -- if we create an assertion error, we probably also throw it.
            output = "assertion error"

        case jvm.InvokeStatic(method=method):
            target_method = bc.getmethod(method)
            nargs = len(method.extension.params)
            args = _pop_args(frame, nargs)
            new_frame = jvmc.Frame.from_method(target_method)
            for i, a in enumerate(args):
                new_frame.locals[i] = a
            state.frames.push(new_frame)

        case jvm.InvokeVirtual(method=method) if method.extension.name == "equals":
            arg = frame.stack.pop()
            objectref = frame.stack.pop()
            assert isinstance(objectref, jvmc.StackReference)
            assert isinstance(arg, jvmc.StackReference)
            if objectref.value == 0:
                output = "null pointer"
            else:
                left = state.heap[objectref]
                right = state.heap[arg] if arg.value != 0 else None
                is_equal = (
                    isinstance(left, jvmc.HeapString)
                    and isinstance(right, jvmc.HeapString)
                    and left.content == right.content
                )
                frame.stack.push(jvmc.StackInt(1 if is_equal else 0))
                frame.pc += 1

        case jvm.Return(type=t):
            value = frame.stack.pop() if t is not None else None
            state.frames.pop()

            if state.frames:
                caller = state.frames.peek()
                if value is not None:
                    caller.stack.push(value)
                caller.pc += 1
            else:
                output = "ok"

        case a:
            raise NotImplementedError(a.help())

    assert isinstance(output, (jvmc.State, str))

    return pc, output


def initial(bc: jpamb.Bytecode, methodid: jvm.AbsMethodID, input: jpamb.Input):
    frame = jvmc.Frame.from_method(bc.getmethod(methodid))
    state = jvmc.State(jvmc.Heap(), jvmc.CallStack.from_frames([frame]))
    for i, v in enumerate(input.values):
        # Convert arbitrary values into local values
        match v:
            case jpamb.case.Boolean(value):
                frame.locals[i] = jvmc.StackInt(1 if value else 0)
            case jpamb.case.Int(value):
                frame.locals[i] = jvmc.StackInt(to_i32(value))
            case jpamb.case.Array(contains=type, values=values):
                match type:
                    case jvm.Char():
                        ref = state.heap.new(
                            jvmc.HeapArray(type, [ord(a) for a in values])
                        )
                    case jvm.Int():
                        ref = state.heap.new(jvmc.HeapArray(type, [a for a in values]))
                frame.locals[i] = ref
            case jpamb.case.String(value=value):
                ref = state.heap.new(jvmc.HeapString(value))
                frame.locals[i] = ref
            case a:
                raise NotImplementedError(
                    f"Do not know how to convert values of type {a!r} to a local value"
                )

    return state


def interpret():
    """The entry point for the interpreter"""

    methodid, input, max_steps = jpamb.getcase(
        "dynamic",
        "1.0",
        GROUP_NAME,
        ["dynamic", "python"],
        for_science=True,
    )

    suite, eff = jpamb.setup()
    bc = jpamb.Bytecode(suite, eff, {})

    state = initial(bc, methodid, input)

    last = jpamb.emit_init(state)

    for x in range(max_steps):
        pc, state = step(bc, state)
        last = jpamb.emit_step(last, pc, state)

        if isinstance(state, str):
            break


# --- The dynamic analysis (a constant-guided, boundary-value fuzzer) --- #

BASE_INTS = list(range(-10, 11)) + [20, -20, 50, -50, 100, -100]


def _harvest(
    bc: jpamb.Bytecode,
    methodid: jvm.AbsMethodID,
    *,
    depth: int,
    seen_methods: set,
    ints: list,
    strings: set,
):
    if methodid in seen_methods or depth < 0:
        return
    seen_methods.add(methodid)

    try:
        method = bc.getmethod(methodid)
    except Exception:  # noqa: BLE001
        return

    for op in method.opcodes:
        match op:
            case jvm.Push(type=jvm.Int(), value=v):
                ints.append(to_i32(v))
            case jvm.Push(type=jvm.Object(name), value=v) if name == jvm.ClassName(
                "java.lang.String"
            ):
                strings.add(v)
            case (
                jvm.InvokeStatic(method=m)
                | jvm.InvokeVirtual(method=m)
                | jvm.InvokeSpecial(method=m)
            ):
                if m.classname == methodid.classname:
                    _harvest(
                        bc,
                        m,
                        depth=depth - 1,
                        seen_methods=seen_methods,
                        ints=ints,
                        strings=strings,
                    )


def harvest_constants(bc: jpamb.Bytecode, methodid: jvm.AbsMethodID):
    ints: list = []
    strings: set = set()
    _harvest(bc, methodid, depth=2, seen_methods=set(), ints=ints, strings=strings)
    return ints, strings


def _int_pool(ints: list) -> list:
    pool = set(BASE_INTS)
    for c in ints:
        for d in (-1, 0, 1):
            pool.add(to_i32(c + d))
    return sorted(pool)


def candidates_for(t: jvm.Type, ints: list, strings: set) -> list:
    match t:
        case jvm.Boolean():
            return [jpamb.case.Boolean(False), jpamb.case.Boolean(True)]

        case jvm.Int():
            return [jpamb.case.Int(v) for v in _int_pool(ints)]

        case jvm.Object(name) if name == jvm.ClassName("java.lang.String"):
            pool = set(strings)
            pool.add("")
            pool.add("this probably does not match")
            return [jpamb.case.String(v) for v in pool]

        case jvm.Array(contains=jvm.Int()):
            pool = _int_pool(ints)
            arrays = {(), (0,), (1,), (-1,)}
            if pool:
                arrays.add((max(pool),))
                arrays.add((min(pool),))
            if ints:
                arrays.add(tuple(ints))
            rand = random.Random(1234)
            for n in (1, 2, 3):
                for _ in range(4):
                    arrays.add(tuple(rand.choice(pool) for _ in range(n)))
            return [jpamb.case.Array(jvm.Int(), a) for a in arrays]

        case jvm.Array(contains=jvm.Char()):
            chars_in_order = [chr(v) for v in ints if 32 <= v <= 126]
            arrays = {(), ("x",)}
            if chars_in_order:
                arrays.add(tuple(chars_in_order))
                arrays.add((chars_in_order[0],))
                if len(chars_in_order) > 1:
                    arrays.add(tuple(chars_in_order[:-1]))
            return [jpamb.case.Array(jvm.Char(), a) for a in arrays]

        case _:
            return []


def try_run(bc: jpamb.Bytecode, methodid, input, step_cap, deadline) -> str:
    state = initial(bc, methodid, input)
    for i in range(step_cap):
        if (i & 0xFFF) == 0 and time.monotonic() > deadline:
            return "*"
        _, state = step(bc, state)
        if isinstance(state, str):
            return state
    return "*"


def analyse():
    """The dynamic analysis, a boundary-value & constant-harvesting fuzzer."""

    methodid = jpamb.getmethodid(
        "dynamic",
        "1.0",
        GROUP_NAME,
        ["dynamic", "python"],
        for_science=True,
    )

    suite, eff = jpamb.setup()
    bc = jpamb.Bytecode(suite, eff, {})

    start = time.monotonic()
    TIME_BUDGET = 2.5

    params = list(methodid.extension.params)

    try:
        ints, strings = harvest_constants(bc, methodid)
    except Exception:  # noqa: BLE001
        ints, strings = [], set()

    if not params:
        inputs = [jpamb.case.Input(())]
        step_cap = 1_000_000
    else:
        per_param = [candidates_for(t, ints, strings) for t in params]
        if any(len(p) == 0 for p in per_param):
            inputs = []
        else:
            combos = list(itertools.product(*per_param))
            random.Random(0).shuffle(combos)
            inputs = [jpamb.case.Input(tuple(vals)) for vals in combos]
        step_cap = 50_000

    behaviors = set()
    any_cap_hit = False

    deadline = start + TIME_BUDGET
    for inp in inputs:
        if time.monotonic() > deadline:
            break
        try:
            result = try_run(bc, methodid, inp, step_cap, deadline)
        except Exception:  # noqa: BLE001, S112
            continue

        if result == "*":
            any_cap_hit = True
        else:
            behaviors.add(result)

    star_found = any_cap_hit and not behaviors

    for query in jpamb.QUERIES:
        if query == "*":
            print(f"{query};{'found' if star_found else 'not-found'}")
        else:
            print(f"{query};{'found' if query in behaviors else 'not-found'}")
