#!/usr/bin/env python3
"""Extract selected A26 J6 SBoot functions and direct xrefs from the gzip assembly.

This is a read-only analysis helper. It never accesses a device or modifies firmware.
"""
from __future__ import annotations

import gzip
import hashlib
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
SOURCE = ROOT / "a26-analysis/current/full-sboot.asm.gz"
INDEX = ROOT / "a26-analysis/current/function-index.tsv"
OUT = ROOT / "a26-analysis/current/extracted"

TARGETS = [
    "fcn.0017184c",
    "fcn.0017b7c8",
    "fcn.0017bfac",
    "fcn.0017eb34",
    "fcn.00183e40",
    "fcn.00187cf0",
    "fcn.0016f3e0",
    "fcn.0017af7c",
    "fcn.0017dfdc",
    "fcn.0017df80",
    "fcn.001257bc",
    "fcn.0012577c",
    "fcn.001895dc",
    "fcn.00123f14",
]

STRING_TERMS = [
    "androidboot.other.locked",
    "get_oem_unlock_val",
    "PO_OEM_UNLOCK",
    "using unlock keys which was downloaded by odin",
    "there is no unlock keys",
    "Fail to unlock",
    "Succeed to unlock",
    "sync_lockstate_custtoken",
    "--reason=bootloader_unlock",
]

OUT.mkdir(parents=True, exist_ok=True)
if not SOURCE.is_file():
    raise SystemExit(f"Missing input: {SOURCE}")

target_set = set(TARGETS)
found: set[str] = set()
callers: dict[str, list[tuple[str, int, str]]] = {t: [] for t in TARGETS}
string_hits: list[str] = []
current_function = "<outside-function>"
current_target: str | None = None
buffer: list[str] = []
line_no = 0

def flush_function() -> None:
    global buffer, current_target
    if current_target and buffer:
        path = OUT / f"{current_target}.asm"
        path.write_text("".join(buffer), encoding="utf-8")
        found.add(current_target)
    buffer = []
    current_target = None

with gzip.open(SOURCE, "rt", encoding="utf-8", errors="replace") as stream:
    for line_no, line in enumerate(stream, 1):
        header = re.match(r"^FUNCTION:\s+(fcn\.[0-9a-fA-F]+)", line)
        if header:
            flush_function()
            current_function = header.group(1)
            if current_function in target_set:
                current_target = current_function
                buffer = [line]
            continue

        if current_target:
            buffer.append(line)

        for term in STRING_TERMS:
            if term in line:
                string_hits.append(
                    f"line {line_no} | function {current_function} | {line.rstrip()}"
                )

        call = re.search(r"\bbl\s+(fcn\.[0-9a-fA-F]+)", line)
        if call and call.group(1) in target_set:
            callers[call.group(1)].append((current_function, line_no, line.rstrip()))

flush_function()

# Read the function index so missing targets can be distinguished from absent functions.
index_rows: dict[str, str] = {}
if INDEX.is_file():
    for row in INDEX.read_text(encoding="utf-8", errors="replace").splitlines():
        parts = row.split("\t")
        if len(parts) >= 3:
            index_rows[parts[1]] = row

report = [
    "# A26 J6 SBoot targeted extraction report",
    "",
    f"Input: `{SOURCE.relative_to(ROOT)}`",
    f"Input SHA256: `{hashlib.sha256(SOURCE.read_bytes()).hexdigest()}`",
    f"Decompressed lines: {line_no}",
    "",
    "## Function extraction status",
    "",
]
for target in TARGETS:
    status = "EXTRACTED" if target in found else "NOT FOUND IN ASM"
    index = index_rows.get(target, "not present in function-index.tsv")
    report.append(f"- {target}: **{status}**; index: `{index}`")

report += ["", "## Direct call sites", ""]
for target in TARGETS:
    report.append(f"### {target}")
    sites = callers[target]
    if not sites:
        report.append("- No direct BL call found in the scanned assembly.")
    else:
        for caller, number, instruction in sites:
            report.append(f"- line {number}, caller {caller}: `{instruction}`")
    report.append("")

report += ["## OEM / unlock string references", ""]
report += [f"- {hit}" for hit in string_hits] if string_hits else ["- No string hits found."]
report += ["", "## Scope", "", "Static extraction only. No device access, no writes, no token generation, and no firmware modification."]
(OUT / "a26-sboot-targeted-xrefs.md").write_text("\n".join(report) + "\n", encoding="utf-8")

missing = sorted(target_set - found)
print(f"Extracted {len(found)}/{len(TARGETS)} functions.")
print(f"Decompressed {line_no} lines.")
if missing:
    print("Not extracted:", ", ".join(missing))
else:
    print("All target functions extracted.")
