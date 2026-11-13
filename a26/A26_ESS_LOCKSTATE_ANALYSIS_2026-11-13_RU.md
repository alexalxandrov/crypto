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

### 1.7 Corrected caller map — important xref correction (2026-11-13)

The previous report misattributed the xref lines following `fcn.0017dfdc`. The call sites `0x1534e8` and `0x153d00` are **not** calls to `fcn.0017dfdc`; both call `fcn.0017e274`. The following call sites `0x15360c` and `0x15422c` call `fcn.0017e384`.

The actual direct caller of `fcn.0017dfdc` found in the full SBoot parts is:

- `fcn.0017df80` at `0x0017dfa4`.

The wrapper `fcn.0017df80` is itself called by `fcn.00115610` at `0x00115628`. The latter has a data xref from `aav.0x000493e0 + 0x2380`; the data structure/table semantics are not yet identified.

The full bodies of `fcn.00115610`, `fcn.00153180`, `fcn.00153998`, and `fcn.0017df80` have now been extracted to:

`a26-analysis/current/extracted/oem-lockstate-callchain.asm`

Interpretation of the order in `fcn.00115610`:

1. It begins by calling `fcn.0017df80`, which calls `fcn.0017dfdc` (the customer-token lock-state synchronizer).
2. It then performs additional status/object handling.
3. Later it calls `fcn.001530ec()` to select a response-processing path: return value 2 dispatches to `fcn.00153180(6, ...)`; return value 4 dispatches to `fcn.00153998(6, ...)`.
4. Those two handlers parse/process their respective response structures and call `fcn.0017e274` and `fcn.0017e384`; they are downstream sibling handlers, not direct callers of the synchronizer.

This establishes a real A26 execution sequence around the synchronizer, but it does **not** yet prove that either response handler creates, signs, installs, or authorizes an ESS token. The table entry at `aav.0x493e0 + 0x2380` and the data structures passed into the handlers still need semantic identification.

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

1. **DONE — extract and classify** `fcn.00153180` and `fcn.00153998`. They are response handlers selected by `fcn.00115610`, not direct callers of `fcn.0017dfdc`.
2. Trace the data xref/table entry `aav.0x000493e0 + 0x2380` that references `fcn.00115610`; identify the producer and exact callback/dispatch semantics.
3. Decode the strings referenced by `fcn.0017df80` (`0x26f47b`, `0x259c35`) and determine the meaning of status IDs 7 and 6 passed to `fcn.0014b120`.
4. Resolve the object key at `0x24854a` used by `fcn.0017b7c8`, and all readers/writers of `0x59f000 + 0xc7c`; its current code increments a gated counter, but the counter's business meaning is not proven.
5. Validate the ELF/program-header/base-address mapping for `a26-analysis/1.txt` and inspect the A26 service/TLC binaries at source level.
6. Trace the A26 service-side implementation from Binder transaction 11 into TEEGRIS; separate request serialization, server issuance, signature validation, token installation, mode bitmap persistence, and the later SBoot lock-state sync.
7. Correlate only with read-only device observations. Do not write to RPMB/STEADY, patch SBoot, inject tokens, or downgrade.

**Current answer to “can we unlock it right now?”: no safe, reproducible unlock method is established.** The code shows an authorization mechanism whose critical trust material/issuance step has not been satisfied.

## 7. Проверка гипотезы «другой CSC = другой SBoot» (2026-11-13, дополнение)

Проверены региональные пакеты SM-A266B для одного и того же PDA/AP build A266BXXUCDZJ6.

### 7.1 CAU и контрольные регионы

- CAU: PDA/AP A266BXXUCDZJ6, CSC package A266BOXMCDZJ6 (OXM).
- XSG: тот же PDA/AP A266BXXUCDZJ6, CSC package A266BOJMCDZJ6 (OJM).
- ACR также использует A266BOJMCDZJ6; SamFOTA показывает для ACR и XSG одинаковый SHA-256 полного пакета 17347ff4…dbebb23.
- В индексируемых дочерних файлах SamFW для CAU, SKZ (OXM), XID (OLM), MID (OJM), INS (ODM) указан один и тот же BL-файл: BL_A266BXXUCDZJ6_A266BXXUCDZJ6_MQB116271260_REV00_user_low_ship_MULTI_CERT.tar.md5.zip, размер 8.53 MB.
- Названия/размеры CSC-пакетов отличаются по региональным группам, тогда как компонент BL в этих каталогах имеет одинаковое имя и размер.

