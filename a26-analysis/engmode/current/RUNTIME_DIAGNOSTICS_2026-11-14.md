# A26 Engineering Mode runtime intake — 2026-11-14

## Provenance

User-facing summary: [a26/A26_ENGMODE_ESS_RUNTIME_2026-11-14_RU.md](../../../a26/A26_ENGMODE_ESS_RUNTIME_2026-11-14_RU.md).

Source: owner-provided Termux output from the handset on 2026-11-14. Target in the current A26 dossier: SM-A266B, firmware A266BXXUCDZJ6. Collection was read-only. This file records what was shown; it does not claim that all possible runtime states or log buffers were captured.

## 1. Init service state

Exact observed properties:

- engmode_hal: running
- emservice: running
- tz_service: running
- tzts_service: running
- proca: running

## 2. Process table and SELinux labels

Exact observed entries:

| Process | SELinux context |
|---|---|
| tzdaemon | u:r:tzdaemon:s0 |
| tzts_daemon | u:r:tztsd:s0 |
| vendor.samsung.hardware.security.engmode-service | u:r:hal_engmode_default:s0 |
| vendor.samsung.hardware.security.proca@2.0-service | u:r:hal_proca_default:s0 |
| emservice | u:r:emservice:s0 |

All shown processes ran as system.

## 3. On-device binary metadata

Observed executable metadata:

| Path | Bytes | SELinux executable label |
|---|---:|---|
| /vendor/bin/emservice | 11000 | u:object_r:emservice_exec:s0 |
| /vendor/bin/vendor.samsung.hardware.security.engmode-service | 33504 | u:object_r:hal_engmode_default_exec:s0 |

Observed /vendor/lib64 inventory:

| File | Bytes |
|---|---:|
| libengmode15.so | 120704 |
| libengmode2lite.so | 258368 |
| libengmode_client.so | 31776 |
| libengmode_server.so | 99880 |
| libengmode_tlc.so | 15344 |
| vendor.samsung.hardware.security.engmode-V1-ndk.so | 63160 |

Matching stored artifact locations and byte counts:

| On-device path | Repository path | Bytes |
|---|---|---:|
| /vendor/bin/emservice | a26-analysis/engmode/current/vendor/bin/emservice | 11000 |
| /vendor/bin/vendor.samsung.hardware.security.engmode-service | a26-analysis/engmode/current/vendor/bin/vendor.samsung.hardware.security.engmode-service | 33504 |
| /vendor/lib64/libengmode15.so | a26-analysis/engmode/current/vendor/lib64/libengmode15.so | 120704 |
| /vendor/lib64/libengmode2lite.so | a26-analysis/engmode/current/vendor/lib64/libengmode2lite.so | 258368 |
| /vendor/lib64/libengmode_client.so | a26-analysis/engmode/current/vendor/lib64/libengmode_client.so | 31776 |
| /vendor/lib64/libengmode_server.so | a26-analysis/engmode/current/vendor/lib64/libengmode_server.so | 99880 |
| /vendor/lib64/libengmode_tlc.so | a26-analysis/engmode/current/vendor/lib64/libengmode_tlc.so | 15344 |
| /vendor/lib64/vendor.samsung.hardware.security.engmode-V1-ndk.so | a26-analysis/engmode/current/vendor/lib64/vendor.samsung.hardware.security.engmode-V1-ndk.so | 63160 |

The repository's separate system-lib64/vendor.samsung.hardware.security.engmode-V1-ndk.so is 85488 bytes. Do not conflate it with the 63160-byte vendor-partition copy.

Size equality does not establish byte-for-byte identity. No on-device cryptographic hashes were provided in this intake.

## 4. Client library strings: libengmode_client.so

The owner-provided strings output included the following mangled names:

- _ZN7android13engmodeclient9getServerEv
- _ZN7android13engmodeclient9getStatusEiPKhjS2_jiii
- _ZN7android13engmodeclient12installTokenEjPKh
- _ZN7android13engmodeclient16isTokenInstalledEv
- _ZN7android13engmodeclient11removeTokenEv
- _ZN7android13engmodeclient13getNumOfModesEv
- _ZN7android13engmodeclient11sendFuseCmdEv
- _ZN7android13engmodeclient10getVersionEv
- _ZN7android13engmodeclient13getExpiryDateEv
- _ZN7android13engmodeclient5getIDEv
- _ZN7android13engmodeclient13getRequestMsgEPKcS2_PKhji
- _ZN7android13engmodeclient12makeTokenReqEPKcS2_PKhjS2_
- _ZN7android13engmodeclient13commandForESSEiPKc
- _ZN7android13engmodeclient13getServerTimeEv
- _ZN7android13engmodeclient11recoveryITLEPKhj
- _ZN7android13engmodeclient10makeITLReqEPKcS2_
- _ZN7android13engmodeclient8getTokenEv
- _ZN7android13engmodeclient6getTUCEi
- _ZN7android13engmodeclient15setPriorityTimeEPKc
- _ZN7android13engmodeclient15getPriorityTimeEv
- _ZN7android13engmodeclient18getLastTokenStatusEv
- _ZN7android13engmodeclient14getStringModesEv
- _ZN7android13engmodeclient11getModesbitEv
- _ZN7android13engmodeclient20getTokenInfoForJanusEv
- _ZN7android13engmodeclient8getBytesEPhPi

Relevant plain strings/errors:

- Failed to get token request message(0x%08x)
- getModesbit() error : %d
- Failed to read reply data(%d)
- Failed to get string modes(0x%08x)
- installToken() error : %d
- Failed to proceed command(0x%08x)
- makeTokenReq() error : %d
- Failed to token infor for janus(0x%08x)
- Failed to get token information(0x%08x)
- getRequestMsg() error : %d
- Failed to get server time(0x%08x)
- Failed to proceed cmd(0x%08x), ret(0x%08x)
- EM token length is invalid(%d/%d)
- Failed to get last token status(0x%08x)
- sendFuseCmd() error : %d
- makeITLReq() error : %d
- getStringModes error(0x%08x)
- getToken() error : %d
- Failed to get spriority response(0x%08x)
- fopen error
- Failed to get expirty date(0x%08x)
- Failed to get coomand response(0x%08x)
- getServerTime() error : %d
- setPriorityTime() error : %d
- Failed to get binder service(0x%08x)
- Server not published, waiting...
- Failed to proceed command or Timeout
- getStatus() transact error : %d
- recoveryITL() error : %d
- commandForESS() error : %d
- Failed to get token(0x%08x)
- isTokenInstalled() error : %d
- removeToken() error : %d
- getExpiryDate() error : %d
- getLastTokenStatus() error : %d
- getTUC() error : %d
- getID() error : %d
- Failed to get modes bit(0x%08x)
- getNumOfModes() error : %d

## 5. Server library strings: libengmode_server.so

Notable classes and method names present in the owner-provided output:

- EngineeringModeHandler
- EngineeringModeLegacy
- EngineeringModeWorld
- EngineeringModeLegacy::emIsTokenInstalled
- EngineeringModeLegacy::emTokenInstall
- EngineeringModeLegacy::emGetTokenRequest
- EngineeringModeLegacy::emGetId
- EngineeringModeLegacy::emGetExpiryDate
- EngineeringModeLegacy::emGetStatus
- EngineeringModeLegacy::emRemoveToken
- EngineeringModeLegacy::emGetRecoveryRequest
- EngineeringModeLegacy::emRecoveryData
- EngineeringModeLegacy::emGetLastTokenStatus
- EngineeringModeLegacy::emEssCommand
- EngineeringModeLegacy::emGetToken
- EngineeringModeLegacy::emGetTuc
- EngineeringModeLegacy::emGetModes
- EngineeringModeLegacy::emGetModesBit
- EngineeringModeLegacy::emGetTimeRequest
- EngineeringModeLegacy::emVerifyTime
- EngineeringModeWorld::emProcess
- EngineeringModeWorld::doInitCore
- EngineeringModeWorld::emInit
- EngineeringModeWorld::createTokenCache
- EngineeringModeWorld::readDid
- EngineeringModeWorld::preparePayload
- EngineeringModeWorld::clearPayload
- EngineeringModeWorld::emSyncUpCore
- EngineeringModeWorld::readToken
- EngineeringModeWorld::writeToken
- EngineeringModeWorld::writeLastTokenStatus
- EngineeringModeWorld::readIIN
- EngineeringModeWorld::readPriorityTime
- EngineeringModeWorld::writePriorityTime
- EngineeringModeWorld::emIsTokenInstalled
- EngineeringModeWorld::emTokenInstall
- EngineeringModeWorld::updateTokenCache
- EngineeringModeWorld::emGetTokenRequest
- EngineeringModeWorld::emGetId
- EngineeringModeWorld::emGetExpiryDate
- EngineeringModeWorld::emGetStatus
- EngineeringModeWorld::emRemoveToken
- EngineeringModeWorld::deleteTokenCache
- EngineeringModeWorld::emGetRecoveryRequest
- EngineeringModeWorld::emRecoveryData
- EngineeringModeWorld::emGetLastTokenStatus
- EngineeringModeWorld::emEssCommand
- EngineeringModeWorld::emGetToken
- EngineeringModeWorld::emGetTuc
- EngineeringModeWorld::emGetModes
- EngineeringModeWorld::emGetModesBit
- EngineeringModeWorld::emGetTimeRequest
- EngineeringModeWorld::emVerifyTime

Additional storage-related names and diagnostics:

- em_read_to_steady
- em_write_to_steady
- read_from_steady
- write_to_steady
- Failed to write steady
- Failed to write token
- Failed to write steady for token
- Failed to clear esi
- Failed to init core
- Failed to create token cache
- Your request(get token) is not supported
- Your request(recovery request) is not supported
- There is no registered real time token
- Sent request message

These are string/symbol hits in the binary. They demonstrate code structure and diagnostic vocabulary, not successful runtime operations, user authorization, or a reachable OEM-unlock path.

## 6. Android service registration and init references

Observed in the earlier live checks:

- vendor.samsung.hardware.security.engmode.ISehEngmode/default was found by Binder service lookup.
- vendor.TEEGRIS.loaded=true and vendor.tzdaemon=Ready.
- /vendor/etc/vintf/manifest/vendor.samsung.hardware.security.engmode-manifest.xml appeared in the on-device manifest search.
- /vendor/etc/init/emservice.rc and /vendor/etc/init/vendor.samsung.hardware.security.engmode-service.rc appeared in the init-file search.
- pm list packages -f search for engmode/engineering returned no APK entries. This is compatible with the native HAL/service layout.

The exact init-file contents were not re-dumped in the latest owner message; consult tracked copies under init/ rather than silently treating repository files as a new live observation.

## 7. Log filtering results and caveats

The first broad filter produced unrelated Android activity because the expression included a bare ESS substring. This matches ordinary words containing ess (for example process) and was not a reliable ESS-only filter.

A later narrower query over the last 3000 logcat lines returned no lines for:

engmode, ISehEngmode, em_token, EM_CMD_TOKEN, PO_OEM_UNLOCK, bootloader_unlock, STEADY, tzdaemon, rpmb_set_lock_state, avc: denied.

Therefore: no matches in that finite selected log window. It does not show that no ESS request has ever happened, and it does not establish a fault or absence of support.

A similarly filtered dmesg excerpt was empty. No conclusion about the complete kernel log follows.

## 8. OEMLockService data retained from previous read-only probe

Exact output:

- 3 carrier allowed: true
- 5 user allowed: true
- 6 overall allowed: true
- 7 device OEM unlocked: false

Related boot properties already recorded in the A26 dossier:

- ro.boot.flash.locked=1
- ro.boot.vbmeta.device_state=locked
- ro.boot.verifiedbootstate=green
- ro.boot.other.locked=1
- ro.oem_unlock_supported=1

