import re
from pathlib import Path

ROOT = Path.home() / "a26-analysis/current"
SOURCE = ROOT / "full-sboot.asm"
OUTPUT = ROOT / "page-5a6000-context.txt"

ANSI = re.compile(r"\x1b\[[0-?]*[ -/]*[@-~]")
HEADER = re.compile(r"^\s*┌\s+(.+)")
ADRP = re.compile(
    r"\badrp\s+(x\d+),\s*0x5a6000\b",
    re.IGNORECASE
)

functions = []
name = None
block = []

with SOURCE.open(encoding="utf-8", errors="replace") as f:
    for raw in f:
        line = ANSI.sub("", raw)
        match = HEADER.match(line)

        if match:
            if name is not None:
                functions.append((name, block))
            name = match.group(1).strip()
            block = [line]
        elif name is not None:
            block.append(line)

if name is not None:
    functions.append((name, block))

selected = []

for name, lines in functions:
    matches = [
        i for i, line in enumerate(lines)
        if ADRP.search(line)
    ]

    if not matches:
        continue

    selected.append((name, lines, matches))

with OUTPUT.open("w", encoding="utf-8") as out:
    out.write("ARM64 PAGE REFERENCE ANALYSIS: 0x5a6000\n")
    out.write(f"Functions found: {len(functions)}\n")
    out.write(f"Functions referencing page: {len(selected)}\n")

    for name, lines, matches in selected:
        out.write("\n" + "=" * 90 + "\n")
        out.write(f"FUNCTION: {name}\n")
        out.write("=" * 90 + "\n")

        emitted = set()

        for pos in matches:
            # Показываем ADRP и следующие 24 строки функции.
            start = max(0, pos - 2)
            end = min(len(lines), pos + 25)

            if any(i in emitted for i in range(start, end)):
                continue

            out.write("\n--- ADRP CONTEXT ---\n")

            for i in range(start, end):
                out.write(lines[i])
                emitted.add(i)

print("Total functions:", len(functions))
print("Functions referencing 0x5a6000:", len(selected))
print("Report:", OUTPUT)
print("Size:", OUTPUT.stat().st_size, "bytes")

print("\nFunction names:")
for name, _, _ in selected:
    print(name)
