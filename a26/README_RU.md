# Samsung Galaxy A26 5G — dossier index

Target: **SM-A266B / SM-A266B/DS**  
Research snapshot: **2026-11-13**  
Repository branch: `main`

## Current position

The repository contains a substantial static-analysis corpus for the A26 bootloader and Samsung Engineering Mode. The current working firmware artifact is `A266BXXUCDZJ6`; Samsung's update page for SM-A266B lists Android 17, One UI 9, release date 2026-11-03, and security patch 2026-10-05:

https://doc.samsungmobile.com/SM-A266B/033186250417/eng.html

This official release record does not by itself prove which build, baseband, or CSC is currently installed on the owner's handset. Confirm those details from **Settings → About phone → Software information**.

**No reproducible, supported end-user bootloader-unlock path has been demonstrated.** The presence of an OEM unlocking switch in Android UI is not proof that SBoot will permit the transition. Earlier owner notes say the switch was made visible after a temporary KernelSU `resetprop` change to `ro.boot.other.locked`.

## Documents in this folder

| File | Purpose |
|---|---|
| [A26_BOOTLOADER_HANDOFF_RU.md](A26_BOOTLOADER_HANDOFF_RU.md) | Main handoff dossier; chronology, artifacts, caveats, current intake requirements |
| [A26_ESS_LOCKSTATE_ANALYSIS_2026-11-13_RU.md](A26_ESS_LOCKSTATE_ANALYSIS_2026-11-13_RU.md) | A26-specific ESS, mode-bit, lock-state and RPMB analysis |
| [A26_DEVICE_STATE_2026-11-13_RU.md](A26_DEVICE_STATE_2026-11-13_RU.md) | Owner-provided Software information profile and matching with the J6 firmware artifacts |
| [A26_RESEARCH_UPDATE_2026-11-13_RU.md](A26_RESEARCH_UPDATE_2026-11-13_RU.md) | Correction to earlier SBoot extraction claims and current static-analysis results |
| [A26_ESS_LOCKSTATE_FLOW_RU.svg](A26_ESS_LOCKSTATE_FLOW_RU.svg) | Diagram: observed A26 paths vs unresolved ESS/token links |
| `em.img` | **Empty (0 bytes)** as of this snapshot; not a usable firmware or Engineering Mode artifact |

## Main analysis corpus

The larger corpus is under `../a26-analysis/`. It contains the current BL package, extracted raw images, SBoot disassembly/indexes, targeted function extracts, EngMode-related library analysis, and RPMB/STEADY traces. The main raw SBoot image is:

`../a26-analysis/current/raw/sboot.bin`

The complete extract for `fcn.001690d8` is available at:

- `../a26-analysis/current/extracted/fcn.001690d8.asm`
- `../a26-analysis/current/extracted/fcn.001690d8-callers.asm`
- `../a26-analysis/current/extracted/fcn.001690d8-manifest.txt`

Do not rely on older handoff passages that say this function body is unavailable; that extraction gap has been closed.

## Outstanding evidence / next steps

1. **Device Software information screenshot:** One UI version, Android version, build number, baseband version, and Service provider software version (CSC). Mask phone number, IMEI, serial number, and account identifiers if any appear.
2. **Download Mode state:** not requested yet. First verify the Software information page; then decide whether a non-destructive read-only capture is warranted. Do not confirm unlock, flash, or wipe actions.
3. **SBoot semantic gaps:** complete parent-level control flow for `fcn.00153180` and `fcn.00153998`; decode the two unresolved log-string arguments; establish the polarity and meaning of the boolean passed to `fcn.001257bc`; resolve the key/counter used by `fcn.0017b7c8`.
4. **EngMode service boundary:** validate the A26 ELF/VA mapping and trace the vendor service/TLC path without assuming that client-side `makeTokenReq` is a token issuer.
5. **Device correlation:** compare source-backed static findings with read-only device state. Do not write RPMB/STEADY, patch SBoot, inject a token, or attempt downgrade.

## Evidence discipline

- Label observations, interpretations, and hypotheses separately.
- Do not transfer S24 Ultra results to SM-A266B without A26-specific confirmation.
- String presence is not proof of a reachable branch or a usable unlock method.
- A successful Binder request is not proof that Samsung issued a signed ESS token.
- Keep all current device checks read-only until a supported procedure is independently established.
