#!/usr/bin/env python3
"""Extract selected A26 J6 SBoot functions and direct xrefs from gzip assembly.

Read-only repository analysis. It never accesses a handset or modifies firmware.
The gzip dump may contain either named function headers or address-only disassembly;
both layouts are supported.
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
    "fcn.0017184c", "fcn.0017b7c8", "fcn.0017bfac", "fcn.0017eb34",
    "fcn.00183e40", "fcn.00187cf0", "fcn.0016f3e0", "fcn.0017af7c",
    "fcn.0017dfdc", "fcn.0017df80", "fcn.001257bc", "fcn.0012577c",
    "fcn.001895dc", "fcn.00123f14", "fcn.001558e4", "fcn.0018efb4",
    "fcn.00179f90", "fcn.0017b0a0", "fcn.0017b1f8", "fcn.0014b120",
    "fcn.0014b248",
]

STRING_TERMS = [
    "androidboot.other.locked", "get_oem_unlock_val", "PO_OEM_UNLOCK",
    "using unlock keys which was downloaded by odin", "there is no unlock keys",
    "Fail to unlock", "Succeed to unlock", "sync_lockstate_custtoken",
    "--reason=bootloader_unlock",
]

OUT.mkdir(parents=True, exist_ok=True)
if not SOURCE.is_file() or not INDEX.is_file():
    raise SystemExit("Missing full-sboot.asm.gz or function-index.tsv")

index_rows: dict[str, tuple[int, int, str]] = {}
for row in INDEX.read_text(encoding="utf-8", errors="replace").splitlines():
    parts = row.split("\t")
    if len(parts) >= 3:
        try:
            address = int(parts[0], 16)
            count = int(parts[2])
        except ValueError:
            continue
        index_rows[parts[1]] = (address, count, row)

with gzip.open(SOURCE, "rt", encoding="utf-8", errors="replace") as stream:
    asm_lines = list(stream)

source_hash = hashlib.sha256(SOURCE.read_bytes()).hexdigest()
line_addresses: dict[int, int] = {}
header_lines: dict[str, int] = {}
first_samples: list[str] = []
string_hits: list[str] = []

for idx, line in enumerate(asm_lines):
    if len(first_samples) < 40 and (line.strip() and (
        "fcn." in line or "FUNCTION" in line or "0x" in line
    )):
        first_samples.append(line.rstrip())

    header = re.match(r"^\s*(?:FUNCTION:\s*)?┌?\s*(fcn\.[0-9a-fA-F]+)(?:\(|\s|$)", line)
    if header:
        header_lines[header.group(1)] = idx

    addr = re.search(r"\b0x([0-9a-fA-F]{8})\b", line)
    if addr:
        line_addresses.setdefault(int(addr.group(1), 16), idx)

    for term in STRING_TERMS:
        if term in line:
            string_hits.append(f"line {idx+1}: {line.rstrip()}")

# Named-header extraction first. If the gzip file is address-only, use the
# function-index start addresses and the next indexed function start as boundaries.
found: set[str] = set()
for target in TARGETS:
    start_line = header_lines.get(target)
    if start_line is not None:
        later = [
            (line_no, name) for name, line_no in header_lines.items()
            if line_no > start_line
        ]
        end_line = min((x[0] for x in later), default=len(asm_lines))
        extracted = asm_lines[start_line:end_line]
    else:
        indexed = index_rows.get(target)
        if not indexed:
            continue
        address, instruction_count, _ = indexed
        start_line = line_addresses.get(address)
        if start_line is None:
            continue

        later_addresses = sorted(
            (a, n) for n, (a, _, _) in index_rows.items() if a > address
        )
        end_line = len(asm_lines)
        for next_address, _ in later_addresses:
            candidate = line_addresses.get(next_address)
            if candidate is not None and candidate > start_line:
                end_line = candidate
                break

        # The index count is a fallback cap if no next function boundary exists.
        if end_line == len(asm_lines) and instruction_count > 0:
            end_line = min(len(asm_lines), start_line + instruction_count + 80)
        extracted = [f"FUNCTION: {target} (address-index extraction)\n"] + asm_lines[start_line:end_line]

    if extracted:
        (OUT / f"{target}.asm").write_text("".join(extracted), encoding="utf-8")
        found.add(target)

# Direct call xrefs from textual BL instructions, when present.
callers: dict[str, list[str]] = {t: [] for t in TARGETS}
current_function = "<unknown>"
for idx, line in enumerate(asm_lines, 1):
    header = re.match(r"^\s*(?:FUNCTION:\s*)?┌?\s*(fcn\.[0-9a-fA-F]+)(?:\(|\s|$)", line)
    if header:
        current_function = header.group(1)
    for target in TARGETS:
        addr = index_rows.get(target, (None, None, None))[0]
        if addr is None:
            continue
        if re.search(rf"\bbl\s+(?:{re.escape(target)}|0x{addr:08x})\b", line, re.I):
            callers[target].append(f"line {idx}, caller {current_function}: {line.rstrip()}")

report = [
    "# A26 J6 SBoot targeted extraction report", "",
    f"Input: `{SOURCE.relative_to(ROOT)}`",
    f"Input SHA256: `{source_hash}`",
    f"Decompressed lines: {len(asm_lines)}", "",
    "## Function extraction status", "",
]
for target in TARGETS:
    indexed = index_rows.get(target)
    index_text = indexed[2] if indexed else "not present in function-index.tsv"
    status = "EXTRACTED" if target in found else "NOT LOCATED IN ASM"
    report.append(f"- {target}: **{status}**; index: `{index_text}`")

report += ["", "## Initial assembly samples", ""]
report += [f"- `{x}`" for x in first_samples]
report += ["", "## Direct call sites", ""]
for target in TARGETS:
    report.append(f"### {target}")
    report += [f"- {x}" for x in callers[target]] or ["- No direct BL call found in the scanned text."]
    report.append("")
report += ["## OEM / unlock string references", ""]
report += [f"- {x}" for x in string_hits] if string_hits else ["- No string hits found."]
report += ["", "## Scope", "", "Static extraction only; no device access, writes, token generation or firmware modification."]
(OUT / "a26-sboot-targeted-xrefs.md").write_text("\n".join(report) + "\n", encoding="utf-8")

print(f"Extracted {len(found)}/{len(TARGETS)} functions from {len(asm_lines)} lines.")
print("Initial samples:", " | ".join(first_samples[:10]))
print("Missing:", ", ".join(sorted(set(TARGETS) - found)))