Interpretation: carrier/user/overall allowed = true; actual device OEM-unlocked = false. The oem_unlock_supported property is not itself a report that the device has been unlocked.

## 9. Current evidence status

**Confirmed:**
- The five relevant services report running.
- Five service processes and their SELinux labels were observed.
- Vendor binary paths and byte sizes were observed.
- Repository vendor artifacts match the live files' byte sizes.
- Client/server libraries contain token/ESS/STEADY-related symbols and strings.
- The AIDL endpoint and VINTF manifest are present.
- OEMLockService reported the device as not OEM-unlocked.

**Not established:**
- A real request was sent during the captured log window.
- A valid Samsung-signed token exists or can be issued for this device/build.
- The service accepts a user-originated OEM-unlock request.
- A token is installed or its mode bitmap grants OEM Unlock.
- The runtime path that would synchronize the SBoot lock state is reachable on this device.
- Any supported end-user unlock procedure.

## 10. Safety boundary / non-actions

No makeTokenReq, installToken, commandForESS, removeToken, sendFuseCmd, recoveryITL, or other Binder/ESS state-changing call was issued during this intake. No token was forged or modified. No write was made to STEADY, RPMB, recovery, vbmeta, MISC, or any other partition.

Further work in this folder should start with static inspection of already extracted binaries and their call graphs. Do not infer that an operation is safe merely because a corresponding client symbol exists.


## 11. ELF dependency and TEE interface results — 2026-11-14

Owner ran readelf -d, readelf --dyn-syms and strings against six live /vendor/lib64 libraries and recorded SHA-256 values.

### Direct dependency findings

- libengmode_tlc.so depends on libteecl.so and includes TEEC_InitializeContext, TEEC_OpenSession, TEEC_InvokeCommand, TEEC_AllocateSharedMemory, TEEC_ReleaseSharedMemory, TEEC_CloseSession, TEEC_FinalizeContext, em_tlc_send_teegris and em_tlc_teegris_clear.
- libengmode_server.so depends on libengmode_tlc.so, libengmode2lite.so, libstork_shared.so, libsecril-client.so and librtts_client.so, as well as classic libbinder.so.
- libengmode15.so depends on libcrypto.so and libstork_shared.so. Strings reference ESS request/token operations, STEADY read/write functions, and dynamic RIL/OEM request-hook loading.
- libengmode2lite.so has only the listed NEEDED dependencies liblog.so, libc.so, libm.so and libdl.so. Its strings reference token parsing, certificate/signature checks, nonce/session-key handling, mode database parsing and ESI metadata.
- libengmode_client.so depends on classic libbinder.so.
- vendor.samsung.hardware.security.engmode-V1-ndk.so (vendor copy) depends on libbinder_ndk.so and exposes generated AIDL BpSehEngmode/BnSehEngmode/ISehEngmodeDefault symbols.

These facts support distinct interfaces: AIDL NDK glue, a classic Binder client/server surface, ESS protocol libraries, RIL integration, and TLC-to-TEE transport. Exact direct call order between HAL and emservice is not yet established.

### Live on-device hashes

| Library | Size | SHA-256 |
|---|---:|---|
| libengmode_tlc.so | 15344 | b2912490aabd2f21fad06734c395ad9e45cfdd770613ba4adb7372f77431cfb1 |
| libengmode15.so | 120704 | 9002b9140a64ae303f714f9468ed7473c23c1e64616b187dd1c43bc048dadffe |
| libengmode2lite.so | 258368 | bebbd993147906a6bf1057a8cd6150400bf31a01eaa5f9009ff6d80b4ee2b3d6 |
| vendor.samsung.hardware.security.engmode-V1-ndk.so | 63160 | 75e212847b352fd4afdb8c2feecb85a85f7b72b04caeb7afa8ad75e42def6e05 |
| libengmode_client.so | 31776 | 02a531101e95d0fafad09306788c0a2a2c632790168b2db864ef1aecc6c7e2e0 |
| libengmode_server.so | 99880 | ce58fa14943b2b34d27e8cd8bfd0ccab68f2672dad5f2e9f6f8058286536a8a2 |

