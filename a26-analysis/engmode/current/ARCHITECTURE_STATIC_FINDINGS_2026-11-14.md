# A26 Engineering Mode — статическая карта зависимостей и границ IPC/TEE

**Дата:** 2026-11-14  
**Цель:** зафиксировать read-only наблюдения по ELF dynamic dependencies, символам и строкам на SM-A266B / A266BXXUCDZJ6.

## 1. Краткий вывод

Набор данных показывает несколько отдельных интерфейсных слоёв, а не одну простую цепочку:

1. VINTF публикует AIDL HAL v1: vendor.samsung.hardware.security.engmode.ISehEngmode/default.
2. HAL executable vendor.samsung.hardware.security.engmode-service и AIDL NDK glue library относятся к этому интерфейсу; в NDK-библиотеке найдены BpSehEngmode proxy, BnSehEngmode stub и ISehEngmodeDefault method symbols.
3. Отдельная native-служба emservice запускается из init по post-fs-data; её бинарник содержит ссылку на libengmode_server.so. Серверная библиотека зависит от классического libbinder.so и содержит EngineeringModeHandler::onTransact.
4. libengmode_server.so непосредственно объявляет DT_NEEDED для libengmode_tlc.so и libengmode2lite.so, а также libstork_shared.so, libsecril-client.so и librtts_client.so.
5. libengmode_tlc.so зависит от libteecl.so и содержит TEEC_* API names плюс em_tlc_send_teegris. Это сильное подтверждение TEE Client API / TEEGRIS communication layer.
6. libengmode15.so содержит ESS/token/STEADY symbols и строки RIL loading / RILD IPC.
7. libengmode2lite.so содержит string evidence о token parsing, certificate/signature validation, nonce/session-key handling, mode database parsing и ESI metadata. Эти строки не являются доказательством успешного выполнения.

Не следует рисовать безусловную линейную стрелку HAL → emservice → TLC → TEE: точные runtime caller edges, порядок вызовов и контракт между двумя Binder-сервисами ещё не восстановлены полностью.

## 2. Init и VINTF — фактические конфигурационные данные

VINTF manifest:

- HAL name: vendor.samsung.hardware.security.engmode
- format: AIDL
- version: 1
- fqname: ISehEngmode/default

Init definition для engmode_hal:

- executable: /vendor/bin/vendor.samsung.hardware.security.engmode-service
- class: early_hal
- user/group: system

Init definition для emservice:

- executable: /vendor/bin/emservice
- class: core
- user/group: system
- initially disabled
- start trigger: post-fs-data
- restart trigger: init.svc.zygote=restarting

Это показывает две самостоятельные init-службы. Совпадение функционального домена не означает, что они имеют один процесс или один Binder protocol.

## 3. Наблюдаемые ELF DT_NEEDED

### libengmode_tlc.so

- liblog.so
- libteecl.so
- libutils.so
- libcutils.so
- libc++.so
- libc.so
- libm.so
- libdl.so

Строки: TEEC_InitializeContext, TEEC_OpenSession, TEEC_InvokeCommand, TEEC_AllocateSharedMemory, TEEC_ReleaseSharedMemory, TEEC_CloseSession, TEEC_FinalizeContext, em_tlc_send_teegris, em_tlc_teegris_clear.

**Интерпретация:** TLC использует интерфейс GlobalPlatform TEE Client API, предоставляемый Samsung library libteecl.so, для открытия сессии и выполнения команд в TEE. Точный TA UUID, command IDs и semantics не установлены этим выводом.

### libengmode_server.so

- libutils.so
- libcutils.so
- libbinder.so
- liblog.so
- libstork_shared.so
- libengmode_tlc.so
- libengmode2lite.so
- libhardware_legacy.so
- libsecril-client.so
- librtts_client.so
- libc++.so
- libc.so
- libm.so
- libdl.so

Также присутствуют EngineeringModeHandler::onTransact, EngineeringModeLegacy, EngineeringModeWorld, em_tlc_send и методы работы с token cache/STEADY.

**Интерпретация:** серверный компонент связывает classic Android Binder, EngMode protocol logic, TLC/TEE transport, 2Lite ESS implementation и RIL/RTTS dependencies. DT_NEEDED доказывает зависимости ELF, но не доказывает, что каждая функция вызывается в текущем runtime.

### libengmode15.so

