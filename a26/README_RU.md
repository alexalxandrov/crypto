# Samsung Galaxy A26 5G — dossier index

Target: **SM-A266B / SM-A266B/DS**  
Research snapshot: **2026-11-14**  
Repository branch: `main`

## Current position

The repository contains a substantial static-analysis corpus for the A26 bootloader and Samsung Engineering Mode. The current working firmware artifact is `A266BXXUCDZJ6`; Samsung's update page for SM-A266B lists Android 17, One UI 9, release date 2026-11-03, and security patch 2026-10-05:

https://doc.samsungmobile.com/SM-A266B/033186250417/eng.html

This official release record does not by itself prove which build, baseband, or CSC is currently installed on the owner's handset. Confirm those details from **Settings → About phone → Software information**.

**No reproducible, supported end-user bootloader-unlock path has been demonstrated.** The presence of an OEM unlocking switch in Android UI is not proof that SBoot will permit the transition. Earlier owner notes say the switch was made visible after a temporary KernelSU `resetprop` change to `ro.boot.other.locked`.

**STEADY physical partition: CONFIRMED.** The owner verified `/dev/block/by-name/steady -> /dev/block/sda3` from KernelSU root on the current Android 17 build. Partition size, on-disk format, and read-only status are still pending; no partition contents have been written or dumped.

## Documents in this folder

| File | Purpose |
|---|---|
| [A26_BOOTLOADER_HANDOFF_RU.md](A26_BOOTLOADER_HANDOFF_RU.md) | Main handoff dossier; confirmed STEADY mapping, CertResTBE prerequisite, OEM wipe path and remaining read-only checks |
| [A26_ESS_LOCKSTATE_ANALYSIS_2026-11-13_RU.md](A26_ESS_LOCKSTATE_ANALYSIS_2026-11-13_RU.md) | A26-specific ESS, signed STEADY policy bitmap, OEM lock-state synchronizer and bootloader-unlock recovery wipe path |
| [A26_LOCKSTATE_TRUTH_TABLE_2026-11-13_RU.md](A26_LOCKSTATE_TRUTH_TABLE_2026-11-13_RU.md) | Exact bit-3/current-state truth table, inverse setter mapping, `get_oem_unlock_val` error-path label, opaque object pointer and caller xrefs |
| [A26_DEVICE_STATE_2026-11-13_RU.md](A26_DEVICE_STATE_2026-11-13_RU.md) | Software information profile plus current device/Download Mode summary |
| [A26_DOWNLOAD_MODE_2026-11-13_RU.md](A26_DOWNLOAD_MODE_2026-11-13_RU.md) | Complete ODIN MODE screen transcription; explicitly records that no other lines or fields are present |
| [A26_RESEARCH_UPDATE_2026-11-13_RU.md](A26_RESEARCH_UPDATE_2026-11-13_RU.md) | Correction to earlier SBoot extraction claims and current static-analysis results |
| [A26_ESS_LOCKSTATE_FLOW_RU.svg](A26_ESS_LOCKSTATE_FLOW_RU.svg) | Updated evidence diagram: PIT-derived STEADY catalog, SCSI mode/selector, sda3 start at 36 MiB / 4-KiB LBA 0x2400, signature check, bitmap and OEM sync |
| [recovery/A26_RECOVERY_PREFLIGHT_2026-11-13_RU.md](recovery/A26_RECOVERY_PREFLIGHT_2026-11-13_RU.md) | Root/recovery partition read-only intake, official TWRP method, image/AVB compatibility risks |
| [A26_UNLOCK_RECOVERY_RESEARCH_2026-11-13_RU.md](A26_UNLOCK_RECOVERY_RESEARCH_2026-11-13_RU.md) | Exact-build unlock assessment, PIT/STEADY + SCSI backend path, measured sda3 geometry, CertResTBE readiness, SecureBoot parser and read-only diagnostics |
| `em.img` | **Empty (0 bytes)** as of this snapshot; not a usable firmware or Engineering Mode artifact |

## Main analysis corpus

The larger corpus is under `../a26-analysis/`. It contains the current BL package, extracted raw images, SBoot disassembly/indexes, targeted function extracts, EngMode-related library analysis, and RPMB/STEADY traces. The main raw SBoot image is:

`../a26-analysis/current/raw/sboot.bin`

The complete extract for `fcn.001690d8` is available at:

- `../a26-analysis/current/extracted/fcn.001690d8.asm`
- `../a26-analysis/current/extracted/fcn.001690d8-callers.asm`
- `../a26-analysis/current/extracted/fcn.001690d8-manifest.txt`

The new complete OEM lock-state callback/response-handler extraction is:

- `../a26-analysis/current/extracted/oem-lockstate-callchain.asm`

Do not rely on older handoff passages that say this function body is unavailable; that extraction gap has been closed.

## Outstanding evidence / next steps

