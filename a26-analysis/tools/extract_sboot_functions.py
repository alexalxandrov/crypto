#!/usr/bin/env python3
"""Extract selected A26 J6 SBoot functions and direct xrefs from gzip assembly.

Read-only repository analysis. It never accesses a handset or modifies firmware.
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
ANSI = re.compile(r"\x1b\[[0-9;]*m")

OUT.mkdir(parents=True, exist_ok=True)
if not SOURCE.is_file() or not INDEX.is_file():
    raise SystemExit("Missing full-sboot.asm.gz or function-index.tsv")

index_rows: dict[str, tuple[int, int, str]] = {}
for row in INDEX.read_text(encoding="utf-8", errors="replace").splitlines():
    parts = row.split("\t")
    if len(parts) >= 3:
        try:
            index_rows[parts[1]] = (int(parts[0], 16), int(parts[2]), row)
        except ValueError:
            continue

with gzip.open(SOURCE, "rt", encoding="utf-8", errors="replace") as stream:
    raw_lines = list(stream)
lines = [ANSI.sub("", line) for line in raw_lines]
source_hash = hashlib.sha256(SOURCE.read_bytes()).hexdigest()

header_lines: dict[str, int] = {}
header_samples: list[str] = []
line_addresses: dict[int, int] = {}
string_hits: list[str] = []

for idx, line in enumerate(lines):
    header = re.match(r"^\s*┌\s*(fcn\.[0-9a-fA-F]+)\(", line)
    if header:
        name = header.group(1)
        header_lines[name] = idx
        if len(header_samples) < 30:
            header_samples.append(line.rstrip())

    # Only match instruction-address lines, not address mentions in comments.
    addr = re.match(r"^\s*[│┌└─╎\s]*0x([0-9a-fA-F]{8})\s+", line)
    if addr:
        line_addresses.setdefault(int(addr.group(1), 16), idx)

    for term in STRING_TERMS:
        if term in line:
            string_hits.append(f"line {idx+1}: {line.rstrip()}")

found: set[str] = set()
for target in TARGETS:
    start_line = header_lines.get(target)
    if start_line is not None:
        later = [pos for _, pos in header_lines.items() if pos > start_line]
        end_line = min(later, default=len(lines))
        extracted = lines[start_line:end_line]
    else:
        indexed = index_rows.get(target)
        if not indexed:
            continue
        address, instruction_count, _ = indexed
        start_line = line_addresses.get(address)
        if start_line is None:
            continue
        later_addresses = sorted(a for a, _, _ in index_rows.values() if a > address)
        end_line = len(lines)
        for next_address in later_addresses:
            candidate = line_addresses.get(next_address)
            if candidate is not None and candidate > start_line:
                end_line = candidate
                break
        if end_line == len(lines) and instruction_count > 0:
            end_line = min(len(lines), start_line + instruction_count + 80)
        extracted = [f"FUNCTION: {target} (address-index extraction)\n"] + lines[start_line:end_line]

    if extracted:
        (OUT / f"{target}.asm").write_text("".join(extracted), encoding="utf-8")
        found.add(target)

callers: dict[str, list[str]] = {t: [] for t in TARGETS}
current_function = "<unknown>"
for idx, line in enumerate(lines, 1):
    header = re.match(r"^\s*┌\s*(fcn\.[0-9a-fA-F]+)\(", line)
    if header:
        current_function = header.group(1)
    call = re.search(r"\bbl\s+(fcn\.[0-9a-fA-F]+)", line)
    if call and call.group(1) in callers:
        callers[call.group(1)].append(f"line {idx}, caller {current_function}: {line.rstrip()}")

report = [
    "# A26 J6 SBoot targeted extraction report", "",
    f"Input: `{SOURCE.relative_to(ROOT)}`",
    f"Input SHA256: `{source_hash}`",
    f"Decompressed lines: {len(lines)}", "",
    "## Function extraction status", "",
]
for target in TARGETS:
    indexed = index_rows.get(target)
    index_text = indexed[2] if indexed else "not present in function-index.tsv"
    status = "EXTRACTED" if target in found else "NOT LOCATED IN ASM"
    report.append(f"- {target}: **{status}**; index: `{index_text}`")

report += ["", "## Function header samples", ""]
report += [f"- `{x}`" for x in header_samples]
report += ["", "## Direct call sites", ""]
for target in TARGETS:
    report.append(f"### {target}")
    report += [f"- {x}" for x in callers[target]] or ["- No direct BL call found in the scanned text."]
    report.append("")
report += ["## OEM / unlock string references", ""]
report += [f"- {x}" for x in string_hits] if string_hits else ["- No string hits found."]
report += ["", "## Scope", "", "Static extraction only; no device access, writes, token generation or firmware modification."]
(OUT / "a26-sboot-targeted-xrefs.md").write_text("\n".join(report) + "\n", encoding="utf-8")

print(f"Extracted {len(found)}/{len(TARGETS)} functions from {len(lines)} lines.")
print("Function headers:", " | ".join(header_samples[:8]))
print("Missing:", ", ".join(sorted(set(TARGETS) - found)))