- libcrypto.so
- libstork_shared.so
- liblog.so
- libc.so
- libm.so
- libdl.so

Строки включают em_ess_make_token_request, em_ess_install_token_v1, em_ess_update_req_msg, em_ess_make_delete_request, em_read_from_steady, em_write_to_steady, install_token_for_ess, verify_token_data, em_token_is_from_fac, parse_stored_token, em_write_last_token_status.

Также присутствуют строки:
- Failed to load libsecril lib
- Failed to load InvokeOemRequestHookRaw
- Failed to load OpenClient_RILD
- Failed to load Connect_RILD
- Failed to load Disconnect_RILD
- Failed to load CloseClient_RILD
- Failed to connect Rild
- Failed to send IPC

**Интерпретация:** EngMode 1.5 layer включает ESS request/token operations, криптографическую зависимость и динамическую интеграцию с RIL/OEM request hook. Наличие строк не показывает, что сетевой/модемный запрос выполнялся во время нашей диагностики или что ответ содержит OEM-unlock permission.

### libengmode2lite.so

- liblog.so
- libc.so
- libm.so
- libdl.so

Строки включают em_lite_ess_command, em_lite_ess_command_v4, em_lite_install_token, em_ess_make_token_message, em_ess_make_delete_request, em_ess_parse_command_v1, em_token_verify_token_signature, em_token_parse_mode_info, em_ess_get_info.

Дополнительная диагностическая лексика: parse certificate, compare signature, generate nonce, make session key, token version mismatch, token already used, check expiration, check hash, token ID mismatch, failed to verify client, Enabled RPMB RSI, update ESI, update IIN, recovery counter.

**Интерпретация:** 2Lite содержит проверочную/парсерную логику для ESS message/token path. Встроенные строки об ошибках не подтверждают успешную верификацию или конкретный RPMB write на устройстве. Фраза Enabled RPMB RSI — только найденная строка, не результат исполнения.

### libengmode_client.so

- libutils.so
- libcutils.so
- libbinder.so
- liblog.so
- libc++.so
- libc.so
- libm.so
- libdl.so

Строки и symbols включают getServer, getStatus, makeTokenReq, getRequestMsg, installToken, getToken, getModesbit, commandForESS, getServerTime, recoveryITL, removeToken, sendFuseCmd и другие методы.

**Интерпретация:** классическая Binder client library для Samsung Engineering Mode API. До уточнения конкретного Binder service object не следует отождествлять её с AIDL NDK proxy library.

### vendor.samsung.hardware.security.engmode-V1-ndk.so (vendor copy)

- libbinder_ndk.so
- libc++.so
- libc.so
- libm.so
- libdl.so

Найдены C++ symbols с префиксами:
- BpSehEngmode — Binder proxy implementation;
- BnSehEngmode — Binder native stub/base;
- ISehEngmodeDefault — default implementation surface;
- ISehEngmode — interface / parcel conversion.

Среди методов: getStatus, installToken, isTokenInstalled, removeToken, getNumOfModes, sendFuseCmd, getVersion, getExpiryDate, getId, getRequestMsg, makeTokenReq, commandForEss, getServerTime, recoveryItl, makeItlReq, getToken, getTuc, setPriorityTime, getPriorityTime, getLastTokenStatus, getStringModes, getModesbit, getTokenInfoForJanus.

**Интерпретация:** library явно содержит generated AIDL NDK interface/proxy/stub glue. Один этот факт не указывает, где находится реальная policy/business implementation; конкретный dispatch path нужно подтверждать анализом HAL executable и его call graph.

## 4. SHA-256 on-device — шесть библиотек

Hashes were captured by owner from the live /vendor/lib64 files with sha256sum:

| File | Size (bytes) | SHA-256 |
|---|---:|---|
| libengmode_tlc.so | 15344 | b2912490aabd2f21fad06734c395ad9e45cfdd770613ba4adb7372f77431cfb1 |
| libengmode15.so | 120704 | 9002b9140a64ae303f714f9468ed7473c23c1e64616b187dd1c43bc048dadffe |
| libengmode2lite.so | 258368 | bebbd993147906a6bf1057a8cd6150400bf31a01eaa5f9009ff6d80b4ee2b3d6 |
| vendor.samsung.hardware.security.engmode-V1-ndk.so | 63160 | 75e212847b352fd4afdb8c2feecb85a85f7b72b04caeb7afa8ad75e42def6e05 |
| libengmode_client.so | 31776 | 02a531101e95d0fafad09306788c0a2a2c632790168b2db864ef1aecc6c7e2e0 |
| libengmode_server.so | 99880 | ce58fa14943b2b34d27e8cd8bfd0ccab68f2672dad5f2e9f6f8058286536a8a2 |

