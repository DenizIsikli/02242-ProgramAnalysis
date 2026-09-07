# Week 1 — Getting Started §3

## Setup / checkhealth troubleshooting

- `uv run jpamb checkhealth` and the editable install from `python.md` both failed with:
  `fatal error: Python.h: No such file or directory` while building the `runit` C extension.
- Root cause: the `python3.13-dev` / `libpython3.13-dev` system packages (which provide `Python.h`) were not installed, even though `gcc` itself was present.
- Fixed by installing `python3.13-dev` (pulls in `libpython3.13-dev`) so the C headers are available on the system include path.
- After that, both `uv run jpamb checkhealth` and the `python.md` venv flow (`uv venv ... && uv pip install --editable . && uv pip install --editable solutions/syntactic`) succeed with all green `SUCCESS` checks.

## Improve the Regex-based Analysis (`syntactic-regex`)

- File changed: `solutions/syntactic/src/syntactic_regex.py`
- Previously the script only ever reported on `assertion error` (`found` / `not-found`) and marked every other query as `skip`.
- Extracted the method body once (text between the method signature and the first line starting with `}`) instead of only scanning up to the first `assert` or closing brace.
- Added a second check on that body: if it contains a `/` character, report `divide by zero;found`, otherwise `divide by zero;not-found`.
- `assertion error` detection logic is unchanged in behavior, just now runs against the same extracted `body` instead of a partial scan.
- `*`, `null pointer`, `ok`, and `out of bounds` are still reported as `skip`.
- Verified with `jpamb -vv analyse syntactic-regex`: `jpamb.cases.Simple.divideByZero` now correctly reports `divide by zero;found`, and assertion cases (e.g. `jpamb.cases.Arrays.arrayContent`) still correctly report `assertion error;found`.
