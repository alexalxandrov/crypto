#!/usr/bin/env python3
"""Read-only inspection of the saved A26 STEADY partition image."""
from pathlib import Path
import hashlib

ROOT=Path(__file__).resolve().parents[2]
SOURCE=ROOT/"a26/steady_full_4m.bin"
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

def main():
    if not SOURCE.is_file():
        raise SystemExit(f"Missing source: {SOURCE}")
    data=SOURCE.read_bytes()
    out=[
      "# A26 STEADY partition / OEM policy bitmap inspection — 2026-11-14","",
      "Read-only analysis of the saved 4 MiB partition image. No device access or writes.","",
      f"- File: {SOURCE.relative_to(ROOT)}",
      f"- Size: {len(data)} bytes",
      f"- SHA-256: {hashlib.sha256(data).hexdigest()}",
      f"- Non-zero bytes: {sum(b != 0 for b in data)}",
      "",
      "## 1. Partition header (first 0x200 bytes)","",
      "Offset       Hex bytes",
    ]
    for off in range(0,min(0x200,len(data)),16):
        chunk=data[off:off+16]
        out.append(f"{off:08x}: {chunk.hex(' ')}")
    out += ["", "## 2. Candidate signed policy bitmap","",
      "SBoot function fcn.0018962c reads the STEADY object, then copies 32 bytes from read-buffer offset 0x120 into global bitmap 0x5a6a90. The read call adds 0x28 to the object-record offset. If the STEADY object starts at partition offset 0, the candidate bitmap is therefore at partition offset 0x148. This offset is conditional until the PIT/object-record base is independently confirmed.",""]
    for off in [0x120,0x128,0x138,0x148,0x158,0x168,0x178,0x188,0x198,0x1a8,0x1b8,0x1c8,0x1d8,0x1e8,0x1f8,0x208]:
        if off+32<=len(data):
            b=data[off:off+32]
            bit3=(b[0]>>3)&1
            setbits=sum(x.bit_count() for x in b)
            out.append(f"- Offset 0x{off:08x}: bit3={bit3}, set_bits={setbits}/256, bytes={b.hex()}")
    candidate=data[0x148:0x168] if len(data)>=0x168 else b""
    out += ["", "### Candidate 0x148", ""]
    if len(candidate)==32:
        out += [f"- Bytes: {candidate.hex()}",
                f"- Bit 3 (LSB-first, first 64-bit word): {(candidate[0]>>3)&1}",
                f"- Set bits: {sum(x.bit_count() for x in candidate)}/256",
                f"- SHA-256: {hashlib.sha256(candidate).hexdigest()}"]
    else:
        out.append("Candidate range is outside the file.")
    out += ["","## 3. Non-zero ranges",""]
    ranges=[]; active=False; start=0
    for i,b in enumerate(data):
        if b and not active: start=i; active=True
        elif not b and active: ranges.append((start,i-1)); active=False
    if active:ranges.append((start,len(data)-1))
    out += [f"- 0x{a:08x}–0x{b:08x} ({b-a+1} bytes)" for a,b in ranges[:200]]
    if len(ranges)>200: out.append(f"- ... {len(ranges)-200} additional ranges omitted")
    out += ["","## 4. ASCII strings (first 4 MiB)",""]
    strings=ascii_runs(data,5)
    out += [f"- 0x{off:08x}: {value[:160]}" for off,value in strings[:300]]
    if len(strings)>300: out.append(f"- ... {len(strings)-300} additional strings omitted")
    out += ["","## 5. Interpretation limits","",
      "- The 0x148 bitmap location is a derived candidate, not yet a verified partition offset.",
      "- A raw bit value is not sufficient to prove OEM unlock authorization unless the corresponding record is the one accepted by the J6 SBoot signature-validation path.",
      "- Do not alter STEADY, RPMB, MISC or any other protected region.",""]
    REPORT.write_text("\n".join(out),encoding="utf-8")
    print(f"Wrote {REPORT.relative_to(ROOT)} ({REPORT.stat().st_size} bytes)")

if __name__=="__main__": main()