1. **Device software profile: COMPLETE.** Software information has been recorded in `A26_DEVICE_STATE_2026-11-13_RU.md`.
2. **Download Mode screen: COMPLETE.** The full ODIN MODE transcription is in `A26_DOWNLOAD_MODE_2026-11-13_RU.md`. The owner explicitly confirmed that this is the entire screen and that no additional fields/rows exist. `OEM LOCK`, `FRP LOCK`, and `DEVICE STATE` rows are absent. Do not ask for this screen again.
3. **SBoot semantic gaps:** the bodies of `fcn.00153180` and `fcn.00153998` are now extracted and classified as downstream response handlers, not synchronizer callers. The real chain is `fcn.00115610 → fcn.0017df80 → fcn.0017dfdc`. The setter's numeric polarity and bit-3 truth table are established; remaining work is to decode raw string/format-like data at `0x26f47b` / `0x259c35` consumed by `fcn.0014b248`, and trace consumers of buffer `0x5a0000 + 0x64c`, identify the data xref `aav.0x493e0 + 0x2380`, and resolve the `fcn.0017b7c8` object key/counter semantics.
4. **EngMode service boundary:** validate the A26 ELF/VA mapping and trace the vendor service/TLC path without assuming that client-side `makeTokenReq` is a token issuer.
5. **STEADY partition:** `steady -> /dev/block/sda3` and its geometry are confirmed (start 36 MiB, size 4 MiB, block device read-only). The first 4 KiB payload was acquired and is entirely zero-filled; this does not prove the remaining partition is empty. See section 21 in `A26_UNLOCK_RECOVERY_RESEARCH_2026-11-13_RU.md`. Next bounded read-only step: inspect the complete 4-MiB payload in a regular userdata file. Never write to STEADY/RPMB, patch SBoot, inject a token, or attempt downgrade.

## Evidence discipline

- Label observations, interpretations, and hypotheses separately.
- Do not transfer S24 Ultra results to SM-A266B without A26-specific confirmation.
- String presence is not proof of a reachable branch or a usable unlock method.
- A successful Binder request is not proof that Samsung issued a signed ESS token.
- Keep all current device checks read-only until a supported procedure is independently established.

## Latest owner observations — 2026-11-14

- OEM unlocking switch is reported to appear temporarily and can be enabled; persistence across reboot has not been measured.
- Maintenance Mode requires reboot both to enter and to exit; Developer Options is absent inside MM.
- Short and long Volume Up on the Custom OS screen lead to ordinary Download Mode without a Device Unlock confirmation prompt.
- The full ODIN MODE screen is already recorded. OEM LOCK / FRP LOCK / DEVICE STATE fields are absent; do not request another transcription.
- Android UI permission is not equivalent to bootloader unlock. The last recorded boot properties remain locked. No supported unlock path has been demonstrated.

See [A26_MAINTENANCE_MODE_OEM_TOGGLE_2026-11-14_RU.md](A26_MAINTENANCE_MODE_OEM_TOGGLE_2026-11-14_RU.md) for the full observation record and technical interpretation.


## Приоритетный unlock-кандидат — 14.11.2026

Официальная модельная страница Chimera для SM-A266B теперь показывает `Unlock / Relock Bootloader (EUB)`. Совместимость с A266BXXUCDZJ6 / Android 17 / BIT 12 / CAU не подтверждена; перед оплатой и разборкой нужен письменный ответ Chimera. Полный разбор и текст запроса: [A26_CHIMERA_EUB_BOOTLOADER_UNLOCK_2026-11-14_RU.md](A26_CHIMERA_EUB_BOOTLOADER_UNLOCK_2026-11-14_RU.md).

Аппаратная платформа: Exynos 1380 (`s5e8835`), не Exynos 1280.

## RAM recovery / kexec feasibility — 2026-11-14

- [A26_KEXEC_RAM_RECOVERY_FEASIBILITY_2026-11-14_RU.md](recovery/A26_KEXEC_RAM_RECOVERY_FEASIBILITY_2026-11-14_RU.md) — A26-specific kernel defconfig, kexec feasibility, firmware anti-rollback, AVB recovery hash gate.
- [a26-readonly-preflight.sh](recovery/a26-readonly-preflight.sh) — read-only runtime collector for J6 `/proc/config.gz`, OEM properties, kexec interfaces and recovery block metadata.
- [A26_AVB_DESCRIPTOR_REPORT_2026-11-14_RU.md](recovery/A26_AVB_DESCRIPTOR_REPORT_2026-11-14_RU.md) — signed vbmeta recovery hash descriptor; TWRP mismatch.

Published A26 defconfig has `CONFIG_KEXEC` and `CONFIG_KEXEC_FILE` disabled; exact Android 17 J6 runtime config is pending. Standard TWRP `dd` is blocked by the signed recovery hash descriptor while bootloader remains locked. Chimera EUB remains unconfirmed for Android 17 / BIT C.

