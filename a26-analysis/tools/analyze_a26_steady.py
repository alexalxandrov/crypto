#!/usr/bin/env python3
"""Read-only inspection of the saved A26 STEADY partition image."""
from pathlib import Path
import hashlib

ROOT=Path(__file__).resolve().parents[2]
SOURCE=ROOT/"a26/steady_full_4m.bin"
HEADER=ROOT/"a26/steady_header_4k.bin"
SBOOT=ROOT/"a26-analysis/current/raw/sboot.bin"
REPORT=ROOT/"a26/recovery/A26_STEADY_POLICY_BITMAP_ANALYSIS_2026-11-14_RU.md"

def ascii_runs(data, minimum=5):
    out=[]; start=None; buf=bytearray()
    for i,b in enumerate(data):
        if 32 <= b <= 126:
            if start is None: start=i
            buf.append(b)
        else:
            if start is not None and len(buf)>=minimum:
                out.append((start,bytes(buf).decode("ascii","replace")))
            start=None; buf.clear()
    if start is not None and len(buf)>=minimum: out.append((start,bytes(buf).decode("ascii","replace")))
    return out

def ranges_nonzero(data):
    ranges=[]; active=False; start=0
    for i,b in enumerate(data):
        if b and not active: start=i; active=True
        elif not b and active: ranges.append((start,i-1)); active=False
    if active:ranges.append((start,len(data)-1))
    return ranges

def main():
    if not SOURCE.is_file():
        raise SystemExit(f"Missing source: {SOURCE}")
    data=SOURCE.read_bytes()
    out=[
      "# A26 STEADY partition / OEM policy bitmap inspection — 2026-11-14","",
      "Read-only analysis of repository backups and SBoot disassembly. No device access or writes.","",
      f"- File: {SOURCE.relative_to(ROOT)}",
      f"- Size: {len(data)} bytes",
      f"- SHA-256: {hashlib.sha256(data).hexdigest()}",
      f"- Non-zero bytes: {sum(b != 0 for b in data)}",
    ]
    if SBOOT.is_file():
        sb=SBOOT.read_bytes()
        out += [f"- SBoot binary SHA-256: {hashlib.sha256(sb).hexdigest()}"]
    if HEADER.is_file():
        h=HEADER.read_bytes()
        out += [f"- Header file: {HEADER.relative_to(ROOT)}",
                f"- Header size: {len(h)} bytes",
                f"- Header SHA-256: {hashlib.sha256(h).hexdigest()}",
                f"- Header exact-match offset in full image: {('0x%x' % data.find(h)) if data.find(h)>=0 else 'no exact match'}"]
    out += ["","## 1. Partition header (first 0x200 bytes)","","Offset       Hex bytes"]
    for off in range(0,min(0x200,len(data)),16):
        out.append(f"{off:08x}: {data[off:off+16].hex(' ')}")
    out += ["","## 2. Important correction: policy bitmap is not at a fixed raw offset","",
      "SBoot fcn.0018962c does not copy the policy bitmap from raw partition offset 0x148. It parses/validates a token object, obtains a pointer from a parsed context field (load from [context+0xad0]), then copies 32 bytes from parsed_object+0x120 to global bitmap 0x5a6a90. Therefore the earlier raw-offset-0x148 probe is not a valid bit3 measurement. Its zero value does not imply that the policy bit is zero.",
      "",
      "The next task is to identify the parser and the object-record offset that selects the token from the STEADY partition. Until then, no bit3 value is claimed.","",
      "## 3. Non-zero ranges and local hexdumps",""]
    ranges=ranges_nonzero(data)
    for a,b in ranges[:200]:
        out.append(f"### 0x{a:08x}–0x{b:08x} ({b-a+1} bytes)")
        end=min(len(data),a+min(0x100,b-a+1))
        for off in range(a,end,16):
            out.append(f"{off:08x}: {data[off:off+16].hex(' ')}")
    if len(ranges)>200: out.append(f"- ... {len(ranges)-200} additional ranges omitted")
    out += ["","## 4. ASCII strings",""]
    strings=ascii_runs(data,5)
    out += [f"- 0x{off:08x}: {value[:160]}" for off,value in strings[:500]]
    if len(strings)>500: out.append(f"- ... {len(strings)-500} additional strings omitted")
    out += ["","## 5. SBoot magic and candidate policy field",""]
    if SBOOT.is_file() and len(SBOOT.read_bytes())>0x24a4bc:
        sb=SBOOT.read_bytes()
        tail=sb[0x24a4bc:0x24a4bc+128]
        magic=tail.split(b"\\x00",1)[0]
        out += [f"- SBoot constant VA/file offset 0x24a4bc, length {len(magic)}: {magic.hex()}"]
        for base in [0x7df20,0x7e120]:
            hdr=data[base+0x28:base+0x28+len(magic)]
            field=data[base+0x120:base+0x140]
            out += [f"- Record base 0x{base:08x}: header at +0x28 matches SBoot constant: {hdr==magic}",
                    f"  - Header bytes: {hdr.hex()}",
                    f"  - Candidate 32-byte field at +0x120: {field.hex()}",
                    f"  - Candidate bit3 (LSB-first): {(field[0]>>3)&1 if len(field)==32 else 'n/a'}",
                    f"  - Candidate set bits: {sum(x.bit_count() for x in field)}/256"]
    else:
        out.append("SBoot binary unavailable or too short to inspect magic at 0x24a4bc.")
    out += ["","This is a strong candidate mapping because SBoot compares the data read from STEADY at record+0x28 against the constant at 0x24a4bc, and later copies a 32-byte parsed field at object+0x120 into the policy bitmap. The record+0x120 raw field is not yet conclusively proven to be the same parsed field; bit3 is reported as a candidate only.",""]
    out += ["","## 6. Known candidate object locations",""]
    for off in [0x2400,0x7df20,0x99200,0x9e400,0xaf000,0xaf200,0xcb220,0xe0c00,0xe0e00]:
        if off<len(data):
            chunk=data[off:off+0x200]
            out.append(f"### Offset 0x{off:08x}")
            for p in range(0,len(chunk),16):
                out.append(f"{off+p:08x}: {chunk[p:p+16].hex(' ')}")
    out += ["","## 7. Interpretation limits","",
      "- The SBoot parser, not a guessed fixed offset, determines the accepted token object.",
      "- A raw 32-byte sequence is not an authorization proof unless it is the exact parsed object accepted by the J6 signature-validation path.",
      "- Do not alter STEADY, RPMB, MISC or any other protected region.",""]
    REPORT.write_text("\n".join(out),encoding="utf-8")
    print(f"Wrote {REPORT.relative_to(ROOT)} ({REPORT.stat().st_size} bytes)")

if __name__=="__main__": main()
