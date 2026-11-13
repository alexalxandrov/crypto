# A26 SBoot research update — 2026-11-13

Scope: static analysis of the repository's SM-A266B SBoot artifacts. This note records reproducible observations and corrects stale statements in earlier handoff notes. It does **not** claim that bootloader unlocking is possible, and it does not propose bypassing secure-boot, RPMB, Knox Guard, FRP, or TEE protections.

## Device / artifact context

- Target reported by owner: Samsung Galaxy A26 5G, SM-A266B/DS.
- Reported firmware: A266BXXUCDZJ6, Android 17, One UI 9.0, CSC CAU.
- The repository contains `a26-analysis/current/raw/sboot.bin` (8 MiB).
- The current extracted disassembly is `a26-analysis/current/full-sboot.asm.gz` and the targeted extraction set is under `a26-analysis/current/extracted/`.

## 1. The 0x001690d8 extraction gap is closed

The current `main` branch contains:

- `a26-analysis/current/extracted/fcn.001690d8.asm`
- `a26-analysis/current/extracted/fcn.001690d8-callers.asm`
- `a26-analysis/current/extracted/fcn.001690d8-manifest.txt`

The manifest identifies 444 disassembled instructions and eight direct call sites. Therefore, any handoff text still saying that the function body is unavailable is stale and should be amended.

### What the function demonstrably does

At entry, x0 is the source object and x1 is the destination object. The routine:

- checks the source object's first byte / type discriminator;
- copies fixed header fields from source offsets 0x08–0x28 into destination offsets 0x00–0x20;
- copies many fixed-size ranges using `fcn.0014d60c`;
- consults a 64-bit flags field at source offset `+0x608`;
- conditionally copies additional large regions based on bits in that flags field;
- calls `fcn.001653ac` for a command/type validation step in one path;
- returns a status/error code.

This is consistent with a structured-object copy/normalization/validation helper. The routine is **not**, by itself, evidence of an OEM-unlock implementation, an RPMB write, or a bootloader state transition. The field at `+0x608` is a bitfield used to select optional regions; its semantic names remain unknown.

## 2. Important caller: 0x00189d8c

The current full disassembly shows a caller path at `fcn.00189d8c`:

- calls `fcn.0017d674` and stores its result in a global at `0x5a6000 + 0xa88`;
- calls `fcn.0010a9a8` and branches on whether the result equals 1;
- obtains an object through `fcn.001758fc` using a string/object key at `0x26f000 + 0xe25`;
- sets bit 5 in the 64-bit field at object offset `+0x608`;
- calls `fcn.001690d8`;
- on success, calls `fcn.001584cc` and `fcn.00169738` on related objects, then may call `fcn.00188738` and `fcn.0018962c`.

This is a useful call chain for understanding the secure object/configuration subsystem, but the key at `0x26f000 + 0xe25` has not yet been resolved to a readable semantic name. Do not label this path “OEM unlock” solely because it manipulates a flags field and calls the object helper.

## 3. TEE/object helper candidate: 0x0017af7c

The function `fcn.0017af7c`:

- accepts a single integer argument and distinguishes values 0 and 1;
- for the value-1 path, creates/initializes a 0x200-byte local buffer;
- obtains an object through `fcn.001758fc` using a key at `0x265000 + 0x467`;
- reads bytes from the returned object at several offsets;
- passes the decoded values to `fcn.001390c0`;
- returns a byte/status result.

This is evidence of a keyed object lookup and data extraction path. The key's identity and the semantics of `fcn.001390c0` remain unresolved. It is not sufficient to call this the OEM unlock getter.

## 4. Reclassification of earlier leads

- `fcn.0018996c` is visibly a memory/object allocation and initialization routine: it allocates three buffers of sizes 0x21c98, 0x20940, and 0x350d0 via `fcn.001566a8`, initializes/clears old pointers, and populates structures. Its presence in the 0x00189d8c path does not make it an unlock routine.
- `fcn.0018bfb0` is a large USB/device enumeration and diagnostic routine (strings include EFUSE / USB-related messages and it enumerates named items). It should not be treated as an OEM unlock call chain just because it includes security-related strings.
- String hits such as `PO_OEM_UNLOCK`, `get_oem_unlock_val`, `Fail to unlock`, `Succeed to unlock`, and `there is no unlock keys` establish that related code/data exists in the image, but string presence alone does not establish the active call path, current policy, or an unlockable device state.

## 5. Device observations that remain relevant

From the owner-provided device observations / prior handoff:

- Android's OEMLockService reportedly returned `allowed=true` while the device remained `unlocked=false`.
- The visible Developer Options OEM unlocking switch had been made visible through a temporary `resetprop` change to `ro.boot.other.locked` using KernelSU. Therefore, the UI switch state is not independent proof that SBoot will accept an unlock request.
- Download Mode reportedly showed `RP SWREV: S:12` and `WARRANTY VOID: 0`, while the expected OEM/FRP/device-state labels were absent in that particular screen capture.
- Absence of those labels is not proof that the corresponding state variables do not exist; the screen may be build-, mode-, or policy-dependent.