These are live device hashes. The repository's stored binary copies were not rehashed in this operation, so no equality/inequality conclusion between live and repository binary content is made yet. Previous size equality remains only size-level correlation.

## 5. What has been proved vs what remains open

### Confirmed by current output

- VINTF declares AIDL EngMode HAL v1.
- Separate init services exist for engmode_hal and emservice.
- libengmode_server directly depends on libengmode_tlc and libengmode2lite.
- libengmode_tlc depends on libteecl and contains TEEC API names.
- libengmode15 has ESS/token/STEADY/RIL-related symbols and strings.
- libengmode2lite contains token/certificate/signature/session parsing-related strings.
- Vendor AIDL library contains Bp/Bn interface glue symbols.
- Six live library SHA-256 values are recorded above.

### Not established

- Whether HAL and emservice call each other directly, and if so through which method.
- The exact mapping of each Binder transaction to server-side implementation methods.
- TLC TA UUID, command IDs, and secure-world handler behavior.
- Whether token request functions have a reachable end-user OEM-unlock path on this firmware.
- Whether a Samsung-signed token exists or can be issued to this handset.
- Whether the specific policy mode set includes OEM Unlock.
- Any successful ESS token request or install during the captured runtime window.

## 6. Read-only continuation

The planned defined-vs-undefined symbol classification and service-executable DT_NEEDED inspection were completed in the 14 November follow-up; see section 7. The remaining static gaps are the exact AIDL-to-classic-Binder bridge semantics, complete transaction-to-handler mapping, and secure-world TA contract. Do not invoke Binder/ESS methods as a substitute for static analysis. Do not write to STEADY, RPMB, recovery, vbmeta or bootloader partitions.

No state-changing calls or storage writes were performed during the collection recorded here.


## 7. On-device ELF symbol ownership and cross-library linkage — 2026-11-14

The owner supplied `readelf -d` and filtered `readelf -Ws` output from eight live files. In the symbol table, `Ndx=UND` denotes an imported symbol; a numeric section index denotes a definition in that ELF.

### 7.1 Legacy Binder service: a linked server implementation

- `/vendor/bin/emservice` has DT_NEEDED on `libengmode_server.so`.
- Its symbol table imports `android::EngineeringModeHandler::instantiate()` as `UND`.
- `libengmode_server.so` defines that exact `EngineeringModeHandler::instantiate()` symbol, as well as `EngineeringModeHandler::onTransact()` (4156 bytes), constructor/destructor symbols and `EngineeringModeWorld::emProcess()`.
- `libengmode_server.so` defines `EngineeringModeWorld::emSyncUpCore()`, and its own STEADY accessors `em_read_to_steady(int, unsigned char*, unsigned int)` and `em_write_to_steady(int, unsigned char*, unsigned int)`.
- `libengmode_server.so` imports `em_tlc_send` (`UND`); `libengmode_tlc.so` defines `em_tlc_send` (840 bytes).

This yields a symbol-linked native path: `emservice → libengmode_server.so → libengmode_tlc.so`. It is stronger than a same-domain/string correlation: the executable imports the handler factory supplied by the server library, and the server imports the TLC function supplied by the TLC library. The server library also declares direct DT_NEEDED dependencies on `libengmode2lite.so`, `libstork_shared.so`, `libsecril-client.so` and `librtts_client.so`.

### 7.2 TLC-to-TEE API boundary

`libengmode_tlc.so` defines `em_tlc_send` and imports the following from `libteecl.so`:

- `TEEC_InitializeContext`
- `TEEC_OpenSession`
- `TEEC_InvokeCommand`
- `TEEC_AllocateSharedMemory`
- `TEEC_ReleaseSharedMemory`
- `TEEC_CloseSession`
- `TEEC_FinalizeContext`

The linked path therefore reaches a concrete TEE Client API transport implementation. This still does **not** reveal the target Trusted Application UUID, command identifiers, payload layout, access policy, or secure-world decision logic.

### 7.3 Separate AIDL NDK service front end

