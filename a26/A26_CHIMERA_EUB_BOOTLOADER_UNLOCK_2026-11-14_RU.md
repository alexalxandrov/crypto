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

The row is present in the official model-specific "Available Features" table. This is materially stronger than a third-party reseller listing and makes Chimera EUB the leading externally documented unlock candidate.

General feature page: https://chimeratool.com/en/features/unlock-relock-bootloader

## 2. What is and is not established

### Established by first-party model page

- Chimera lists the exact base model SM-A266B.
- The listed Bootloader Unlock / Relock mode is EUB.
- The official page exposes a model-specific Test Point Info link.
- The feature exists in Chimera's current public catalogue for this model.

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

The installed A266BXXUCDZJ6 is Android 17. Therefore the older Download Mode route is not a viable assumption for this phone. The EUB listing is the route that needs exact-build confirmation.

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
| Chimera Bootloader Unlock via EUB | Exact SM-A266B model page lists it | **Top candidate; exact Android 17 / BIT 12 support unconfirmed** |
| Chimera ODIN-mode unlock | Published for selected models below Android 16 when no emtoken is required | Not assumed compatible with Android 17 |
| ESS signed-token route | A26 SBoot contains token/lock-state handling; no confirmed signed token issuance path | Open research |
| KernelSU + kexec | Public A26 source defconfig disables KEXEC; installed J6 config still not read directly | Low-probability route |
| Direct TWRP write while locked | Stock vbmeta descriptor and locked state reject unauthenticated recovery | Do not write |

## 9. Safety gate

- No write to recovery, vbmeta, STEADY, RPMB or MISC is authorized by this research note.
- Do not downgrade below RP SWREV 12.
- Do not attempt a test-point procedure using a diagram from a different model or a different boot mode.
- Treat unlock as a data-wiping operation; preserve a verified backup first.
- If Chimera confirms exact-build support, use its documented model-specific EUB procedure rather than manually reproducing unknown service commands.


## 10. Host OS requirements

Chimera's official download page currently lists **Windows 10 / Windows 11, 32/64-bit** as supported operating systems:
https://chimeratool.com/en/download

Therefore the user's Parrot Linux, macOS and legacy Windows 7 environment are not officially supported hosts for the current tool. Use a native Windows 10/11 PC if available. A Windows 10/11 virtual machine with USB passthrough may be technically possible but is not confirmed by Chimera for EUB/test-point workflows; do not rely on it for a paid or destructive procedure without support confirmation.