## 6. Next static-analysis priorities

1. Resolve the exact string/object keys used by `fcn.00189d8c` and `fcn.0017af7c` from the string table / raw SBoot bytes.
2. Identify the semantics of `fcn.001584cc`, `fcn.00169738`, `fcn.00188738`, `fcn.0018962c`, and `fcn.001653ac` from their complete bodies and callers.
3. Build a cross-reference table for every OEM-related string address, distinguishing literal address, xref address, containing function, argument setup, and branch conditions.
4. Trace the OEM-related code only as far as determining which documented state/policy check rejects or permits a normal user-initiated unlock request. Do not infer a bypass from a UI property or a generic secure-object helper.
5. Compare the static findings with an ordinary, non-destructive Download Mode observation from this exact firmware build. Do not issue unlock/flash commands as part of this diagnostic phase.

## 7. Current conclusion

**No supported unlock path has been demonstrated.** The strongest result in this pass is a correction to the evidence map: the complete 0x001690d8 helper and its callers are already present in the repository, and the helper appears to be generic structured-object processing rather than a direct unlock primitive. The highest-value next work is semantic resolution of the secure-object keys and the OEM-string xrefs, not experimentation with writes to RPMB/TEE state.


## 8. Corrected A26 customer-token lock-state call graph (2026-11-13)

A full-part disassembly pass resolved a material xref attribution error in the earlier ESS note.

### 8.1 Actual caller chain

The actual direct call to `fcn.0017dfdc` is at `0x0017dfa4` inside `fcn.0017df80`. That wrapper is called at `0x00115628` by `fcn.00115610`:

`fcn.00115610 → fcn.0017df80 → fcn.0017dfdc`

`fcn.00115610` itself has a data xref from `aav.0x000493e0 + 0x2380`; the meaning of the referenced table/object is not yet established.

### 8.2 The two previously misattributed functions

The earlier report incorrectly treated xref lines after `fcn.0017dfdc` as callers of that function. In fact:

- `0x001534e8` in `fcn.00153180` calls `fcn.0017e274`.
- `0x00153d00` in `fcn.00153998` calls `fcn.0017e274`.
- `0x0015360c` in `fcn.00153180` calls `fcn.0017e384`.
- `0x0015422c` in `fcn.00153998` calls `fcn.0017e384`.

Thus `fcn.00153180` (342 lines) and `fcn.00153998` (551 lines) are response handlers selected later by `fcn.00115610`, not direct callers of the customer-token synchronizer.

### 8.3 Dispatch after synchronization

Later in `fcn.00115610`, `fcn.001530ec()` selects a response path:

- result 2 → `fcn.00153180(6, ...)`;
- result 4 → `fcn.00153998(6, ...)`.

This is a sequencing result: the synchronizer wrapper runs at the beginning of `fcn.00115610`; the two response handlers are selected later. This does not prove that the handlers issue, sign, install, or validate an ESS token.

### 8.4 Setter polarity and bit-3 relation

The complete `fcn.001257bc` body confirms that it normalizes its input to boolean 0/1 and stores that same value at `0x56f000 + 0x8f0` and object offset `+0xfc`. When the protected-storage guard is active, it passes the prepared object to `fcn.00123f14`.

The synchronizer `fcn.0017dfdc` only accepts matching values of mode bit 3 and cached state. For accepted pairs, it calls the setter with the inverse:

| Bit 3 | Cached state | Setter argument |
|---:|---:|---:|
| 0 | 0 | 1 |
| 1 | 1 | 0 |
| 0 | 1 | reject |
| 1 | 0 | reject |

This establishes the software relationship `setter_arg = 1 - bit3` on accepted paths. It does **not** establish whether numeric 1 means locked or unlocked.

### 8.5 Wrapper side effects and counter

`fcn.0017df80` writes status ID 7 through `fcn.0014b120`, calls the synchronizer, reads bit 3 again, and writes status ID 6 only when bit 3 is clear. The strings at `0x26f47b` and `0x259c35` remain unresolved.

`fcn.0017b7c8(1)` increments `0x59f000 + 0xc7c` unless the counter is `-1`, then performs a keyed-object/logging operation. The counter's precise meaning is not yet proven.

### 8.6 New reproducible extraction

The complete bodies of `fcn.00115610`, `fcn.00153180`, `fcn.00153998`, and `fcn.0017df80` are now saved in:

`a26-analysis/current/extracted/oem-lockstate-callchain.asm`

The ESS analysis, handoff, README, and SVG were updated to use this corrected graph.

### 8.7 Next highest-value targets

1. Identify the data table/object at `aav.0x000493e0 + 0x2380` and why it references `fcn.00115610`.
2. Decode status IDs 7 and 6 and the strings at `0x26f47b` / `0x259c35` passed by `fcn.0017df80`.
3. Trace `fcn.0014b120` and its storage/status destination at `0x5a0000 + 0x64c`.
4. Resolve the key and semantics of `fcn.0017b7c8`'s counter/object operation.
5. Continue the EngMode HAL → TEEGRIS → signed-token validation/install path. Keep all device operations read-only.