`/vendor/bin/vendor.samsung.hardware.security.engmode-service` directly depends on both `vendor.samsung.hardware.security.engmode-V1-ndk.so` and `libengmode_client.so`, as well as `libbinder.so` and `libbinder_ndk.so`.

The executable imports `BnSehEngmode` construction/destruction and interface metadata symbols from the AIDL NDK glue library. The vendor NDK library defines `BpSehEngmode` proxy methods and `BnSehEngmode`/interface symbols. The visible proxy method surface includes token/status/mode/time operations and methods such as `makeTokenReq`, `installToken`, `removeToken`, `commandForEss`, `recoveryItl` and `sendFuseCmd`.

This confirms that the AIDL executable uses the generated NDK Binder interface layer and separately links the classic Binder client library. It does **not**, by itself, prove which methods the executable forwards to `libengmode_client.so`, identify the classic Binder service name, or establish the exact AIDL-to-`emservice` call path. Keep this front end separate from the proven `emservice → server → TLC` linkage until those caller edges are statically established.

### 7.4 EngMode 1.5 is a separate observed binary component

`libengmode15.so` defines `em_ess_make_token_request`, `em_ess_install_token_v1` and `em_write_to_steady`. It is not listed among the direct DT_NEEDED dependencies of `libengmode_server.so` in the captured output. Do not assume it is called by that library; dynamic loading or use by another component remains possible but unproven.

### 7.5 Confirmed versus unresolved

**Confirmed by this symbol/dependency intake:**

- `emservice` imports the handler factory defined by `libengmode_server.so`.
- `libengmode_server.so` imports the `em_tlc_send` function defined by `libengmode_tlc.so`.
- `libengmode_tlc.so` imports the TEEC functions from its TEE Client library dependency.
- The AIDL HAL executable imports Binder NDK stub symbols and has a direct dependency on `libengmode_client.so`.
- `libengmode15.so` exports ESS/token/STEADY functions but is not a direct dependency of the observed server library.

**Still unresolved:**

- The AIDL service's exact forwarding logic into `libengmode_client.so`.
- The classic Binder service lookup name and exact transaction-code-to-handler map.
- Whether and where `libengmode15.so` is loaded or called on this firmware.
- TEE Trusted Application identity and secure-world command semantics.
- Any end-user OEM-unlock authorization or reachable unlock operation.

Only read-only ELF metadata and symbol tables were inspected. No Binder/ESS calls were issued and no device storage or security state was changed.


## 8. AIDL service → legacy EngMode client: direct symbol linkage — 2026-11-14

The owner supplied a fresh read-only `readelf -Ws` capture for `/vendor/bin/vendor.samsung.hardware.security.engmode-service`, `libengmode_client.so` and the AIDL NDK glue library.

### Direct imports from the AIDL service executable

The AIDL service executable imports the following `android::engmodeclient` symbols (all shown with `Ndx=UND` in the executable):

- constructor/destructor: `engmodeclient::engmodeclient()`, `engmodeclient::~engmodeclient()`
- server/status: `getServer()`, `getStatus(...)`
- token/request: `getTokenInfoForJanus()`, `getToken()`, `makeTokenReq(...)`, `getRequestMsg(...)`, `installToken(...)`, `isTokenInstalled()`, `removeToken()`, `getLastTokenStatus()`, `getID()`, `getExpiryDate()`
- modes: `getModesbit()`, `getStringModes()`, `getNumOfModes()`
- ESS/ITL: `commandForESS(...)`, `makeITLReq(...)`, `recoveryITL(...)`
- time and metadata: `getServerTime()`, `getPriorityTime()`, `setPriorityTime(...)`, `getTUC(...)`, `getVersion()`
- other: `getBytes(...)`, `sendFuseCmd()`

The same mangled names are defined (numeric section index, not `UND`) in `libengmode_client.so`. The AIDL service executable also has a direct DT_NEEDED dependency on that library. This is direct ELF evidence that the AIDL service uses the legacy EngMode client API; it is no longer merely a same-subsystem inference.

### Relationship to the generated AIDL interface library

The service executable separately imports `BnSehEngmode` constructor/destructor and interface metadata symbols from `vendor.samsung.hardware.security.engmode-V1-ndk.so`. That library provides the generated AIDL NDK proxy/stub/interface implementation.

Taken together, these imports support the architecture:

`AIDL NDK Binder service front end → android::engmodeclient API → legacy EngMode Binder client path`

The exact per-method forwarding sequence and any additional checks in the AIDL service implementation have **not** yet been recovered. Symbol imports show that the executable references these client methods, but do not by themselves prove that every imported method is reachable from an external AIDL transaction or that it was invoked at runtime.

### Relocation output caveat

The owner's filtered `readelf -rW` output contained no matching symbol names. This does not cancel the dynamic-symbol evidence above: the imports are present in the executable's symbol table and resolve against its direct client-library dependency. The precise relocation/call-site map remains an open static-analysis task.

### Updated architecture graph

The evidence now supports two connected levels without collapsing the older server path into the AIDL front end:

```text
AIDL client
  → ISehEngmode / BnSehEngmode service implementation
      → android::engmodeclient methods
          → legacy EngMode Binder client path
              → emservice
                  → libengmode_server.so
                      → libengmode_tlc.so
                          → libteecl / TEEC API
```

The AIDL-to-client edge is now directly supported by imports. The client-to-`emservice` service lookup and the exact Binder transaction mapping still require confirmation; therefore the full end-to-end path is a working architecture model, not yet a completely demonstrated runtime call trace.

No Binder/ESS methods were invoked. No token operation, STEADY/RPMB write, or bootloader state change was performed.


## 9. AIDL executable ELF layout and disassembler availability — 2026-11-14

Owner supplied section and dynamic-linking metadata for `/vendor/bin/vendor.samsung.hardware.security.engmode-service`.

### Observed layout

- `.text`: address `0x3000`, size `0x3054`.
- `.plt`: address `0x6060`, size `0x3f0`.
- `.rela.plt`: address `0x1940`, size `1464` bytes.
- `.dynsym`: size `0x708`; `.dynstr`: size `0xd64`.
- `.got`: address `0x7418`, size `0x20`; `.got.plt`: address `0x7438`, size `0x200`.
- Dynamic flags include `BIND_NOW` and `NOW PIE`.

For this ELF64/AArch64 file, a standard RELA record is 24 bytes; the `.rela.plt` size therefore corresponds to 61 PLT relocation records. This is a count of imported PLT entries, not a count of EngMode calls or runtime invocations.

### Symbol-table limitation

The filtered section listing showed `.dynsym` / `.dynstr` but no `.symtab` / `.strtab`. The dynamic-symbol view reports only four locally defined dynamic functions in the executable (three weak support functions and a vector helper), while the EngMode methods remain undefined imports resolved from `libengmode_client.so`. The executable is therefore stripped of its ordinary full static symbol table in the captured file; internal AIDL handler function names are not directly available from this symbol listing.

### Disassembler availability

The owner checked common executable names (`llvm-objdump`, versioned llvm-objdump, and `objdump`); none was present in the current Termux PATH. Therefore no machine-code disassembly or call-site mapping was produced by this capture.

### Next bounded static step

Use the available `readelf -rW` to preserve the complete relocation-to-dynamic-symbol mapping, then optionally install a Termux package that supplies LLVM/binutils disassembly tools and disassemble only this executable. The official Termux `libllvm` subpackage manifest includes `objdump`, `llvm-objdump`, and Android-target-prefixed objdump binaries; package installation is optional and must be initiated by the device owner. Do not call any Binder/ESS method.

No runtime behavior was tested and no device state or storage was changed.


## 10. AIDL executable: PLT ↔ JUMP_SLOT mapping — 2026-11-14

The owner installed Termux LLVM 21.1.8. Direct access to the vendor executable from the unprivileged Termux shell returned Permission denied; rerunning LLVM under su -c produced the relocation, PLT and full-disassembly files. Captured files: ~/a26_engmode/relocations.txt (66 lines), ~/a26_engmode/plt.txt (380 lines), and ~/a26_engmode/disassembly.txt (3459 lines).