Источники:
- [SamMobile CAU J6](https://www.sammobile.com/samsung/galaxy-a26-5g/firmware/SM-A266B/CAU/download/A266BXXUCDZJ6/2189737/)
- [SamMobile XSG J6](https://www.sammobile.com/samsung/galaxy-a26-5g/firmware/SM-A266B/XSG/download/A266BXXUCDZJ6/2112047/)
- [SamFW CAU J6 — child files](https://samfw.com/firmware/SM-A266B/CAU/A266BXXUCDZJ6)
- [SamFW SKZ J6 — child files](https://samfw.com/firmware/SM-A266B/SKZ/A266BXXUCDZJ6)
- [SamFW XID J6 — child files](https://samfw.com/firmware/SM-A266B/XID/A266BXXUCDZJ6)
- [SamFW MID J6 — child files](https://samfw.com/firmware/SM-A266B/MID/A266BXXUCDZJ6)
- [SamFW INS J6 — child files](https://samfw.com/firmware/SM-A266B/INS/A266BXXUCDZJ6)
- [SamFOTA XSG J6](https://samfota.com/firmware/sm-a266b/xsg/a266bxxucdzj6/)

**Вывод с оговоркой:** данные сильно указывают на общий BL-компонент для региональных J6-пакетов, а не на отдельный SBoot, скомпилированный под каждый CSC. Побайтный SHA-256 дочернего BL-архива для каждой группы в открытых индексируемых карточках не опубликован, поэтому абсолютное равенство самих файлов не объявляется доказанным. Но оснований ожидать «открытый SBoot» только от перехода CAU/OXM на XSG/OJM нет. Смена CSC не является обоснованным способом снять ограничение OEM unlock.

### 7.2 Что подтверждено по сохранённым в репозитории SBoot

В репозитории имеются два извлечённых raw SBoot одинакового размера 8,388,608 байт:
- J6 (a26-analysis/current/raw/sboot.bin): Git blob ID 7a239492904cce7a639560149628930040ffc9fe.
- One UI 8.5 / A266BXXSCCZH3 (a26-analysis/oneui85/raw/sboot.bin): Git blob ID d5f1f6111773202f7b2a62359c55a79cc69ea5eb.

Эти бинарники различаются. Следовательно, SBoot действительно меняется между версиями прошивки, но это не подтверждает региональную вариацию в рамках одного J6 build.

Сопоставление строковых сканов двух SBoot:
- 93 различных OEM/bootloader-related строки присутствуют в обоих сканах.
- Среди общих строк сохраняются PO_OEM_UNLOCK, get_oem_unlock_val, Fail to unlock, Succeed to unlock, using unlock keys which was downloaded by odin, unlock_counter_rw, OEM %s in RPMB, OSUNLOCK и sync_lockstate_custtoken.
- Это показывает, что соответствующие подсистемы/сообщения уже присутствовали в One UI 8.5; простого исчезновения этих строк в J6 нет. Но совпадение строк не доказывает равенство машинного кода, достижимость ветвей или работоспособность пользовательского unlock-пути.

### 7.3 Практический результат

1. Не прошивать XSG/OJM только ради надежды получить другой SBoot: по текущим данным это не подтверждается.
2. Не использовать J5/J4 и старые One UI в качестве эксперимента: одинаковый SW REV/Binary сам по себе не является подтверждением безопасной совместимости всей цепочки и не даёт основания для downgrade.
3. Наиболее значимый неразобранный lead остаётся не CSC, а ветка Odin key / customer-token: в обоих SBoot поколениях есть строки о ключах, загруженных Odin, однако текущая статическая выборка не показывает валидный пользовательский источник ключа и весь путь его проверки.
4. Отсутствующие тела fcn.00153180 и fcn.00153998 остаются приоритетным пробелом. Их вызовы fcn.0017dfdc подтверждены, но полный контекст получения и передачи данных пока не извлечён.

**Итог:** гипотеза «региональный CSC даст другой разблокируемый SBoot» получила отрицательную оценку. Продолжать следует анализ пути Odin/customer-token и точной семантики защищённого lock-state, не перепрошивая телефон.


## 8. Runtime correlation: complete ODIN MODE screen (13.11.2026)

The device owner supplied a **complete transcription** of the current ODIN MODE screen. The owner explicitly confirmed that this is the entire screen and that **there are no additional fields or lines**. The full verbatim record is maintained in:

`a26/A26_DOWNLOAD_MODE_2026-11-13_RU.md`

Observed values:

| Field | Value |
|---|---|
| Mode | `ODIN MODE` |
| DLD SPEED | `FAST` |
| CURRENT BINARY | `SAMSUNG OFFICIAL` |
| KG STATE | `COMPLETED (0)` |
| DID | `300277f5b7040811` |
| SECURE DLD | `ENABLED` |
| SALES CODE / CID / AID | `CAU/CAU` |
| WARRANTY VOID | `0` |
| RP SWREV | `B:12 K:12 (12 12 12 12 12) S:12` |
| HDM STATUS | `NONE` |
| CARRIER ID | `CAU` |
| HW REV | `5` |
| DDR SIZE | `8G` |
| BUILD VERSION | `A266BXXUCDZJ6` |
| EVT | `0.1` |
| CHIP ID | `00000277f5b70408` |
| LOT ID | `NWBUW` |
| CHIP ID SJTAG | Same as CHIP ID: `00000277f5b70408` |

The following lines are **not present** on that complete screen:

- `OEM LOCK`
- `FRP LOCK`
- `DEVICE STATE`

There are no other screen fields beyond the table above. Do not convert absent lines into OFF/UNLOCKED values, and do not ask the owner to provide additional Download Mode fields.

### 8.1. Evidence interpretation

1. `KG STATE: COMPLETED (0)` is the literal Download Mode observation. It is not, by itself, an OEM-unlock permission result or proof of an unlocked bootloader.
2. `WARRANTY VOID: 0` is the observed Warranty Void value. It is distinct from Knox version 3.14 and Knox API level 41.
3. `CURRENT BINARY: SAMSUNG OFFICIAL` and `SECURE DLD: ENABLED` describe the displayed binary/download state; neither proves that the OEM unlock transition is permitted.
4. The `RP SWREV` tuple records revision 12 for the displayed B/K/S components. It is not a downgrade compatibility guarantee.
5. The absence of `OEM LOCK`, `FRP LOCK`, and `DEVICE STATE` is a UI observation only. It does not independently establish either locked or unlocked state.
6. Earlier Android OEMLockService results remain a separate observation: carrier/user/overall allowed were true, while `isDeviceOemUnlocked` was false. Do not collapse the Android service response, KG state, and missing Download Mode labels into one Boolean.

**Device evidence intake status: COMPLETE for Software information and the full ODIN MODE screen.** The remaining work is static/dynamic evidence correlation using the already collected values, not requesting another screen from the owner.


## 9. Lock-state setter polarity and real synchronizer call path — new finding (2026-11-13)

### 9.1 Exact setter semantics at the API boundary

The complete body of `fcn.001257bc` shows:

- It normalizes its input with `cset w19, ne`; the persisted value is therefore exactly `0` when the argument is zero and `1` for any non-zero argument.
- It writes that normalized value to `0x56f000 + 0x8f0`.
- It also writes the same value to offset `+0xfc` in the allocated 0x100-byte request/object.
- When guard `0x56f000 + 0x4e8` is enabled, it calls `fcn.00123f14` with storage selector `0x56f000 + 0x4d8`, operation argument 1, and the prepared object.
- The function returns zero on the successful path; a missing allocation returns the encoded error `0x00050b04`.

This proves the setter's numeric polarity at the software boundary: it persists the boolean supplied by its caller. It does **not** identify whether numeric 1 means locked or unlocked in Samsung's internal policy.

### 9.2 Synchronizer truth table

In `fcn.0017dfdc`, the mode bitmap reader `fcn.001895dc(3)` returns bit 3. Let `m` be that bit and `s` be the cached state returned by `fcn.0012577c).

The visible branches accept only matching pairs and pass the inverse value to the setter:

| Mode bit 3 (`m`) | Cached state (`s`) | Result |
|---:|---:|---|
| 0 | 0 | Calls setter with 1 |
| 1 | 1 | Calls setter with 0 |
| 0 | 1 | Rejects / returns failure |
| 1 | 0 | Rejects / returns failure |

Therefore, on the accepted paths, the requested new stored value is `1 - m`. This is a direct code-level relationship. Do **not** translate it into “Mode 3 unlocks” or “1 means unlocked”: the internal lock-state polarity and the semantic label of bit 3 remain unproven.

### 9.3 Actual parent wrapper and surrounding execution sequence

The full disassembly establishes:

`fcn.00115610 @ 0x00115628 → fcn.0017df80 @ 0x0017dfa4 → fcn.0017dfdc`

Inside `fcn.0017df80`:

1. It calls `fcn.0014b120` with destination buffer `0x5a0000 + 0x64c`, capacity 7, and variadic value `0x26f47b`.
2. It then calls `fcn.0017dfdc`.
3. It reads bit 3 again.
4. If bit 3 is clear, it calls `fcn.0014b120` again with the same destination/capacity and variadic value `0x259c35`.

The earlier interpretation of these as status IDs 7/6 and string pointers was incorrect. The body of `fcn.0014b120` shows that it uses the fixed format string `" cmd0 is not correct 0x%x\\n"` and delegates formatting to `fcn.0014b248`; x1 is a destination capacity and x2 is the first variadic value. Thus `0x26f47b` and `0x259c35` are values passed to a diagnostic formatter as `cmd0`, not confirmed string pointers or status IDs. Their semantic identity remains unresolved.

### 9.4 Counter helper reclassification

The full body of `fcn.0017b7c8` shows that, for a positive input and unless the counter already equals `-1`, it increments `0x59f000 + 0xc7c`, performs a keyed-object/logging operation, and returns the resulting counter. The synchronizer calls it with argument 1 after its setter/error handling join point. This is a gated counter associated with the synchronizer path; its precise business meaning is still unknown and it must not be called an unlock counter without resolving the object key and other writers.

### 9.5 What this changes

- The former claim that `fcn.00153180` / `fcn.00153998` directly call `sync_lockstate_custtoken` is withdrawn.
- They are downstream response handlers selected by `fcn.00115610` according to `fcn.001530ec()` return values 2 or 4.
- The actual synchronizer call is now traced through `fcn.0017df80`.
- The exact 0/1 relationship between mode bit 3 and the value written to the cached/protected state is known; the user-facing lock/unlock meaning remains unresolved.