Important: hashes are from the live device. The binary copies in the repository were not rehashed in this operation, so no binary identity claim is made from the hashes yet.

Detailed architecture interpretation: ARCHITECTURE_STATIC_FINDINGS_2026-11-14.md in this directory.


## 12. Service ELF symbol ownership and proven linkage — 2026-11-14

Owner supplied a fresh read-only `readelf -d` / `readelf -Ws` capture for both service executables and six libraries. For symbol tables, `UND` means imported; a numeric section index means defined in that ELF.

### Service executables

- `/vendor/bin/vendor.samsung.hardware.security.engmode-service` DT_NEEDED: `vendor.samsung.hardware.security.engmode-V1-ndk.so`, `libengmode_client.so`, `libbinder.so`, `libbinder_ndk.so`, plus standard platform libraries.
- It imports the AIDL `BnSehEngmode` constructor/destructor and `ISehEngmode` descriptor/metadata symbols from the generated vendor NDK library.
- `/vendor/bin/emservice` DT_NEEDED includes `libengmode_server.so`; it imports `android::EngineeringModeHandler::instantiate()`, which is defined in that server library.

### Server → TLC linkage

- `libengmode_server.so` defines `EngineeringModeHandler::onTransact()`, `EngineeringModeHandler::instantiate()`, `EngineeringModeWorld::emProcess()`, `EngineeringModeWorld::emSyncUpCore()`, and its STEADY read/write accessors.
- The server library imports `em_tlc_send`; `libengmode_tlc.so` defines that function.
- TLC imports TEEC context/session/shared-memory/command functions from `libteecl.so`.

The ELF linkage confirms `emservice → libengmode_server.so → libengmode_tlc.so → libteecl/TEEC API` as a linked native dependency/function path. It does not reveal Trusted Application UUID, command IDs, payload semantics or secure-world policy.

### AIDL front end remains a separate branch

The AIDL service executable uses the generated NDK Binder glue and also directly links `libengmode_client.so`, which itself depends on classic `libbinder.so`. The exact forwarding call path from individual AIDL methods to the classic Binder client is not yet proven. The NDK proxy methods are interface stubs, not evidence that any token operation was invoked.

### Separate EngMode 1.5 component

`libengmode15.so` defines `em_ess_make_token_request`, `em_ess_install_token_v1` and `em_write_to_steady`. It does not appear in the captured direct DT_NEEDED list for `libengmode_server.so`; no direct caller relationship is claimed.

No Binder or ESS methods were called. No STEADY/RPMB/recovery/vbmeta/bootloader writes were performed.


## 13. AIDL service imports from libengmode_client — 2026-11-14

Owner-provided `readelf -Ws` output shows that `/vendor/bin/vendor.samsung.hardware.security.engmode-service` imports (Ndx `UND`) a large set of `android::engmodeclient` methods. The same symbols are defined in `/vendor/lib64/libengmode_client.so`, which is also a direct DT_NEEDED dependency of the executable.

Observed imported API groups:

- Lifecycle/server: constructor, destructor, `getServer()`
- Status and identity: `getStatus()`, `getID()`, `getExpiryDate()`, `getVersion()`, `getTUC()`
- Token lifecycle: `makeTokenReq()`, `getRequestMsg()`, `getToken()`, `installToken()`, `isTokenInstalled()`, `removeToken()`, `getLastTokenStatus()`, `getTokenInfoForJanus()`
- Modes: `getModesbit()`, `getStringModes()`, `getNumOfModes()`
- ESS/ITL: `commandForESS()`, `makeITLReq()`, `recoveryITL()`
- Time: `getServerTime()`, `getPriorityTime()`, `setPriorityTime()`
- Other: `sendFuseCmd()`, `getBytes()`

The executable also imports `BnSehEngmode` interface symbols from `vendor.samsung.hardware.security.engmode-V1-ndk.so`. Combined with its direct dependency on `libengmode_client.so`, this confirms that the AIDL service binary links the generated NDK Binder front end and the classic EngMode client API.

