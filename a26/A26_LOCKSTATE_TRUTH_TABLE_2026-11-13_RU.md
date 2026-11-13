# A26 — lock-state reconciliation truth table (13.11.2026)

Firmware: SM-A266B / A266BXXUCDZJ6.  
Primary source: `a26-analysis/unlock-investigation/current.txt`, complete extracted bodies for `fcn.0017dfdc`, `fcn.001257bc`, and `fcn.0012577c`.  
This is static analysis only. No device state was modified.

## Finding

The routine `fcn.0017dfdc` is called by `fcn.0017df80` at `0x0017dfa4`. It reads mode bit 3 through `fcn.001895dc(3)`, obtains a cached state through `fcn.0012577c`, and calls `fcn.001257bc` only for two matching input combinations.

The exact control flow is:

| Mode bitmap bit 3 | Current state read | Outcome in `fcn.0017dfdc` | Value passed to setter |
|---:|---:|---|---:|
| 0 | 0 | Continues to MISC/object + protected storage path | 1 |
| 0 | 1 | Fail-closed branch, returns -1 | — |
| 1 | 0 | Fail-closed branch, returns -1 | — |
| 1 | 1 | Continues to MISC/object + protected storage path | 0 |

Thus, **the setter receives the complement of bit 3** (`!bit3`) when the precondition `current_state == bit3` holds. This is not accurately described as “copy bit 3 into the lock-state field.” It is an inverse mapping at the call site.

Do not yet label bit 3 as Mode 3 / `MODE_CUST_KERNEL` on A26: the A26 enum name remains unproven. Likewise, the semantic polarity of the persisted value (locked vs unlocked) is not proven by this function alone. The code establishes a boolean transformation, not the user-facing meaning of 0/1.

## Setter semantics: `fcn.001257bc`

The setter:

1. Normalizes its input to a boolean using `cmp w0, 0` / `cset w19, ne`.
2. Allocates and initializes a 0x100-byte object.
3. Copies 12 bytes from the global structure at `0x56f000 + 0x8f4`.
4. Writes the normalized value to the cached global at `0x56f000 + 0x8f0` and to object offset `+0xfc`.
5. Reads the persistence guard at `0x56f000 + 0x4e8`.
6. Only if that guard equals 1, calls `fcn.00123f14` with the storage identifier at `0x56f000 + 0x4d8` and the object; this is the observed protected-storage/RPMB-facing branch.
7. Releases the object and returns status.

Important distinction: a successful cache update is not by itself proof that a persistent RPMB write succeeded. The guarded storage call is a separate operation, and its lower-level semantics still need to be established.

## Getter and guard dependency: `fcn.0012577c`

The getter reads the same guard `0x56f000 + 0x4e8`. If it is 1, it copies the cached value at `0x56f000 + 0x8f0` to the caller's output pointer and returns 0. Otherwise it returns `0x40300` and does not write the output pointer.

The caller `fcn.0017dfdc` first checks a different flag at `0x56f000 + 0x4dc`, then calls this getter. Its shown call site does not branch on the getter's return value before loading the output slot. Therefore, the relationship between the two global guards (`+0x4dc` and `+0x4e8`) must be traced before assuming the output slot is always initialized. This is a concrete unresolved control-flow dependency, not a reason to infer runtime values.

## What the routine does not prove

- It does not demonstrate a public or user-triggerable unlock command.
- It does not prove the signed ESS token is issued or accepted.
- It does not identify the A26 name of mode bit 3.
- It does not define whether stored 0/1 means locked/unlocked.
- It does not prove that the guarded storage/RPMB operation ran on this handset.
- The owner's ODIN MODE `KG STATE: COMPLETED (0)` cannot be substituted for the internal bitmap bit or cached state; no mapping between them is established.

## Exact source excerpt

The complete extracted function body is preserved verbatim in the repository source file. The critical instructions are:

```asm
0x0017e078  mov w0, 3
0x0017e07c  bl  fcn.001895dc
0x0017e080  cbz w0, 0x17e098
0x0017e084  ldr w8, [fp, 0x1c]
0x0017e088  cmp w8, 1
0x0017e08c  b.ne 0x17e098
0x0017e090  mov w19, wzr
...
0x0017e09c  bl  fcn.001895dc
0x0017e0a0  ldr w8, [fp, 0x1c]
0x0017e0a4  orr w8, w0, w8
0x0017e0a8  cbnz w8, 0x17e238
0x0017e0ac  mov w19, 1
...
0x0017e16c  mov w0, w19
0x0017e170  bl  fcn.001257bc
```

## Next static-analysis targets

1. Trace writers/readers of `0x56f000 + 0x4dc`, `+0x4e8`, `+0x8f0`, and `+0x4d8`; establish whether the two guards are coupled and how the cached state is initialized.
2. Extract and inspect `fcn.00123f14` and its callees to distinguish an RPMB write from generic storage abstraction, including exact parameter encoding and success/error propagation.
3. Resolve string arguments passed to the `OEM %s in RPMB` logger and the corresponding state values, using the correct J6 string table rather than cross-build assumptions.
4. Trace all callers of `fcn.001257bc` and `fcn.0012577c`; determine whether other call paths establish a different semantic polarity.
5. Identify the A26 enum/name for bitmap bit 3 from A26-specific mode-table construction and accessors.

## Source excerpt provenance

Function `fcn.0017dfdc` begins at line 331 in `a26-analysis/unlock-investigation/current.txt`; setter `fcn.001257bc` follows immediately after the function body. The extracted text is an existing repository artifact, not newly executed firmware.
