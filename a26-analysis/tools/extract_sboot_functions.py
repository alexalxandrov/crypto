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
RAW_SBOOT = ROOT / "a26-analysis/current/raw/sboot.bin"
OUT = ROOT / "a26-analysis/current/extracted"

TARGETS = [
    "fcn.0017184c", "fcn.0017b7c8", "fcn.0017bfac", "fcn.0017eb34",
    "fcn.00183e40", "fcn.00187cf0", "fcn.0016f3e0", "fcn.0017af7c",
    "fcn.0017dfdc", "fcn.0017df80", "fcn.001257bc", "fcn.0012577c",
    "fcn.001895dc", "fcn.00123f14", "fcn.001558e4", "fcn.0018efb4",
    "fcn.00179f90", "fcn.0017b0a0", "fcn.0017b1f8", "fcn.0014b120",
    "fcn.0014b248", "fcn.001758fc", "fcn.0012c4dc", "fcn.0012c3dc",
    "fcn.0012bbe0", "fcn.00126b3c", "fcn.001283b8", "fcn.00138ddc",
    "fcn.0022d7ec", "fcn.0012c624", "fcn.0012c344", "fcn.0012c3a4",
    "fcn.0012b810", "fcn.00126898", "fcn.001268b8", "fcn.00126760", "fcn.001395ec", "fcn.0012a2a4",
    "fcn.00127bc0", "fcn.0012c830", "fcn.002049dc", "fcn.00138f30",
    "fcn.001390c0", "fcn.00114a28", "fcn.001512d4", "fcn.0014b120", "fcn.0017db48", "fcn.001866ac",
    "fcn.001551fc", "fcn.0016e5f4", "fcn.0017cb74", "fcn.00188654",
    "fcn.00179e6c", "fcn.0017bb70", "fcn.0017d674", "fcn.0017bdc0",
    "fcn.0017d4cc", "fcn.0017d5b4", "fcn.0017c904", "fcn.0017e5f8",
    "fcn.001895dc", "fcn.0018962c", "fcn.00189d8c", "fcn.00183e40", "fcn.001690d8",
    "fcn.0016d638", "fcn.00177854", "fcn.0012467c", "fcn.0014dbd8",
    "fcn.0014dcc4", "fcn.001392bc", "fcn.0013d500", "fcn.0013df98",
    "fcn.0013deb8", "fcn.000f9608", "fcn.0016e57c", "fcn.001503d0", "fcn.00150b58",
    "fcn.00114b6c", "fcn.00114100", "fcn.00115b44", "fcn.00115610",
    "fcn.00153180", "fcn.00153998", "fcn.0017f2ec", "fcn.0017f4c4",
    "fcn.0017ed08", "fcn.0017f76c",
]

