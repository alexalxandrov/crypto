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
| [A26_ESS_LOCKSTATE_ANALYSIS_2026-11-13_RU.md](A26_ESS_LOCKSTATE_ANALYSIS_2026-11-13_RU.md) | A26-specific ESS, mode-bit, lock-state and RPMB analysis; corrected caller map and setter polarity |
| [A26_DEVICE_STATE_2026-11-13_RU.md](A26_DEVICE_STATE_2026-11-13_RU.md) | Software information profile plus current device/Download Mode summary |
| [A26_DOWNLOAD_MODE_2026-11-13_RU.md](A26_DOWNLOAD_MODE_2026-11-13_RU.md) | Complete ODIN MODE screen transcription; explicitly records that no other lines or fields are present |
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

The new complete OEM lock-state callback/response-handler extraction is:

- `../a26-analysis/current/extracted/oem-lockstate-callchain.asm`

Do not rely on older handoff passages that say this function body is unavailable; that extraction gap has been closed.

## Outstanding evidence / next steps

1. **Device software profile: COMPLETE.** Software information has been recorded in `A26_DEVICE_STATE_2026-11-13_RU.md`.
2. **Download Mode screen: COMPLETE.** The full ODIN MODE transcription is in `A26_DOWNLOAD_MODE_2026-11-13_RU.md`. The owner explicitly confirmed that this is the entire screen and that no additional fields/rows exist. `OEM LOCK`, `FRP LOCK`, and `DEVICE STATE` rows are absent. Do not ask for this screen again.
3. **SBoot semantic gaps:** the bodies of `fcn.00153180` and `fcn.00153998` are now extracted and classified as downstream response handlers, not synchronizer callers. The real chain is `fcn.00115610 → fcn.0017df80 → fcn.0017dfdc`. The setter's numeric polarity and bit-3 truth table are established; remaining work is to decode cmd0 values `0x26f47b` / `0x259c35` passed to the formatter and trace consumers of buffer `0x5a0000 + 0x64c`, identify the data xref `aav.0x493e0 + 0x2380`, and resolve the `fcn.0017b7c8` object key/counter semantics.
4. **EngMode service boundary:** validate the A26 ELF/VA mapping and trace the vendor service/TLC path without assuming that client-side `makeTokenReq` is a token issuer.
5. **Device correlation:** compare source-backed static findings with read-only device state. Do not write RPMB/STEADY, patch SBoot, inject a token, or attempt downgrade.

## Evidence discipline

- Label observations, interpretations, and hypotheses separately.
- Do not transfer S24 Ultra results to SM-A266B without A26-specific confirmation.
- String presence is not proof of a reachable branch or a usable unlock method.
- A successful Binder request is not proof that Samsung issued a signed ESS token.
- Keep all current device checks read-only until a supported procedure is independently established.