## Chimera EUB — exact A266B route

- [A26_CHIMERA_EUB_BOOTLOADER_UNLOCK_2026-11-14_RU.md](A26_CHIMERA_EUB_BOOTLOADER_UNLOCK_2026-11-14_RU.md) — exact official model-page EUB entries, testpoint and host requirements.
- [A26_CHIMERA_SUPPORT_REQUEST_EN.md](A26_CHIMERA_SUPPORT_REQUEST_EN.md) — ready-to-send English question for exact Android 17 / BIT C support.
- Official A266B testpoint guide: https://chimeratool.com/en/test-points/1440-test-point-for-samsung-galaxy-a26-5g-models.html (requires Chimera login).
- Current Chimera desktop software requires physical Windows 10/11; its EULA disallows virtual-machine use.

The official SM-A266B model page lists both Unlock/Relock Bootloader (EUB) and Patch Knoxguard (EUB). Exact J6 / Android 17 / BIT C behavior is not yet confirmed by Chimera support.


## Engineering Mode / ESS runtime intake — 2026-11-14

- [A26_ENGMODE_ESS_RUNTIME_2026-11-14_RU.md](A26_ENGMODE_ESS_RUNTIME_2026-11-14_RU.md) — сводка live-проверок: состояния служб, SELinux domains, Binder/VINTF, размеры vendor-бинарников, наличие token/ESS/STEADY символов, результат фильтрации журналов и границы доказанного.
- [RUNTIME_DIAGNOSTICS_2026-11-14.md](../a26-analysis/engmode/current/RUNTIME_DIAGNOSTICS_2026-11-14.md) — подробный технический intake с наблюдаемыми процессами, размерами файлов, именами методов и строками ошибок из client/server библиотек.

**Новый подтверждённый факт:** engmode_hal, emservice, tz_service, tzts_service и proca на устройстве сообщают running. Клиентская/серверная библиотеки содержат функции и строки для token/ESS и STEADY I/O. Это доказывает наличие программного стека, но не выдачу Samsung-signed OEM-unlock token и не разрешение на разблокировку. Узкий поиск по последним 3000 строкам logcat не дал совпадений; это ограниченный отрицательный результат, а не доказательство отсутствия ESS-активности.

**Актуальное состояние OEM Lock не изменилось:** последняя read-only проверка показала carrier/user/overall allowed = true, но device OEM unlocked = false. Не вызывались state-changing методы HAL/ESS; в STEADY/RPMB и разделы загрузчика ничего не записывалось.


### ELF dependency / TEE architecture update — 2026-11-14

- [ARCHITECTURE_STATIC_FINDINGS_2026-11-14.md](../a26-analysis/engmode/current/ARCHITECTURE_STATIC_FINDINGS_2026-11-14.md) — DT_NEEDED graph, AIDL NDK vs classic Binder separation, TLC → libteecl / TEEC interface, ESS 1.5 and 2Lite indicators, and six live on-device SHA-256 hashes.

Latest evidence confirms that libengmode_server depends on TLC and 2Lite; TLC depends on libteecl and includes TEEC API names. This proves a TEE Client API transport layer exists in the EngMode stack, but does not identify the TA command contract or demonstrate a user-authorized OEM-unlock token path.


### ELF symbol-linkage result — 2026-11-14

- [A26_BOOTLOADER_HANDOFF_RU.md](A26_BOOTLOADER_HANDOFF_RU.md) — новый раздел с доказанными импортами/экспортами между `emservice`, `libengmode_server.so`, `libengmode_tlc.so` и TEEC API.
- [ARCHITECTURE_STATIC_FINDINGS_2026-11-14.md](../a26-analysis/engmode/current/ARCHITECTURE_STATIC_FINDINGS_2026-11-14.md) — полная карта символов и границ между двумя Binder-контурами.

**Новый результат:** подтверждён symbol-linked путь `emservice → libengmode_server → libengmode_tlc → libteecl/TEEC`. AIDL HAL отдельно использует NDK Binder glue и `libengmode_client.so`; конкретный forwarding path пока остаётся открытым. Это статическая архитектурная связь, не подтверждение разрешённого OEM-unlock token или операции.


### AIDL → legacy EngMode client API — 2026-11-14

Новый `readelf -Ws` capture подтвердил прямые импорты `android::engmodeclient` методов из AIDL service executable; определения этих символов находятся в `libengmode_client.so`. Это связывает AIDL NDK Binder front end с legacy client API на уровне ELF symbols. Полный per-method forwarding и конечная Binder transaction map ещё не восстановлены.

Подробности: [ARCHITECTURE_STATIC_FINDINGS_2026-11-14.md](../a26-analysis/engmode/current/ARCHITECTURE_STATIC_FINDINGS_2026-11-14.md).