This is direct link-time evidence for an AIDL-to-`engmodeclient` adapter layer. The exact per-method forwarding, call-site reachability, client service name and transaction mapping remain unverified. The empty filtered `readelf -rW` result is recorded only as a limitation of this capture; it does not negate the dynamic-symbol imports.

No methods were called; this is static ELF evidence only.


## 14. AIDL service executable: section layout / PLT metadata — 2026-11-14

Owner-provided `readelf -S` and `readelf -d` output for `vendor.samsung.hardware.security.engmode-service`:

- `.text` size: `0x3054` bytes.
- `.plt` size: `0x3f0` bytes.
- `.rela.plt` size: 1464 bytes; for ELF64/AArch64 standard 24-byte RELA records, this is 61 entries.
- `.dynsym` size: `0x708`; `.dynstr` size: `0xd64`.
- `.got` size: `0x20`; `.got.plt` size: `0x200`.
- Dynamic flags: `BIND_NOW`, `NOW PIE`.

The filtered section list showed no `.symtab` or `.strtab`; only a small set of local weak/support definitions was visible in the executable's dynamic symbol table. Internal implementation function names are not available from this symbol view.

No disassembler binary was found in the current Termux PATH. Thus no disassembly/call-site analysis was completed. The 61 PLT relocation records are not 61 EngMode operations; the complete relocation table is needed to classify imports.

Next capture should include the full `readelf -rW` output. If the owner opts to install tools, the official Termux LLVM tool subpackage includes `objdump`, `llvm-objdump` and Android-target-prefixed objdump binaries. This is an optional Termux package install, not a required device change.

No methods were invoked and no device state was modified.


## 15. AIDL executable PLT and relocation map — 2026-11-14

Termux LLVM 21.1.8 is installed. Accessing the vendor executable as the ordinary Termux user returned Permission denied; llvm-objdump was therefore run under su -c. The owner saved ~/a26_engmode/relocations.txt (66 lines), ~/a26_engmode/plt.txt (380 lines), and ~/a26_engmode/disassembly.txt (3459 lines).

The relocation dump identifies R_AARCH64_JUMP_SLOT entries and the PLT dump exposes their corresponding stubs. The PLT stub's GOT.PLT displacement resolves to the exact relocation address.

| API method | PLT | JUMP_SLOT |
|---|---:|---:|
| constructor | 0x6140 | 0x74b0 |
| getServer | 0x6150 | 0x74b8 |
| getTokenInfoForJanus | 0x6160 | 0x74c0 |
| getBytes | 0x6180 | 0x74d0 |
| destructor | 0x6190 | 0x74d8 |
| getModesbit | 0x61e0 | 0x7500 |
| getStringModes | 0x61f0 | 0x7508 |
| getLastTokenStatus | 0x6200 | 0x7510 |
| getPriorityTime | 0x6210 | 0x7518 |
| setPriorityTime | 0x6220 | 0x7520 |
| getTUC | 0x6230 | 0x7528 |
| getToken | 0x6240 | 0x7530 |
| makeITLReq | 0x6250 | 0x7538 |
| recoveryITL | 0x6260 | 0x7540 |
| commandForESS | 0x6270 | 0x7548 |
| getServerTime | 0x6280 | 0x7550 |
| makeTokenReq | 0x6290 | 0x7558 |
| getRequestMsg | 0x62a0 | 0x7560 |
| getID | 0x62b0 | 0x7568 |
| getExpiryDate | 0x62c0 | 0x7570 |
| removeToken | 0x62d0 | 0x7578 |
| getNumOfModes | 0x62e0 | 0x7580 |
| sendFuseCmd | 0x62f0 | 0x7588 |
| getVersion | 0x6300 | 0x7590 |
| isTokenInstalled | 0x6310 | 0x7598 |
| installToken | 0x6320 | 0x75a0 |
| getStatus | 0x6330 | 0x75a8 |

Additional NDK Binder base imports include BnSehEngmode constructor PLT 0x60d0 / JUMP_SLOT 0x7478 and destructor PLT 0x6120 / JUMP_SLOT 0x74a0.

