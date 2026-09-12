#!/usr/bin/env python3
"""A very stupid syntactic analysis, that only checks for assertion errors."""

import logging
import re
import sys
from pathlib import Path

import jpamb


def main():
    absmethodid = jpamb.getmethodid(
        "syntaxer",
        "1.0",
        "Bobby",
        ["syntactic", "python"],
        for_science=True,
    )

    log = logging
    log.basicConfig(level=logging.DEBUG)

    suite, _ = jpamb.setup()

    srcfile = suite.sourcefile(absmethodid.classname).relative_to(Path.cwd())

    with open(srcfile, "r") as f:
        log.debug("parse sourcefile %s", srcfile)
        content = f.read()

    res = re.search(rf".* {absmethodid.methodid.name}\(.*\)", content)

    if not res:
        log.error("Could not find method")
        sys.exit(1)

    log.debug(f"found {res}")
    rest = content[res.end(0) : -1]

    open_loop = re.search(r"while\s*\(.*\)\s*{|(^\s*})", rest, re.MULTILINE)

    if not open_loop:
        log.error("Could not find end of method or while loop")
        log.error(rest)
        sys.exit(1)

    log.debug(f"found {open_loop}")
    open_loop_found = open_loop.group(0).startswith("while")

    if open_loop_found:
        log.debug("Found while loop")
        print("*;found-loop")
    else:
        log.debug("No while loop")
        print("*;not-found-loop")

    null_pointer = re.search(r"null|(^\s*})", rest, re.MULTILINE)

    if not null_pointer:
        log.error("Could not find end of method or null pointer")
        log.error(rest)
        sys.exit(1)

    log.debug(f"found {null_pointer}")
    null_pointer_found = null_pointer.group(0) == "null"

    if null_pointer_found:
        log.debug("Found null pointer")
        print("null pointer;found-null")
    else:
        log.debug("No null pointer")
        print("null pointer;not-found-null")

    assert_or_end = re.search(r"assert|(^\s*})", rest, re.MULTILINE)

    if not assert_or_end:
        log.error("Could not end of method or assert")
        log.error(rest)
        sys.exit(1)

    log.debug(f"found {assert_or_end}")
    assert_found = assert_or_end.group(0) == "assert"

    if assert_found:
        log.debug("Found assertion")
        print("assertion error;found")
    else:
        log.debug("No assertion")
        print("assertion error;not-found")

    divide_or_end = re.search(r"/|(^\s*})", rest, re.MULTILINE)

    if not divide_or_end:
        log.error("Could not find end of method or divide")
        log.error(rest)
        sys.exit(1)

    log.debug(f"found divide {divide_or_end}")
    divide_found = divide_or_end.group(0) == "/"

    if divide_found:
        log.debug("Found divide")
        print("divide by zero;found-div")
    else:
        log.debug("No divide")
        print("divide by zero;not-found-div")

    for q in jpamb.QUERIES:
        if q not in ("assertion error", "divide by zero", "null pointer", "*"):
            print(f"{q};skip-{q.replace(' ', '-')}")