# A26 — ESS / customer-token / OEM lock-state findings (2026-11-13)

Target under study: Samsung Galaxy A26 5G SM-A266B/DS, firmware A266BXXUCDZJ6, Android 17 / One UI 9.0, CSC CAU (owner-reported). This note records static-analysis results from files already in the repository. It does not provide or claim a bootloader bypass.

## Executive result

The A26 SBoot contains a concrete routine named by its log string `sync_lockstate_custtoken` at VA `0x0026d660`. The routine at `fcn.0017dfdc` checks a bit in an in-memory mode bitmap, obtains a current state value, accesses an object under the `MISC` key, and can call `fcn.001257bc`, whose code logs `rpmb_set_lock_state` and invokes a storage layer. This is direct A26 evidence that customer-token-related state is synchronized with a protected OEM lock-state path.

**It is not yet proof that this path unlocks the device, nor that the bit is definitively named Mode 3 in A26.** The direction of the boolean state (0 vs 1) and the exact meaning of the two log labels remain unresolved. The callers of the synchronizer are also not yet fully extracted.

The A26 Engineering Mode client library also exposes a Binder `makeTokenReq` transaction and a `getModesbit` transaction. The client builds and forwards a request to the vendor HAL; the client code does not itself produce a Samsung-signed authorization token. No public token-issuance endpoint, valid A26 token, SingleID/OTP values, or supported end-user unlock command has been established.

## 1. A26 SBoot lock-state synchronization

Source: `a26-analysis/current/global-functions.asm` and corroborating excerpts in `a26-analysis/unlock-investigation/current.txt` / `current-token.txt`.

### 1.1 Function `fcn.0017dfdc`

The SBoot function begins at VA `0x0017dfdc`. Its call graph and visible operations:

1. Calls `fcn.0012467c` as an initial precheck. A non-zero result logs an error with the string `sync_lockstate_custtoken` (`0x26d660`) and returns failure.
2. Reads a global control at `0x56f000 + 0x4dc`. If enabled, calls `fcn.0012577c` to retrieve a state value from `0x56f000 + 0x8f0`; otherwise records an error state.
3. Calls `fcn.001895dc(3)`. This helper reads bit 3 from the bitmap based at `0x5a6000 + 0xa90`.
4. Checks the relationship between that bit and the retrieved state. The visible branches are not a simple unconditional setter:
   - bit 3 set and retrieved value equal to 1: proceeds through a no-op/success branch;
   - bit 3 clear and retrieved value equal to 0: sets local argument `w19 = 1` and proceeds to the storage operation;
   - other combinations: fail closed and return an error.
5. Looks up an object using the key at `0x250000 + 0xd3d`, which is the SBoot string `MISC`.
6. Builds data and invokes helpers including `fcn.001392bc`, `fcn.0016e57c`, `fcn.001503d0`, and `fcn.00150b58`.
7. Calls `fcn.001257bc(w19)` at `0x0017e170`.
8. If that operation succeeds, calls `fcn.0017b7c8(1)` at `0x0017e1dc`, followed by logging/accounting work.

The function also uses the string `OEM %s in RPMB` at `0x25a8ca`. The two candidate string arguments are built from `0x23e000 + 0x7fd` and `0x240000 + 0xc92`; their exact decoded text has not yet been independently verified in the current text artifacts.

### 1.2 Mode-bit reader `fcn.001895dc`

The body at `0x001895dc` computes a word index and bit index, loads a 64-bit word from the global bitmap based at `0x5a6000 + 0xa90`, shifts it, and returns the selected bit. The synchronizer passes argument `3`, so it specifically tests bit 3.

The bit's A26 enum/string label is not yet confirmed from the A26 artifacts. A separate S24 Ultra One UI 8.5 audit maps Engineering Mode bit 3 to Mode 3 / `MODE_CUST_KERNEL`, but that is a different device and build. This is a strong lead, not an A26-specific proof of the enum name.

### 1.3 Current-state reader `fcn.0012577c`

This helper reads the global enable flag at `0x56f000 + 0x4e8`. If the flag is set, it copies the current state value from `0x56f000 + 0x8f0` to the supplied pointer and returns success; otherwise it returns an error code.

The value's polarity remains unknown in this analysis: do not yet equate numeric 0/1 with Android's `isDeviceOemUnlocked` boolean.

### 1.4 State setter `fcn.001257bc`

