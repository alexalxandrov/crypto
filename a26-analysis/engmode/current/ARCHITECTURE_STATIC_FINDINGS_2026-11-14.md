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
