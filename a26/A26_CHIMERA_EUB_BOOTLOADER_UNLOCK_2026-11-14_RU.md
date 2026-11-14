# A26 — Chimera EUB Bootloader Unlock: first-party support check

**Checked:** 2026-11-14  
**Target:** Samsung Galaxy A26 5G SM-A266B/DS, codename a26x  
**Installed firmware:** A266BXXUCDZJ6, Android 17 / One UI 9, CSC CAU, RP SWREV 12  
**Purpose:** evaluate an official service-tool route to unlock the bootloader, after the standard Samsung Device Unlock UI did not appear.

## 1. Important correction to the previous dossier

The previous A26 report said Chimera's first-party model page did not list Bootloader Unlock for SM-A266B. That statement is now outdated and is superseded by the current first-party page.

On 2026-11-14, Chimera's own model page for **Samsung Galaxy A26 5G / SM-A266B** listed:

- **Unlock / Relock Bootloader — EUB**

Source: https://chimeratool.com/en/models/samsung-galaxy-a26-5g-sm-a266b

The row is present in the current official model-specific "Available Features" table. However, there is conflicting first-party evidence: Chimera's A26-specific EUB launch announcement (SM-A266B/SM-A266M) explicitly lists the procedures available in EUB mode, and **Bootloader Unlock is not among them**. The model page may have been updated later, but no newer A26-specific announcement confirming EUB Bootloader Unlock was found. Therefore EUB is a plausible lead, not a confirmed unlock path.

General feature page: https://chimeratool.com/en/features/unlock-relock-bootloader

## 2. What is and is not established

### Established by first-party sources

- The current official model page for SM-A266B lists Unlock / Relock Bootloader — EUB.
- The official A26 EUB launch announcement lists SM-A266B and SM-A266M as EUB-compatible.
- That A26-specific announcement's explicit EUB procedure list does **not** include Bootloader Unlock.
- The official page exposes a model-specific Test Point Info link.

### Conflict requiring support confirmation

The current model page and the A26-specific EUB procedure announcement do not agree on whether Bootloader Unlock is actually available through EUB for A26. The announcement may be older and superseded, but the public evidence located so far does not prove that. Do not purchase credits or disassemble the phone until Chimera confirms this exact operation.

### Not established by the public page

- Whether the operation supports the exact build A266BXXUCDZJ6.
- Whether Android 17 / One UI 9 is supported.
- Whether RP SWREV 12 is supported.
- Whether CAU/OXM CSC affects eligibility.
- Whether an EM token is required or whether Chimera can obtain/provision one for this build.
- Whether the operation is available for every SM-A266B variant or only a subset.
- Whether the phone's current KG/FRP/MDM state can block the operation.
- Whether the procedure actually completes on a device in the exact observed locked state.

Do not convert "feature listed for model" into "confirmed compatible with this firmware".

## 3. Distinguish two different Chimera bootloader-unlock paths

Chimera's own official Telegram announcement (post 279, 27.08.2026) describes a Samsung Download Mode / ODIN bootloader-unlock procedure for selected Exynos devices, with the stated boundary **below Android 16, when no emtoken is required**. It explicitly lists Exynos 1380 and Samsung Galaxy A26 5G (SM-A266B/M/U/U1).

First-party source: https://t.me/chimeratool_offical/279

A mirrored copy is available at: https://news.halabtech.com/chimera-update-new-samsung-exynos-support-en-2026-08-27/

This Download Mode procedure must not be conflated with the separate **EUB** operation currently shown on the SM-A266B model page. The first-party announcement's Android-version limitation explicitly excludes the installed Android 17 build from the ODIN route. The public evidence does not say whether the separate EUB route has the same restriction; this is the exact point Chimera support must confirm.

The installed A266BXXUCDZJ6 is Android 17. Therefore the older Download Mode route is not a viable assumption for this phone. The EUB listing is the route that needs both procedure-level and exact-build confirmation.

## 4. EUB feasibility and physical access

Public A26-specific service material documents entry into EUB using a motherboard test point on SM-A266B. One published example concerns FRP service on Android 15 / build A266BXU1AYB5, not bootloader unlock:

https://halabtech.com/samsung-a26-5g-frp-remove-via-test-point-eub/

That material supports only the proposition that an EUB/test-point workflow has been used on an A26. It does not establish bootloader-unlock success, nor compatibility with Android 17 / BIT 12.

Chimera's model page has a Test Point Info link, but the detailed page requires a logged-in Chimera session and did not expose a public diagram during this check. Do not use an unrelated EDL/ISP/BROM diagram as an EUB test-point map. Do not bridge unidentified pads.

## 5. Exact support confirmation required before spending money or opening the phone

Ask Chimera support to confirm all of these in writing:

1. Exact model: **SM-A266B** (not SM-A266U/U1/M).
2. Exact firmware: **A266BXXUCDZJ6**.
3. Android **17**, One UI **9**.
4. Binary / RP SWREV **12**.
5. CSC **CAU**, OXM multi-CSC.
6. Operation: **Unlock / Relock Bootloader (EUB)**, not FRP removal, KnoxGuard servicing, Repair Boot, Device Info, or another unrelated procedure.
7. Whether EUB bootloader unlock works on this exact firmware, and whether an EM/ESS token is required.
8. Whether Chimera itself provisions any required authorization, or whether the user must provide a Samsung-signed token.
9. Whether a test point and full disassembly are required.
10. Whether the procedure wipes userdata, trips Knox Warranty, changes KG/RMM state, or affects OTA/secure folder.
11. What exact Chimera version, licence and credits are needed; whether there is a refund if the model is detected but the unlock operation is unsupported.

Official support contacts listed by Chimera:
- support@chimeratool.com
- https://t.me/chimeratoolofficialsupport

Do not buy credits or open the handset until support confirms the exact firmware/build. A model-level feature row is not a firmware-specific guarantee.

## 6. Suggested support request

```text
Hello Chimera Support,

Your official supported-model page for Samsung Galaxy A26 5G SM-A266B currently lists "Unlock / Relock Bootloader (EUB)".

Can you confirm whether this exact device is supported for bootloader unlock?

Model: SM-A266B/DS
Build: A266BXXUCDZJ6
Android: 17
One UI: 9
CSC: CAU (OXM)
RP SWREV / BIT: 12
SoC: Exynos 1380 (s5e8835)

The standard Samsung Volume Up Device Unlock confirmation does not appear. The last recorded boot properties are:
ro.boot.flash.locked=1
ro.boot.vbmeta.device_state=locked
ro.boot.verifiedbootstate=green
ro.boot.other.locked=1

Please confirm specifically:
1. Does Unlock / Relock Bootloader via EUB work on A266BXXUCDZJ6 / Android 17 / BIT 12?
2. Is an EM/ESS token required?
3. Does Chimera provision the required authorization, or must it already exist?
4. Is a test point required?
5. Will the operation wipe data or trip Knox Warranty?
6. If the model is detected but the exact firmware is unsupported, are credits refundable?

I am asking only about the bootloader-unlock procedure, not FRP or KnoxGuard operations.

Thank you.
```

## 7. Relationship to the SBoot/ESS findings

The J6 SBoot contains a signed-policy path involving STEADY/PIT metadata, SecureBoot validation, a 32-byte bitmap and lock-state reconciliation. The Android UI switch was exposed by changing the runtime property `ro.boot.other.locked` through KernelSU `resetprop`; the last OEMLockService query reported allowed=true but device OEM-unlocked=false.

Therefore, the Chimera EUB route is interesting precisely because it may provide a service-level operation that the Android Settings UI and ordinary Download Mode key path do not provide. The public catalogue does not reveal its internal mechanism; do not assume it bypasses or edits STEADY/RPMB, and do not try to reproduce such writes manually.

## 8. Updated route ranking

| Route | Current evidence | Status |
|---|---|---|
| Samsung standard Device Unlock UI | No confirmation branch appears on this phone | Not available in observed state |
| Chimera Bootloader Unlock via EUB | Current model page lists it, but A26-specific EUB procedure announcement omits it | **Unresolved conflict; exact Android 17 / BIT 12 support unconfirmed** |
| Chimera ODIN-mode unlock | Published for selected models below Android 16 when no emtoken is required | Not assumed compatible with Android 17 |
| ESS signed-token route | A26 SBoot contains token/lock-state handling; no confirmed signed token issuance path | Open research |
| KernelSU + kexec | Public A26 source defconfig disables KEXEC; installed J6 config still not read directly | Low-probability route |
| Direct TWRP write while locked | Stock vbmeta descriptor and locked state reject unauthenticated recovery | Do not write |

## 9. Safety gate

- The owner has authorized pursuing unlock/TWRP. No write to recovery, vbmeta, STEADY, RPMB or MISC has been performed; a specific write still requires a verified path, image/backup validation and final operation-specific check.
- Do not downgrade below RP SWREV 12.
- Do not attempt a test-point procedure using a diagram from a different model or a different boot mode.
- Treat unlock as a data-wiping operation; preserve a verified backup first.
- If Chimera confirms exact-build support, use its documented model-specific EUB procedure rather than manually reproducing unknown service commands.


## 10. Host OS requirements

Chimera's official download page currently lists **Windows 10 / Windows 11, 32/64-bit** as supported operating systems:
https://chimeratool.com/en/download

