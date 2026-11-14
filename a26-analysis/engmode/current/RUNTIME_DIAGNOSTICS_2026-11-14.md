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
