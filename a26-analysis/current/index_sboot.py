#!/usr/bin/env python3

import re
from pathlib import Path

ROOT = Path.home() / "a26-analysis/current"

SOURCE = ROOT / "full-sboot.asm"
INDEX = ROOT / "function-index.tsv"
REPORT = ROOT / "global-functions.asm"
HITS = ROOT / "global-hits.txt"

# Удаление ANSI escape-последовательностей Rizin
ANSI_RE = re.compile(r"\x1b\[[0-?]*[ -/]*[@-~]")

# Заголовки функций после очистки ANSI:
# ┌ fcn.00000158(int64_t arg1);
HEADER = re.compile(
    r"^\s*┌\s+(fcn\.[0-9a-fA-F]+)\s*\("
)

ADDRESS = re.compile(r"\b0x[0-9a-fA-F]{6,16}\b")

TARGETS = [
    "5a6a90",
    "5a6a10",
    "5a6960",
    "5a6a88",
    "56f8f0",
    "56f4e8",
    "56f4dc",
    "56f8f4",
]

PAGES = [
    "0x5a6000",
    "0x56f000",
]

TARGET_RE = re.compile(
    r"(?:" + "|".join(TARGETS) + r")",
    re.IGNORECASE,
)

PAGE_RE = re.compile(
    r"(?:" + "|".join(re.escape(x) for x in PAGES) + r")",
    re.IGNORECASE,
)


def clean_line(line):
    return ANSI_RE.sub("", line)


def process_function(name, lines, index, report, hits):
    addresses = []

    for line in lines:
        match = ADDRESS.search(line)
        if match:
            addresses.append(match.group(0))

    start = addresses[0] if addresses else ""

    index.write(
        f"{start}\t{name}\t{len(lines)}\n"
    )

    relevant = [
        i for i, line in enumerate(lines)
        if TARGET_RE.search(line) or PAGE_RE.search(line)
    ]

    if not relevant:
        return

    report.write("\n" + "=" * 80 + "\n")
    report.write(f"FUNCTION: {name}\n")
    report.write("=" * 80 + "\n")
    report.writelines(lines)

    hits.write(f"\nFUNCTION: {name}\n")

    emitted = set()

    for pos in relevant:
        start_context = max(0, pos - 4)
        end_context = min(len(lines), pos + 5)

        if any(i in emitted for i in range(start_context, end_context)):
            continue

        hits.write("-" * 70 + "\n")

        for i in range(start_context, end_context):
            hits.write(lines[i])
            emitted.add(i)


def main():
    if not SOURCE.is_file():
        raise SystemExit(f"Файл не найден: {SOURCE}")

    count = 0
    name = None
    block = []

    print("[1/3] Reading and parsing ASM...", flush=True)

    with SOURCE.open(
        "r", encoding="utf-8", errors="replace"
    ) as source, \
         INDEX.open("w", encoding="utf-8") as index, \
         REPORT.open("w", encoding="utf-8") as report, \
         HITS.open("w", encoding="utf-8") as hits:

        index.write("address\tfunction\tlines\n")

        for raw_line in source:
            line = clean_line(raw_line)
            match = HEADER.match(line)

            if match:
                if name is not None:
                    process_function(
                        name, block, index, report, hits
                    )
                    count += 1

                    if count % 500 == 0:
                        print(f"  Indexed: {count}", flush=True)

                name = match.group(1)
                block = [line]

            elif name is not None:
                block.append(line)

        if name is not None:
            process_function(
                name, block, index, report, hits
            )
            count += 1

    print("[2/3] Parsing complete.", flush=True)
    print(f"Functions: {count}")

    print("[3/3] Reports:", flush=True)

    for path in (INDEX, REPORT, HITS):
        print(
            f"{path.name}: "
            f"{path.stat().st_size / 1024:.1f} KiB"
        )


if __name__ == "__main__":
    main()