The function takes a boolean-like integer, normalizes it with `cset w19, ne`, allocates/initializes a 0x100-byte request object, copies a 12-byte global structure, and updates the cached value at `0x56f000 + 0x8f0`.

When an additional global guard at `0x56f000 + 0x4e8` is enabled, it invokes `fcn.00123f14` with a storage identifier read from `0x56f000 + 0x4d8`. It references the string `rpmb_set_lock_state` at `0x25c09e`. This establishes a state-setting/storage path, but the lower storage helper's complete semantics and the persisted field's polarity still require analysis.

### 1.5 Precheck `fcn.0012467c)

The precheck uses `fcn.00123590`, storage/command helpers `fcn.00122e14` and `fcn.001224ec`, and parses status values. Treat it as a protected-storage/precondition check, not as a user-facing unlock API.

### 1.6 Post-operation accounting `fcn.0017b7c8`

This 66-instruction helper is called from the synchronizer after the setter path with argument 1. It updates a counter/global at `0x59f000 + 0xc7c` and performs a keyed-object operation through `fcn.001758fc` / `fcn.001392bc`. The exact key at `0x24854a` and the counter's semantics have not been decoded. Do not name it an unlock counter based solely on nearby context.

### 1.7 Missing callers

The disassembly lists two direct callers of `fcn.0017dfdc`:

- `fcn.00153180` at call site `0x001534e8`;
- `fcn.00153998` at call site `0x00153d00`.

The current extracted text corpus contains these call-site annotations, but not complete bodies for both callers. Additional nearby functions `fcn.0017e274` and `fcn.0017e384` are also called from these two parent functions, suggesting related token/state processing. Their bodies are in `a26-analysis/current/deep-analysis-v3.txt`, but the complete parent-level control flow remains missing. This is the highest-priority SBoot extraction gap.

## 2. A26 OEM-related SBoot strings and the Odin lead

The current string table contains these A26 strings:

- `PO_OEM_UNLOCK` — `0x0026529e`
- `get_oem_unlock_val` — `0x0026b4ca`
- `there is no unlock keys` — `0x0026f533`
- `Fail to unlock (0x%x)` — `0x0026a977`
- `Succeed to unlock (0x%x)` — `0x00275d4a`
- `using unlock keys which was downloaded by odin` — `0x0024edc1`
- `unlock_counter_rw` — `0x0027afa9`
- `OEM %s in RPMB` — `0x0025a8ca`
- `sync_lockstate_custtoken` — `0x0026d660`

`fcn.0017af7c` is a strong candidate for the `get_oem_unlock_val` helper: it looks up an object using the `PERSISTENT` key at `0x265467`, extracts stored fields, and logs `get_oem_unlock_val` if the object is missing. However, the function's footer xref annotations conflict with some other function bodies in the available listing; verify xrefs before treating all listed callers as valid.

The Odin string is **not yet traced to a confirmed executable caller path**. The current ARM64 listings do not provide a verified chain from an Odin command/input to the “downloaded unlock keys” branch. It remains an interesting string, not an exploitable or user-accessible method.

## 3. A26 Engineering Mode AIDL client evidence

Source: `a26-analysis/1.txt`, a 2,123-line extracted analysis of:

- `lib.engmode.samsung.so`
- `lib.engmodejni.samsung.so`
- `vendor.samsung.hardware.security.engmode-V1-ndk.so`

The A26 VINTF manifest declares AIDL interface `vendor.samsung.hardware.security.engmode.ISehEngmode/default`, version 1.

### 3.1 Methods and Binder transaction codes

The A26 NDK proxy disassembly shows:

- `makeTokenReq` — Binder transaction `0x0b` (11), at proxy call site `0x90a0`.
- `getServerTime` — Binder transaction `0x0d` (13), at proxy call site `0x92d8`.
- `getModesbit` — Binder transaction `0x16` (22), at proxy call site `0x9be8`.

The system library also contains manager methods `isTokenInstalled`, `makeTokenReq`, `getServerTime`, and `getModesbit`. This is A26-specific evidence for these methods and transaction IDs; do not import other Samsung builds' transaction numbers as proof.

### 3.2 What `makeTokenReq` does

The system manager's `EngmodeManager::makeTokenReq`:

1. obtains/checks the HAL service instance;
2. calls `fcn.000116e0` to validate the caller, and logs `Caller check fail` on a failed check;
3. marshals several string and byte-vector arguments;
4. invokes the service-side virtual method through the HAL object;
5. returns an output byte vector/status.

The NDK proxy serializes its arguments and invokes transaction 11. This shows request construction and IPC forwarding. It does **not** show that the client signs the token or can locally create a Samsung-authorized response. The service-side implementation and TEE trustlet validation still need separate analysis.

### 3.3 Caller validation

The library contains `EngmodeManager::caller_check`, including checks for an expected caller structure size (`0x208`), caller metadata, and filesystem access checks. It emits errors such as `Caller check fail`, `Permission error`, and `Invalid Check mode`. A direct invocation from Termux or an arbitrary third-party app cannot be assumed to pass this check.

### 3.4 What is not proved by the current extraction

- A successful customer-facing ESS request/response for this specific A26.
- The exact semantic mapping of every makeTokenReq argument to SingleID, OTP, DID, or mode list.
- A public Samsung endpoint that issues a Mode 3 token.
- The A26-side implementation of `installToken` or its exact transaction, if exposed through a separate component.
- The exact relationship between A26 bit 3 and a named mode enum.

The beginning of `1.txt` contains Rizin warnings: “There is no program header” and “Cannot determine entrypoint, using 0x00008000.” The disassembly is useful as a lead, but its ELF/VA mapping and extraction pipeline should be independently validated before using every offset as a definitive runtime address.

## 4. External comparison — keep device scope separate

The public `keyarr/oems24-audit` project analyses a Galaxy S24 Ultra SM-S928B on One UI 8.5, not the A26. It reports that Mode 3 is inside a Samsung-signed Engineering Mode token and that validated mode state is persisted in protected storage. It also reports that the retail test device remained locked and that no local signed-token generation path was found.

This provides an architectural comparison for the A26 findings, but it does not prove that every enum, token field, signature path, or policy is identical on SM-A266B.

## 5. Device-state correlation

Owner-reported runtime evidence remains:

- `OemLockService`: carrier/user/overall allowed true, device unlocked false.
- `ro.boot.vbmeta.device_state=locked`, `ro.boot.verifiedbootstate=green`.
- The Developer Options OEM unlocking switch was made visible after a temporary KernelSU `resetprop` change to `ro.boot.other.locked`. That UI state does not prove a bootloader state transition.
- Download Mode: `RP SWREV S:12`; no confirmed unlocked state.

No flashing, downgrade, token installation, or RPMB/STEADY write is to be attempted based on these findings.

## 6. Conclusions and remaining work

### Conclusions

1. A26 SBoot has a real customer-token/lock-state synchronization routine and a guarded storage setter path.
2. The path reads bit 3 from a mode bitmap, but the A26 enum label and 0/1 polarity are not fully decoded.
3. A26's Engineering Mode client has `makeTokenReq` (Binder transaction 11) and `getModesbit` (transaction 22), with caller validation and service-side delegation.
4. The request client is not an unlock token issuer. No valid A26 signed token or public issuance channel has been obtained.
5. The Odin downloaded-key string remains untraced. It is not a confirmed quick method.
6. No supported immediate unlock procedure has been demonstrated for this build.

### Next static-analysis priorities

1. Extract full bodies of `fcn.00153180` and `fcn.00153998`, including call sites `0x1534e8` and `0x153d00`.
2. Resolve the strings at `0x23e7fd` and `0x240c92`; determine the polarity of the boolean passed to `fcn.001257bc`.
3. Resolve the object key at `0x24854a` used by `fcn.0017b7c8`, and all readers/writers of `0x59f000 + 0xc7c`.
4. Validate the ELF/program-header/base-address mapping for `a26-analysis/1.txt` and inspect the A26 service/TLC binaries at source level.
5. Trace the A26 service-side implementation from Binder transaction 11 into TEEGRIS; separate request serialization, server issuance, signature validation, token installation, mode bitmap persistence, and the later SBoot lock-state sync.
6. Obtain a complete xref/call path for the Odin key strings before considering that lead further.
7. Correlate only with read-only device observations. Do not write to RPMB/STEADY, patch SBoot, inject tokens, or downgrade.

**Current answer to “can we unlock it right now?”: no safe, reproducible unlock method is established.** The code shows an authorization mechanism whose critical trust material/issuance step has not been satisfied.