STRING_TERMS = [
    "androidboot.other.locked", "get_oem_unlock_val", "PO_OEM_UNLOCK",
    "using unlock keys which was downloaded by odin", "there is no unlock keys",
    "Fail to unlock", "Succeed to unlock", "sync_lockstate_custtoken",
    "--reason=bootloader_unlock", "PERSISTENT", "PO_OEM_UNLOCK",
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
# Resolve ADRP + ADD references to known OEM/unlock string virtual addresses.
known_vas = {0x24edc5, 0x23f11a, 0x245cf7, 0x2463d5, 0x265467, 0x26529e,
             0x265508, 0x26b4ca, 0x26f537, 0x26a977, 0x275d4a, 0x26d660,
             0x269201, 0x26b317, 0x2746cd, 0x26ff1c, 0x24854a, 0x250d3d,
             0x24aabd, 0x23e409, 0x251971, 0x240c92, 0x23e7fd, 0x25a8ca,
             0x262794, 0x2691ec, 0x260425, 0x24620d, 0x269191, 0x2561a0,
             0x2463b3, 0x276a7f, 0x23a6fb, 0x26cdd6, 0x23c827, 0x240c2a,
             0x253872, 0x240b79, 0x25c25f, 0x23a683, 0x24c331, 0x24c361,
             0x2629f0, 0x278560, 0x25e0c1, 0x257684, 0x25e0f0, 0x243170,
             0x25c2cd, 0x2558f3, 0x23a721, 0x2559d2, 0x27858d, 0x260794,
             0x2607b6, 0x23c8cb, 0x264c50, 0x251077, 0x25593b, 0x2785ae,
             0x27ca0b, 0x26f848, 0x23e7b9, 0x24f0ce, 0x5a6a90, 0x56f4dc,
             0x56f4e8, 0x56f8f0, 0x56f4d8, 0x59d000, 0x59fc7c,
             0x2c80594, 0x2c9000, 0x5a6a90, 0x56f4dc,
                 0x56f4e8, 0x56f8f0, 0x56f4d8, 0x59d000, 0x59fc7c,
                 0x2c80594, 0x2c9000, 0x24a0e0, 0x23c931, 0x264c9e, 0x262a40, 0x24c3f2, 0x278624,
                 0x247c4a, 0x24f0e4, 0x273b6f, 0x2762b5, 0x24a10c, 0x25e1ab,
                 0x273b44, 0x273b5d, 0x266b5d, 0x24c27f, 0x259f6f, 0x2536a3,
                 0x266a2e, 0x2716d3, 0x266a50, 0x2760b5, 0x2457a3, 0x259f80,
                 0x250fb4, 0x268810, 0x276131, 0x2716f8, 0x268826, 0x25729e,
                 0x268356, 0x24f033, 0x2536ba, 0x23c811, 0x23a5c6, 0x26f7c1,
                 0x2739cc, 0x2557dd}
string_xrefs = []
current_function = "<unknown>"
for i, line in enumerate(lines):
    header = re.match(r"^\s*┌\s*(fcn\.[0-9a-fA-F]+)\(", line)
    if header:
        current_function = header.group(1)
    adrp = re.search(r"\badrp\s+x(\d+),\s*0x([0-9a-fA-F]+)", line)
    if not adrp:
        continue
    reg, page = adrp.group(1), int(adrp.group(2),16)
    for j in range(i+1,min(i+7,len(lines))):
        add = re.search(rf"\badd\s+x{reg},\s*x{reg},\s*(?:aav\.)?0x([0-9a-fA-F]+)",lines[j])
        if add:
            va=page+int(add.group(1),16)
            if va in known_vas:
                string_xrefs.append(f"VA 0x{va:x}, function {current_function}, lines {i+1}-{j+1}: {line.strip()} || {lines[j].strip()}")
            break

report += ["## Direct ADRP+ADD xrefs to OEM/unlock strings", ""]
report += [f"- {x}" for x in string_xrefs] if string_xrefs else ["- No direct ADRP+ADD xrefs found."]
report += ["", "## OEM / unlock string references", ""]
report += [f"- {x}" for x in string_hits] if string_hits else ["- No string hits found."]
report += ["", "## Scope", "", "Static extraction only; no device access, writes, token generation or firmware modification."]
(OUT / "a26-sboot-targeted-xrefs.md").write_text("\n".join(report) + "\n", encoding="utf-8")

# Resolve SBoot virtual addresses to raw-file offsets using the known direct
# reference to androidboot.other.locked at VA 0x26b317.
if RAW_SBOOT.is_file():
    raw = RAW_SBOOT.read_bytes()
    needle = b"androidboot.other.locked"
    pos = raw.find(needle)
    mapping = [
        "# A26 J6 SBoot string / VA map", "",
        f"Raw SBoot: {RAW_SBOOT.relative_to(ROOT)} ({len(raw)} bytes)",
        f"SHA-256: {hashlib.sha256(raw).hexdigest()}", "",
    ]
    base = None
    known_vas = [0x24edc5, 0x23f11a, 0x245cf7, 0x2463d5, 0x265467,
                 0x26529e, 0x265508, 0x26b4ca, 0x26f537, 0x26a977,
                 0x275d4a, 0x26d660, 0x269201, 0x26b317, 0x2746cd, 0x26ff1c, 0x24854a, 0x250d3d,
                 0x24aabd, 0x23e409, 0x251971, 0x240c92, 0x23e7fd, 0x25a8ca,
                 0x262794, 0x2691ec, 0x260425, 0x24620d, 0x269191, 0x2561a0,
                 0x2463b3, 0x276a7f, 0x23a6fb, 0x26cdd6, 0x23c827, 0x240c2a,
                 0x253872, 0x240b79, 0x25c25f, 0x23a683, 0x24c331, 0x24c361,
                 0x2629f0, 0x278560, 0x25e0c1, 0x257684, 0x25e0f0, 0x243170,
                 0x25c2cd, 0x2558f3, 0x23a721, 0x2559d2, 0x27858d, 0x260794,
                 0x2607b6, 0x23c8cb, 0x264c50, 0x251077, 0x25593b, 0x2785ae,
                 0x27ca0b, 0x26f848, 0x23e7b9, 0x24f0ce, 0x24a0e0, 0x23c931, 0x264c9e, 0x262a40, 0x24c3f2, 0x278624,
                 0x247c4a, 0x24f0e4, 0x273b6f, 0x2762b5, 0x24a10c, 0x25e1ab,
                 0x273b44, 0x273b5d, 0x266b5d, 0x24c27f, 0x259f6f, 0x2536a3,
                 0x266a2e, 0x2716d3, 0x266a50, 0x2760b5, 0x2457a3, 0x259f80,
                 0x250fb4, 0x268810, 0x276131, 0x2716f8, 0x268826, 0x25729e,
                 0x268356, 0x24f033, 0x2536ba, 0x23c811, 0x23a5c6, 0x26f7c1,
                 0x2739cc, 0x2557dd]
    if pos >= 0:
        base = 0x26B317 - pos
        mapping += [f"androidboot.other.locked: file offset 0x{pos:x}; known VA 0x26b317 implies load base 0x{base:x}.", ""]
        for va in known_vas:
            off = va - base
            if 0 <= off < len(raw):
                end = raw.find(bytes([0]), off, min(len(raw), off + 256))
                if end < 0: end = min(len(raw), off + 256)
                value = raw[off:end]
                mapping.append(f"- VA 0x{va:x} / file offset 0x{off:x}: {value.decode('ascii','replace')}")
            else:
                mapping.append(f"- VA 0x{va:x}: outside raw image after base mapping")
    else:
        mapping += ["androidboot.other.locked was not found in raw SBoot; load-base mapping could not be inferred."]
    mapping += ["", "## OEM / unlock strings", ""]
    for term in STRING_TERMS:
        p = raw.find(term.encode("ascii", "ignore"))
        if p >= 0 and base is not None:
            mapping.append(f"- {term}: file offset 0x{p:x}, inferred VA 0x{p+base:x}")
        elif p >= 0:
            mapping.append(f"- {term}: present at file offset 0x{p:x}")
        else:
            mapping.append(f"- {term}: not found")
    mapping += ["", "## Raw pointer references to OEM / unlock strings and SBoot functions", ""]
    pointer_targets = known_vas + [0x17af7c, 0x17eb34, 0x17dfdc, 0x14b6c,
                                   0x16f3e0, 0x17184c, 0x1758fc, 0x17b7c8]
    for value in pointer_targets:
        p32 = raw.find(value.to_bytes(4, "little"))
        p64 = raw.find(value.to_bytes(8, "little"))
        if p32 >= 0 or p64 >= 0:
            mapping.append(f"- VA 0x{value:x}: first LE32 offset {('0x%x' % p32) if p32 >= 0 else 'none'}; first LE64 offset {('0x%x' % p64) if p64 >= 0 else 'none'}")
    (OUT / "a26-sboot-string-address-map.md").write_text("\n".join(mapping) + "\n", encoding="utf-8")

print(f"Extracted {len(found)}/{len(TARGETS)} functions from {len(lines)} lines.")
print("Function headers:", " | ".join(header_samples[:8]))
print("Missing:", ", ".join(sorted(set(TARGETS) - found)))