The relocation dump and .plt disassembly agree. In each PLT stub, the ldr x17, [x16, #offset] access resolves into .got.plt; its effective address matches the corresponding R_AARCH64_JUMP_SLOT relocation. This provides a concrete PLT-stub-to-dynamic-relocation map.

| EngMode client method | PLT stub | JUMP_SLOT / GOT.PLT |
|---|---:|---:|
| engmodeclient() | 0x6140 | 0x74b0 |
| getServer() | 0x6150 | 0x74b8 |
| getTokenInfoForJanus() | 0x6160 | 0x74c0 |
| getBytes() | 0x6180 | 0x74d0 |
| ~engmodeclient() | 0x6190 | 0x74d8 |
| getModesbit() | 0x61e0 | 0x7500 |
| getStringModes() | 0x61f0 | 0x7508 |
| getLastTokenStatus() | 0x6200 | 0x7510 |
| getPriorityTime() | 0x6210 | 0x7518 |
| setPriorityTime() | 0x6220 | 0x7520 |
| getTUC() | 0x6230 | 0x7528 |
| getToken() | 0x6240 | 0x7530 |
| makeITLReq() | 0x6250 | 0x7538 |
| recoveryITL() | 0x6260 | 0x7540 |
| commandForESS() | 0x6270 | 0x7548 |
| getServerTime() | 0x6280 | 0x7550 |
| makeTokenReq() | 0x6290 | 0x7558 |
| getRequestMsg() | 0x62a0 | 0x7560 |
| getID() | 0x62b0 | 0x7568 |
| getExpiryDate() | 0x62c0 | 0x7570 |
| removeToken() | 0x62d0 | 0x7578 |
| getNumOfModes() | 0x62e0 | 0x7580 |
| sendFuseCmd() | 0x62f0 | 0x7588 |
| getVersion() | 0x6300 | 0x7590 |
| isTokenInstalled() | 0x6310 | 0x7598 |
| installToken() | 0x6320 | 0x75a0 |
| getStatus() | 0x6330 | 0x75a8 |

The AIDL NDK BnSehEngmode constructor and destructor also have PLT entries (0x60d0 and 0x6120 respectively), with JUMP_SLOT addresses 0x7478 and 0x74a0.

### Evidence boundary

This mapping proves that the imported methods have PLT stubs and dynamic-linker slots in the executable. It does not yet prove which BL instructions in .text target each stub, whether the corresponding code path is reachable through an AIDL transaction, or whether the methods execute at runtime. The next step is to extract BL references from the saved full disassembly and inspect their containing-function context.

The earlier note saying LLVM was unavailable is superseded: LLVM 21.1.8 is now installed. Root access is required to read this vendor executable from Termux. All operations so far remain static/read-only; no Binder/ESS methods or token operations were invoked and no device state was changed.


## 11. AIDL executable: direct EngMode BL call sites — 2026-11-14

The owner provided grep output from the saved full disassembly (LLVM 21.1.8, AArch64) showing direct BL instructions targeting the previously mapped EngMode PLT stubs. This advances the evidence from imported symbols and PLT availability to actual call references in the executable's .text.

All 23 application-level android::engmodeclient methods in the relocation inventory have at least one direct BL call site in the AIDL service executable. The four shared lifecycle/data helpers (engmodeclient() constructor, getServer(), getBytes(), destructor) are also called repeatedly around these method-specific calls. Thus all 27 imported EngMode client symbols in the captured list have corresponding call references in .text.

| EngMode client method | Direct BL instruction address | PLT target |
|---|---:|---:|
| getTokenInfoForJanus | 0x32c8 | 0x6160 |
| getModesbit | 0x34d8 | 0x61e0 |
| getStringModes | 0x36e8 | 0x61f0 |
| getLastTokenStatus | 0x38f8 | 0x6200 |
| getPriorityTime | 0x3b08 | 0x6210 |
| setPriorityTime | 0x3d2c | 0x6220 |
| getTUC | 0x3f24 | 0x6230 |
| getToken | 0x403c | 0x6240 |
| makeITLReq | 0x4274 | 0x6250 |
| recoveryITL | 0x4480 | 0x6260 |
| commandForESS | 0x45b8 | 0x6270 |
| getServerTime | 0x47c8 | 0x6280 |
| makeTokenReq | 0x4a24 | 0x6290 |
| getRequestMsg | 0x4c98 | 0x62a0 |
| getID | 0x4eb8 | 0x62b0 |
| getExpiryDate | 0x50c8 | 0x62c0 |
| removeToken | 0x52bc | 0x62d0 |
| getNumOfModes | 0x53ac | 0x62e0 |
| sendFuseCmd | 0x549c | 0x62f0 |
| getVersion | 0x558c | 0x6300 |
| isTokenInstalled | 0x567c | 0x6310 |
| installToken | 0x5780 | 0x6320 |
| getStatus | 0x58b4 | 0x6330 |

Examples of the common helper calls are visible in the same disassembly blocks: constructor/getServer at 0x32ac/0x32bc, 0x34bc/0x34cc, etc.; getBytes at 0x32f0 and subsequent wrappers; destructor at 0x3394 and subsequent wrappers.

### What this establishes — and what it does not

- Established: the AIDL executable's .text contains direct call instructions to all 23 application-level EngMode client methods from the imported API list. These are not merely unused dynamic imports.
- Strong structural indication: the repeated constructor → getServer → one method-specific call → getBytes → destructor pattern is consistent with per-method AIDL adapter/wrapper routines.
- Not yet established: exact AIDL transaction-code-to-wrapper mapping, full function boundaries, runtime reachability, caller identity/permission checks, and successful execution of any method.
- The semantics of getBytes and the exact guards/error paths must be confirmed from the instructions and register/data-flow context; do not infer them only from the method name.

Next static step: inspect bounded disassembly windows around the high-value methods (especially getModesbit, commandForESS, makeTokenReq, installToken, sendFuseCmd and getStatus), then trace branch conditions, argument setup, return handling and adjacent strings. No Binder/ESS method was invoked; no token operation or device-state change occurred.


## 12. AIDL wrapper control flow: read-only EngMode queries — 2026-11-14

The owner supplied bounded AArch64 disassembly for the wrappers containing getModesbit, getLastTokenStatus and getStatus. The observed control flow supports the following limited conclusions.

### getModesbit wrapper (call at 0x34d8)

- A client object is allocated, its constructor is called, and getServer() is invoked.
- The return value from getServer() is tested with TBNZ on bit 31. A set sign bit takes the error/logging path.
- On a nonnegative getServer() result, getModesbit() is called; its return value is checked with the same sign-bit test.
- A 51,200-byte buffer is requested using calloc(0xC800, 1) (AArch64 arguments x0=0xC800, x1=1; the allocation size is the product).
- getBytes(client, buffer, &length) is then called. Here the wrapper treats a zero return as success (CBZ); nonzero enters a logged failure path.
- Allocation failure and getBytes failure both lead to the visible sentinel 0xF0000000 (-268435456) being stored in the wrapper's result slot.
- On the successful getBytes path, the wrapper proceeds into buffer/vector handling beginning at 0x35EC; the full continuation should be captured before describing the final payload transformation.

### getLastTokenStatus wrapper (call at 0x38F8)

The supplied block shows the same broad structure: construct client, getServer(), sign-bit check, call getLastTokenStatus(), sign-bit check, allocate a 0xC800-byte buffer, call getBytes(), and branch on zero/nonzero. The visible error fallback again stores 0xF0000000 for the allocation/getBytes failure path. Method-level errors are logged and copied to an output integer slot.

### getStatus wrapper (call at 0x58B4)

- getServer() is called first; a set sign bit in its return value selects the error/logging path.
- Otherwise the wrapper prepares the arguments for getStatus() from a caller-provided structure.
- It loads pointer/length-like values from offsets 0x00/0x08 and 0x18/0x20, computes two differences for length arguments, loads two additional 32-bit values at offset 0x30, and places the final scalar argument on the stack.
- The getStatus() return is tested by sign bit. Negative values are logged; the returned integer is later written to the result slot.
- Unlike the two byte-return wrappers above, this shown path does not call getBytes().

The exact semantic types and meaning of the caller-provided structure fields must not be inferred from offsets alone; they require the AIDL parcel/type definition or further data-flow analysis.

### Binder status versus EngMode operation result

In all three supplied snippets, the wrapper reaches AStatus_newOk() on the common completion path, while the EngMode result/error is carried separately in an output value or payload. Therefore a successful Binder transport/status object does not imply that the underlying EngMode operation succeeded. This is a key distinction for any later runtime interpretation.

### Evidence boundaries

These are static control-flow observations from three wrapper regions, not proof of runtime invocation. Exact permission/caller checks, Binder transaction-code mapping and final output serialization are still open. The getBytes() return convention is established only for these call sites: zero is treated as success; nonzero as failure. Do not generalize beyond observed wrappers until its implementation is inspected.

No Binder/ESS method was invoked, no token operation was attempted, and no device state was changed.
