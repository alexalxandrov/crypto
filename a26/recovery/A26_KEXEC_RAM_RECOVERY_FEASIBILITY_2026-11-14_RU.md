# A26 — feasibility of launching TWRP from RAM (kexec) and next unlock paths

**Checked:** 2026-11-14  
**Device:** Samsung Galaxy A26 5G SM-A266B/DS, codename a26x, Exynos 1380 / s5e8835  
**Installed firmware:** A266BXXUCDZJ6, Android 17 / One UI 9, CSC CAU  
**Rollback:** RP SWREV B:12 K:12 S:12 (binary C / 12)  
**Running kernel reported by owner:** 5.15.197-android13-3-34427544

This document records read-only source and firmware research. No device partition was written.

## 1. Ordinary TWRP `dd` route is blocked by the signed recovery descriptor

The repository's read-only AVB report is authoritative for the saved stock images:

- `a26/recovery/A26_AVB_DESCRIPTOR_REPORT_2026-11-14_RU.md`
- `a26/recovery/boot-chain-backup/vbmeta.img`
- `a26/recovery/boot-chain-backup/vbmeta_system.img`
- stock recovery dump and official TWRP TAR member.

The signed `vbmeta.img` contains a HASH descriptor for partition `recovery`:

- expected image size: **71,877,408 bytes**
- algorithm: SHA-256
- expected digest: `6b8ad8371e42811ac425d34579a97de564f7e04d3218b340c244a656974b07e7`

The stock recovery dump matches that digest. The official TWRP TAR member is **74,027,008 bytes**, has no AVB footer, and does not match the signed digest. The locally built recovery image is **74,297,344 bytes** and likewise is not the signed stock image.

Consequences:

- KernelSU/root may permit a process to write `/dev/block/sda18`, but that does not authorize SBoot/AVB to execute the result.
- Replacing recovery alone leaves the signed vbmeta descriptor unchanged.
- Replacing vbmeta with a patched/blank image is not a supported workaround while the bootloader is locked; the vbmeta signature/root-of-trust check remains.
- A test `dd` is not justified: the expected outcome is a rejected recovery and possible recovery boot failure, not a TWRP launch.

**Decision:** no `dd` to recovery, no vbmeta patch, no Odin test flash until the bootloader is independently unlocked or a verified RAM-boot path exists.

## 2. A26-specific kernel source: kexec is disabled in the published device defconfig

Located the A26-specific source repository:

- Repository: https://github.com/os-guy-original/android_kernel_samsung_a26x
- Branch: `lineage-23.2`
- Device defconfig: `arch/arm64/configs/s5e8835-a26xxx_defconfig`
- Direct file: https://github.com/os-guy-original/android_kernel_samsung_a26x/blob/lineage-23.2/arch/arm64/configs/s5e8835-a26xxx_defconfig

The A26 defconfig contains:

```text
CONFIG_IKCONFIG=y
CONFIG_IKCONFIG_PROC=y
# CONFIG_KEXEC is not set
# CONFIG_KEXEC_FILE is not set
```

The source tree's Makefile is Linux 5.15.180; its README identifies the tree as an Android 16 A26 kernel source. The current device reports kernel 5.15.197 on Android 17, so this is an A26-specific but not byte-for-byte exact match for the currently installed kernel.

The published A26 defconfig is strong evidence that ordinary `kexec_load` and `kexec_file_load` are disabled by default on this platform. It is not yet proof of the exact J6 runtime config. The same disabled KEXEC settings also appear in the public Exynos 1380 S5E8835 A54 defconfigs, which is corroborating platform evidence, not a substitute for the A26 runtime config.

Because `CONFIG_IKCONFIG_PROC=y` is set in the published A26 defconfig, `/proc/config.gz` is expected to be available on a kernel built from it. The current J6 kernel must be checked directly before closing the RAM-boot branch.

## 3. Safe runtime check

A read-only diagnostic script is committed as:

- `a26/recovery/a26-readonly-preflight.sh`

It reads only:
- kernel release and build properties;
- boot/AVB and OEM-related properties;
- `settings global oem_unlock_allowed`;
- `/proc/config.gz` KEXEC / IKCONFIG / MODULES options;
- presence of kexec userspace/sysfs interfaces;
- recovery block-device path and size;
- service-manager names matching OEM/lock/boot.

It performs no writes, does not call reboot, does not flash, and does not alter settings.

Run from a root shell in Termux:

```sh
su
sh /sdcard/Download/a26-readonly-preflight.sh
```

Interpretation:

- If the live config reports `# CONFIG_KEXEC is not set` and `# CONFIG_KEXEC_FILE is not set`, standard kexec RAM boot is closed on this running kernel.
- If one is enabled, that only justifies a separate feasibility analysis; it does not mean the existing TWRP image can safely be loaded.
- If `/proc/config.gz` is absent, use the exact J6 boot image/kernel binary to extract IKCONFIG offline. Do not infer KEXEC state from the Android version alone.

## 4. Chimera / EUB and firmware anti-rollback

The separate EUB route remains the only plausible externally documented service route, but its model page and first-party announcement conflict:

- current Chimera SM-A266B model page lists **Unlock / Relock Bootloader — EUB**;
- the A26-specific EUB launch announcement for SM-A266B/SM-A266M did not list bootloader unlock among the EUB operations;
- Chimera's 2026 Download Mode/ODIN announcement describes selected Exynos unlock support **below Android 16**, when no emtoken is required. It lists Exynos 1380 and A26, but that OS-version boundary excludes the current Android 17 build.

The firmware ladder makes downgrade-to-Android-15 an invalid workaround:

| Firmware | Android | Binary / SW REV |
|---|---:|---:|
| A266BXXU1AYB5 | 15 | 1 |
| A266BXXS2AYC1 | 15 | 2 |
| A266BXXU2AYD9 | 15 | 2 |
| A266BXXU3AYF2 | 15 | 3 |
| A266BXXS4AYGC | 15 | 4 |
| A266BXXU4BYI2 | 16 | 4 |
| A266BXXS5BYK2 | 16 | 5 |
| A266BXXS6BYL1 | 16 | 6 |
| A266BXXS7BZA3 | 16 | 7 |
| A266BXXS8BZB6 | 16 | 8 |
| A266BXXU9CZEA | 16 | 9 |
| A266BXXSBCZG2 | 16 | B (11) |
| A266BXXSCCZH3 | 16 | C (12) |
| A266BXXUCDZJ6 | 17 | C (12) |

Sources:
- Samsung official firmware history: https://doc.samsungmobile.com/SM-A266B/033189250417/eng.html
- SamFW firmware history (includes binary/SW REV column): https://samfw.com/firmware/SM-A266B/XME
- Chimera official A26 model page: https://chimeratool.com/en/models/samsung-galaxy-a26-5g-sm-a266b
- Chimera official announcement: https://t.me/chimeratool_offical/279

Since the device is already at binary C / 12, Android 15 firmware at binary 1–4 cannot be flashed without violating rollback protection. Android 16 firmware at binary C exists, but it is not "below Android 16"; therefore it does not satisfy the published boundary of the ODIN unlock procedure.

This does **not** prove the separate EUB model-page row cannot unlock Android 17. It means no compatible public evidence currently establishes that it can. Do not buy credits, open the phone, bridge pads, or pay a remote service before Chimera confirms in writing that the exact operation works on SM-A266B / A266BXXUCDZJ6 / Android 17 / BIT C / CAU.

## 5. OEM Unlock UI: distinguish display from authorization

Earlier saved device-state evidence records that the Developer Options switch was made visible after a temporary KernelSU `resetprop` change to `ro.boot.other.locked`. The owner now clarifies that when the switch is visible it can be turned ON and remains ON during that session. Maintenance Mode itself requires a reboot to enter and another reboot to exit; Developer Options is absent inside MM.

Therefore:
- the UI switch is not independent evidence that the secure bootloader accepted the request;
- a property override can expose a Settings control without changing signed SBoot policy;
- the prior OEMLockService read reported `allowed=true` but `device unlocked=false`;
- latest recorded boot properties remain `flash.locked=1`, `vbmeta.device_state=locked`, `verifiedbootstate=green`.

The complete MM/OEM switch observation record is in:
`a26/A26_MAINTENANCE_MODE_OEM_TOGGLE_2026-11-14_RU.md`.

## 6. Current ranking of paths

| Path | Evidence | Current status |
|---|---|---|
| Stock Samsung UI unlock | Switch exposed only through property override; no Device Unlock prompt | Not demonstrated |
| Standard Download Mode ODIN unlock | Chimera says below Android 16; current Android 17 | Excluded by published boundary |
| Chimera EUB | Model page lists unlock, launch announcement conflicts | Needs written exact-build confirmation |
| Flash TWRP with root `dd` | Signed AVB recovery HASH descriptor mismatches TWRP | Blocked while locked |
| Patch/blank vbmeta | Signed vbmeta root-of-trust remains | Not a viable locked-state shortcut |
| kexec RAM boot | A26 defconfig has KEXEC and KEXEC_FILE disabled | Likely blocked; exact J6 runtime config pending |
| Rebuild TWRP against J6 kernel | Useful only after bootloader unlock or proven RAM execution | Deferred |

## 7. Next concrete actions

1. Run the read-only preflight script and capture the live J6 `/proc/config.gz` result.
2. If KEXEC is disabled, close the kexec path and focus resources on the Chimera EUB exact-build support question or a documented Samsung-signed ESS authorization route.
3. Obtain written Chimera confirmation for the exact firmware and binary before any hardware/service expenditure.
4. If unlock becomes available, rebuild recovery from the exact J6 kernel/DTB and rework Android 17 FBE decryption; the existing local TWRP build is not production-ready.

**No protected partition was changed.**

## 8. Chimera EUB model-specific path update

A live retrieval of the exact official SM-A266B model page confirms that it lists both `Unlock / Relock Bootloader — EUB` and `Patch Knoxguard — EUB`. The page also links an official A26 test-point guide:
https://chimeratool.com/en/models/samsung-galaxy-a26-5g-sm-a266b?procedureId=344
https://chimeratool.com/en/test-points/1440-test-point-for-samsung-galaxy-a26-5g-models.html

The test-point guide redirects to login, so the diagram is not publicly inspectable. The official EUB documentation says most devices need hardware testpoints. The A266B is not listed in the official Switch to EUB/no-testpoint model list; assume a testpoint is required until the vendor confirms otherwise.

The global Chimera MDM guide says EUB KnoxGuard Patch unlocks the bootloader and sets KG Completed, but recommends it for Locked or Active KG states. The current phone is already KG Completed. Thus the direct Unlock/Relock Bootloader EUB entry is the clearest candidate, while Patch Knoxguard's behavior on an already-Completed device remains uncertain.

Chimera current desktop software supports Windows 10/11 only; its EULA prohibits virtual-machine use. A physical Windows 10/11 host is required for a supported workflow. No Windows VM or Wine route is assumed.

A model/build-specific support request is saved as `a26/A26_CHIMERA_SUPPORT_REQUEST_EN.md`.