Therefore the user's Parrot Linux, macOS and legacy Windows 7 environment are not officially supported hosts for the current tool. Use a native Windows 10/11 PC if available. A Windows 10/11 virtual machine with USB passthrough may be technically possible but is not confirmed by Chimera for EUB/test-point workflows; do not rely on it for a paid or destructive procedure without support confirmation.


## 11. First-party EUB procedure-list conflict — 2026-11-14

A second first-party source was located: Chimera's official Telegram EUB announcement for Galaxy A26 5G (SM-A266B, SM-A266M). It confirms A26 EUB compatibility, but the explicit procedure list is: Backup, Change CSC, Change Serial, Factory Reset, FMM Remove, FRP Remove, Set KnoxGuard State, Get Info, Lost Mode Remove, Common Criteria Remove, MDM Remove, Remove Warnings, Security Backup/Restore, Network Factory Reset and Reset Battery Status. **Bootloader Unlock is absent from that A26-specific EUB list.**

First-party source: https://t.me/s/chimeratool_offical?before=241

This conflicts with the current official SM-A266B model page, which lists Unlock / Relock Bootloader (EUB). The announcement may have been superseded by a later update, but no later A26-specific first-party release note confirming the addition was located. Treat the model page as a lead, not proof that the EUB unlock operation is available on A26.

The separate official ODIN/Download Mode announcement includes A26 but limits bootloader unlock to devices below Android 16 when no emtoken is required. The installed Android 17 firmware is outside that published ODIN boundary.

**Updated decision:** do not buy credits or open the handset yet. Ask Chimera support to resolve the exact conflict and confirm SM-A266B / A266BXXUCDZJ6 / Android 17 / BIT 12. The support request in section 6 already contains the required device details; add the explicit question: “Your current model page lists EUB Bootloader Unlock, but your A26 EUB announcement's procedure list omits it. Has Bootloader Unlock been added for SM-A266B since that announcement?”


## 12. Combination firmware / downgrade check — 2026-11-14

Current public firmware catalog cross-check:

- SamFW's ACR page lists the exact installed build `A266BXXUCDZJ6` as Android 17 / One UI 9, BIT C (12), October 2026 security patch: https://samfw.com/firmware/SM-A266B/ACR
- The same ACR catalog lists `A266BXXSCCZH3` as Android 16 / One UI 8.5, also BIT C (12). This shows that Android 16 and Android 17 builds exist at the same bootloader binary level, but it does **not** prove that a downgrade is safe or that it enables the ODIN unlock path.
- SamFW's SM-A266B combination-firmware section currently says it is still working to obtain combination files; no verified BIT 12 combination package was located: https://samfw.com/firmware/SM-A266B/MID

The official Chimera ODIN unlock announcement's no-emtoken path is limited to Android versions below 16. Android 16 is not below 16; Android 17 is further outside that boundary. A same-BIT Android 16 firmware does not solve the stated requirement. Do not downgrade merely to test this; it is not a demonstrated unlock path and could create additional rollback or data-loss risk.

## 7. Firmware anti-rollback and Android 15 downgrade check

Firmware history shows:
- Android 15 releases for SM-A266B are binaries 1, 2, 3 and 4.
- Android 16 releases progress through 4, 5, 6, 7, 8, 9, B (11), and C (12).
- Android 16 build `A266BXXSCCZH3` is binary C/12.
- Installed Android 17 `A266BXXUCDZJ6` is also binary C/12.

Sources:
- Samsung official history: https://doc.samsungmobile.com/SM-A266B/033189250417/eng.html
- SamFW binary/SW REV table: https://samfw.com/firmware/SM-A266B/XME

Therefore an Android 15 downgrade would require crossing the current SW REV 12 rollback floor down to binary 4 or lower; this is not a valid route. Android 16 C is not "below Android 16" and therefore does not satisfy the stated OS boundary of Chimera's Download Mode/ODIN unlock announcement. Do not attempt firmware downgrade as a way to reach that feature.

## 8. Exact-build EUB support status remains unconfirmed

The model page row and A26-specific EUB launch announcement still conflict. No public first-party evidence found in this check confirms that EUB's **Unlock / Relock Bootloader** operation completes on Android 17 / A266BXXUCDZJ6 / BIT C / CSC CAU. The separate EUB row may have been added later, but this has not been independently validated. Obtain written support confirmation before purchase, test-point work, or remote servicing.

## 9. Related RAM-recovery path

The A26-specific Android 16 kernel defconfig sets `# CONFIG_KEXEC is not set` and `# CONFIG_KEXEC_FILE is not set`; current Android 17 J6 runtime config remains to be read from `/proc/config.gz`. See `a26/recovery/A26_KEXEC_RAM_RECOVERY_FEASIBILITY_2026-11-14_RU.md` and run `a26/recovery/a26-readonly-preflight.sh`.