This is a PLT-to-relocation map, not yet a call-site map. It proves imported API slots and stubs exist; .text BL references still need to be extracted before assigning methods to AIDL handler paths. The earlier “objdump unavailable” note is superseded by this successful LLVM capture. No service methods were executed and no device state was changed.


## 16. AIDL executable direct BL references to EngMode API — 2026-11-14

Owner-provided LLVM disassembly grep output shows direct AArch64 BL instructions from .text to all 23 application-level android::engmodeclient methods in the captured import/PLT inventory. The four shared helpers—constructor, getServer, getBytes, destructor—also have repeated call sites. Thus all 27 listed EngMode client imports have at least one direct call reference.

| Method | BL site | PLT |
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

The call-site pattern repeatedly places a constructor and getServer() before the method-specific call, with getBytes() and the client destructor in the same wrapper-like block. This is consistent with AIDL adapter routines, but exact function boundaries and the AIDL transaction-code mapping have not yet been established.

This is static disassembly evidence: it proves call references exist, not that all paths are reachable or have been invoked. The meaning of getBytes() and all guards/error paths must be confirmed from instruction/data-flow context. Next inspect bounded windows around the read-only mode/status methods and separately the token/ESS methods. No Binder/ESS methods were called and no device state changed.


## 17. Static control-flow findings: getModesbit, getLastTokenStatus, getStatus — 2026-11-14

Owner-provided LLVM disassembly windows show common wrapper behavior:

- getServer() is called before the selected EngMode operation. Its return is tested using bit 31; negative values take a logged error path.
- getModesbit() and getLastTokenStatus() are also tested using bit 31.
- Both wrappers allocate a 0xC800-byte (51,200-byte) output buffer and call getBytes(client, buffer, &length). In these call sites, zero from getBytes is treated as success and nonzero as failure.
- If buffer allocation or getBytes fails, the wrapper visibly sets the sentinel 0xF0000000 (-268435456) in its result slot.
- getStatus() receives pointer/length-like data and scalar values unpacked from a caller-provided structure. Two length values are calculated as differences between fields at offsets 0x00/0x08 and 0x18/0x20. Exact field semantics remain unknown.
- getStatus() itself returns an integer checked by sign bit; it does not use getBytes in the supplied block.

In the shown common completion paths, AStatus_newOk() is returned while the EngMode operation's result/error is carried separately. Thus Binder-level status success must not be conflated with EngMode operation success.

These observations do not establish runtime invocation, caller authorization, exact AIDL transaction numbers, or the final byte/vector serialization. The getBytes() zero-success convention is established only for the inspected wrappers. No Binder/ESS calls or device writes were performed.


## 18. Byte-vector output path and getStatus argument layout — 2026-11-14

Additional disassembly confirms that the zero-success getBytes path copies the returned byte buffer into the AIDL output vector. The wrapper reads the byte count written through its out-parameter, checks existing vector length/capacity, calls the local std::vector<unsigned char>::__append helper as needed, then memcpy copies exactly that count from the temporary 0xC800-byte buffer into the vector. The wrapper writes zero to its separate EngMode result slot and frees the temporary buffer/client object.

The getLastTokenStatus wrapper has the same output-vector path. This establishes that getBytes supplies the byte payload consumed by the AIDL wrapper, rather than merely returning a status.

At getStatus (call site 0x58B4), the method receives:
- this pointer in x0;
- integer argument in w1;
- pointer in x2 and length in w3, where length is computed as field[0x08] − field[0x00];
- second pointer in x4 and length in w5, where length is field[0x20] − field[0x18];
- two scalar values in w6/w7 from field offset 0x30;
- final scalar on the stack.

This matches the imported native signature shape. It suggests, but does not prove, a caller-info structure with two byte ranges and scalar metadata. Exact field meanings require schema or constructor/call-site analysis.

The EngMode result integer and AIDL vector are separate from the Binder AStatus object. Static-only finding; no Binder/ESS methods or protected writes were performed.
