# A26 unlock / recovery feasibility — 2026-11-13

## 0. Executive result

Target: Samsung Galaxy A26 5G **SM-A266B/DS**, CSC CAU, Android 17 / One UI 9, build **A266BXXUCDZJ6**, bootloader revision **C / 12**.

As of this research pass, no reproducible end-user unlock procedure or verified custom-recovery boot method has been identified for this exact firmware. The standard Download Mode unlock branch does not appear on the owner's device: after the Maintenance Mode route, both short and long Volume Up on the Custom OS warning proceed to ordinary Download Mode.

This is not proof that Samsung permanently removed unlocking on every SM-A266B. It is evidence that the expected SBoot Device Unlock path is not offered in the current observed configuration.

**Do not write TWRP or blank vbmeta with `dd`. Do not downgrade below revision 12.**

## 1. Current observed state

Owner-provided read-only output:

| Item | Value |
|---|---|
| KernelSU root | `uid=0(root)`, context `u:r:ksu:s0` |
| Recovery block device | `/dev/block/sda18` |
| Recovery size | `100663296` bytes (96 MiB) |
| Slot suffix | empty |
| Boot device | `13500000.ufs` |
| Build fingerprint | `samsung/a26xxx/a26x:17/CP2A.260605.016/A266BXXUCDZJ6_OXMCDZJ6:user/release-keys` |
| `ro.boot.other.locked` | `1` |
| `ro.boot.flash.locked` | `1` |
| `ro.boot.vbmeta.device_state` | `locked` |
| `ro.boot.verifiedbootstate` | `green` |
| `ro.oem_unlock_supported` | empty |
| `settings get global oem_unlock_allowed` | Binder/settings service transaction failed; no value obtained |

The complete Download Mode screen has already been captured in `A26_DOWNLOAD_MODE_2026-11-13_RU.md`. It shows `KG STATE: COMPLETED (0)`, `WARRANTY VOID: 0`, `CURRENT BINARY: SAMSUNG OFFICIAL`, `SECURE DLD: ENABLED` and RP SWREV 12. It contains no `OEM LOCK`, `FRP LOCK` or `DEVICE STATE` row. Do not infer a value for a missing row.

### 1.1 Correction: Android OEMUnlock UI/service results

The handoff dossier records that the Settings OEM Unlocking switch became visible only after the owner used KernelSU `resetprop` to change the runtime value of `ro.boot.other.locked` to `0`, then refreshed/restarted Settings. The switch was subsequently enabled.

The earlier Android OEMLockService read-only query returned:
- carrier allowed = true;
- user allowed = true;
- overall allowed = true;
- device OEM-unlocked = false.

These are Android framework/service values, not evidence that Samsung SBoot accepted an unlock request. AOSP itself models "OEM unlocking allowed" separately from "device is unlocked"; the latter is not implied by the former:
https://android.googlesource.com/platform/frameworks/base/+/master/services/core/java/com/android/server/oemlock/OemLockService.java

Do not cite the UI switch or the three `allowed=true` results as proof that the bootloader is unlockable. The current boot properties and failed Download Mode unlock branch remain the stronger evidence about the state actually reported by the boot chain.

## 2. Why the current TWRP TAR is not a `dd` input

Files currently present in `a26/recovery`:

| Path | Size |
|---|---:|
| `twrp-3.7.1_12-1-a26x.img.tar` | 74,035,200 bytes |
| `stock-recovery-backup/recovery-stock.img` | 100,663,296 bytes |
| `boot-chain-backup/boot.img` | 67,108,864 bytes |
| `boot-chain-backup/vendor_boot.img` | 33,554,432 bytes |
| `boot-chain-backup/init_boot.img` | 16,777,216 bytes |
| `boot-chain-backup/dtbo.img` | 8,388,608 bytes |
| `boot-chain-backup/vbmeta.img` | 65,536 bytes |
| `boot-chain-backup/vbmeta_system.img` | 65,536 bytes |

The TAR is an Odin container, not a raw recovery image. Writing the TAR bytes directly to `/dev/block/sda18` would not install the contained image. The owner also reported that `/sdcard/Download` contained no TWRP/recovery files at the time of the read-only inventory.

The stock backup size matches the current recovery partition size, but this report does not claim that the backup has been byte-for-byte compared with the live partition.

## 3. TWRP compatibility

Official TeamWin device page:
https://twrp.me/samsung/a26x.html

Official download directory:
https://dl.twrp.me/a26x/

The public downloads identified for `a26x` are:
- `twrp-3.7.1_12-0-a26x` — 2025-11-12;
- `twrp-3.7.1_12-1-a26x` — 2025-12-26.

The published device tree is:
https://github.com/SavedByLight/android_device_samsung_a26x/tree/android-12.1

The available tree uses a prebuilt kernel/DTB set, identifies an older Android platform/fingerprint, and documents a blank-vbmeta / data-wipe requirement. The public materials do not establish that either published image was built or tested against Android 17 / One UI 9 / A266BXXUCDZJ6 / BIT 12.

Therefore, general TeamWin support for codename `a26x` is not the same as verified compatibility with this current firmware.

## 4. AVB and the meaning of `dd`

The existing recovery preflight records a recovery SHA-256 hash descriptor in the stock J6 `vbmeta.img`. The expected descriptor applies to the stock recovery image. Replacing recovery with a different image changes the bytes/digest.

With the currently observed state:
- `ro.boot.flash.locked=1`;
- `ro.boot.vbmeta.device_state=locked`;
- `ro.boot.verifiedbootstate=green`;

a normal custom recovery image is not authenticated by the stock locked boot chain. Root inside the already-running Android kernel does not replace the SBoot trust key, alter a Samsung signature, or rewrite the signed parent vbmeta metadata.

Android Verified Boot reference:
https://android.googlesource.com/platform/external/avb/+/master/README.md

Consequences:
- root may provide block write permission, but write permission is not boot permission;
- `dd` does not sign TWRP or disable SBoot verification;
- blank vbmeta is not a supported way around a locked boot chain;
- the stock recovery backup is useful for preservation, but does not make an unverified write safe.

**Decision: no `dd` write, no blank-vbmeta write, no test flash.**

## 5. Professional service-tool evidence: Chimera

This point corrects an earlier over-optimistic interpretation of a third-party reseller listing.

### First-party model page

Chimera's own model page for **SM-A266B** lists these available procedures/modes: Bypass KnoxGuard (ADB), Change CSC (ADB/EUB), Device Info (ODIN), Factory Reset (EUB/MODEM), Get Info (EUB/ADB/MODEM), Network Factory Reset (EUB), Patch KnoxGuard (EUB), Read Codes (EUB), Reboot (ADB), Reboot to Download (MODEM), Remove Common Criteria/FMM/Lost Mode/MDM (EUB), Remove FRP (MODEM), Repair Boot/Serial (EUB), Reset Battery Status (EUB), Store/Restore backup (EUB), Restore Security Backup (EUB), and Update Firmware (ODIN).

The exact page does **not** list **Unlock / Relock Bootloader** among the SM-A266B features:
https://chimeratool.com/en/models/samsung-galaxy-a26-5g-sm-a266b

Chimera's general EUB support article lists bootloader-unlock support for selected named devices (including some A-series devices such as A25 variants) but does not list SM-A266B in its bootloader-unlock model list:
https://chimeratool.com/docs/all-supported-exynos-models

The generic feature page describes bootloader unlock across supported models, but a generic feature description is not confirmation for this device:
https://chimeratool.com/en/features/unlock-relock-bootloader

### Conflicting reseller claim

A third-party page advertises "Unlock / Relock Bootloader (EUB)" for SM-A266B:
https://news.halabtech.com/samsung-samsung-galaxy-a26-5g-sm-a266b-chimera-en-2026-03

This conflicts with Chimera's own per-model feature list. It does not specify A266BXXUCDZJ6, Android 17, binary revision 12 or a successful job log. Treat it as unverified marketing/catalog data, not a confirmed method.

**Do not pay for this operation or open the phone solely on the basis of the reseller row.** Before any service, request written confirmation from Chimera/support or the shop for all of:
- exact model SM-A266B (not A266U/U1/M);
- build A266BXXUCDZJ6;
- Android 17 / One UI 9;
- binary/rollback revision 12;
- operation explicitly named *Bootloader Unlock*, not FRP removal, KnoxGuard servicing, repair boot, factory reset or backup;
- whether the method requires EUB/test point and whether data is erased.

## 6. Can KernelSU boot TWRP without unlocking?

No tested A26-specific chainloader was found. A theoretical route is Linux `kexec`, which could replace the currently running kernel without returning through SBoot. But this is not established on the installed kernel:

- the public A26 kernel source found during research identifies itself as Android 16, not the owner's Android 17 J6 kernel;
- no exact J6 kernel config was located;
- no A26/Exynos-1380-specific tested kexec-hardboot, reset path, or TWRP chainloader was found;
- even `CONFIG_KEXEC=y` would prove only that the kernel compiled a kexec interface, not that Samsung's Exynos hardware can safely transition to the TWRP kernel or that signature/policy restrictions permit it.

Public kernel tree:
https://github.com/os-guy-original/android_kernel_samsung_a26x

A full TWRP boot must take control of kernel/init, storage, display, input, USB gadget and recovery services before Android starts. Launching TWRP binaries inside a `chroot` under the existing Android kernel is not a real recovery boot. It may permit selected command-line utilities, but it does not provide reliable ownership of filesystems, recovery init, hardware drivers or FBE/keymaster decryption. Do not use a chrooted imitation for destructive partition operations.

Likewise:
- `adb reboot recovery` requests the normal recovery target; it does not inject a custom image;
- Samsung Download Mode/Odin is not ordinary bootloader fastboot;
- fastbootd is a userspace service, not a bootloader unlock or pre-boot RAM-boot bypass;
- no SM-A266B path for `fastboot boot twrp.img` while SBoot is locked has been verified.

AOSP recovery/bootloader reference:
https://source.android.com/docs/core/architecture/bootloader/recovery-images

## 7. Only useful next diagnostic: inspect kexec support, read-only

Run this in ordinary Android with KernelSU root. It only reads kernel configuration and symbol tables; it does not load another kernel or write any partition.

```sh
su -c '
echo "=== RUNNING KERNEL ==="
uname -a
cat /proc/version

echo "=== KEXEC CONFIG ==="
if [ -r /proc/config.gz ]; then
  gzip -dc /proc/config.gz | grep -E "^(CONFIG_(IKCONFIG|IKCONFIG_PROC|KEXEC|KEXEC_FILE|KEXEC_SIG|KEXEC_SIG_FORCE)=|# CONFIG_(KEXEC|KEXEC_FILE|KEXEC_SIG|KEXEC_SIG_FORCE|IKCONFIG_PROC) is not set)"
else
  echo "/proc/config.gz unavailable"
fi

echo "=== KEXEC SYMBOLS ==="
grep -E "(__arm64_sys_kexec_load|__arm64_sys_kexec_file_load|sys_kexec_load|sys_kexec_file_load)" /proc/kallsyms 2>/dev/null || echo "symbols absent or hidden"

echo "=== KEXEC DISABLED FLAG ==="
if [ -r /proc/sys/kernel/kexec_load_disabled ]; then
  cat /proc/sys/kernel/kexec_load_disabled
else
  echo "flag unavailable"
fi

echo "=== KERNEL LOCKDOWN / LOGS ==="
dmesg 2>/dev/null | grep -iE "kexec|lockdown|verified boot|avb" | tail -n 40
'
```

Interpretation:
- `CONFIG_KEXEC=y` is a necessary clue, not a working solution.
- `CONFIG_KEXEC_FILE=y` indicates the file-based interface was compiled.
- `CONFIG_KEXEC_SIG_FORCE=y` may impose signature requirements on file-based kexec.
- `kexec_load_disabled=1` means the legacy interface is disabled for this boot.
- absent `/proc/config.gz` or hidden `kallsyms` is inconclusive.
- **Do not run kexec, kexec-tools, or a test image.** First establish kernel configuration and whether a device-specific transition can exist.

If kexec is absent/disabled, the currently available evidence leaves no full TWRP boot path while SBoot is locked. If present, it only justifies another source-level compatibility investigation; it does not yet justify attempting a boot.

## 8. Anti-rollback

The Download Mode screen reports RP SWREV B/K/S 12. Do not flash firmware, bootloader, vbmeta, recovery or related components from a lower rollback revision. A downgrade path below revision 12 is not a candidate unlock method.

## 9. Current decision matrix

| Route | Current finding | Decision |
|---|---|---|
| Standard Volume Up Device Unlock | Branch not offered on current device | Not available in observed state |
| OEM switch / Android OEMLockService | UI was exposed through runtime property override; allowed=true is not SBoot unlock | Not proof |
| TWRP via `dd` | AVB/SBoot locked; stored file is Odin TAR, not raw image | Do not write |
| Blank vbmeta | Does not authorize unsigned image under locked boot chain | Do not write |
| Chimera EUB bootloader unlock | First-party SM-A266B list does not include bootloader unlock; third-party page conflicts | Unverified |
| KernelSU + kexec | Theoretical only; installed J6 kernel config and Exynos transition unverified | Read-only config check only |
| TWRP in chroot | Not a booted recovery; insufficient for safe recovery operations | Not a substitute |

The next useful result is the read-only kexec diagnostic in section 7. Do not repeat Download Mode screen collection; it is already complete in the dossier.


## 10. Новое подтверждение: boot-time bitfield загружается из STEADY и проходит SecureBoot-проверку

Новая сверка выполнена по полным disassembly-блокам full-sboot-part-00/01 и raw sboot.bin (ARM64, flat image, RVA=file offset для рассматриваемых адресов).

### 10.1 Источник bitmap

- Глобальный bitmap расположен по адресу 0x5a6000+0xa90, размер 32 байта.
- fcn.001895dc(bit) читает отдельный бит из этого массива; bit=3 используется в OEM lock-state reconciliation.
- fcn.0018962c ищет внутреннюю запись с ключом STEADY (строка по 0x26fe25) и обрабатывает её данные.
- В успешной ветке функция копирует 32 байта из parsed object+0x120 в 0x5a6000+0xa90 через fcn.0014d60c (копирование памяти).
- fcn.00189d8c вызывается из ранней инициализации fcn.00114100 по адресу 0x1142ac; внутри она подготавливает обработку STEADY и в конце вызывает fcn.0018962c.

### 10.2 Проверка SecureBoot перед публикацией bitmap

В fcn.0018962c прослеживается следующий порядок:

1. fcn.001690d8 обрабатывает структуру/метаданные и формирует промежуточное представление.
2. fcn.001584cc вызывается для следующего этапа проверки объекта. Внутри функции присутствует явный diagnostic text: "SecureBoot: [%s] Check digital signature fail. (Booting stop: 0x%x)". В ветках с соответствующими version/flag conditions функция вызывает fcn.00163120 и выполняет проверки подписи/сертификатных полей.
3. Caller проверяет результат fcn.001584cc: ненулевой результат переводит обработку в error path; нулевой позволяет продолжить.
4. fcn.00169738 обрабатывает/собирает parsed object; после успешного статуса и соответствующего object flag выполняется копирование bitmap.

fcn.00188738 не следует называть самостоятельным криптографическим verifier: его тело повторно ищет STEADY через fcn.001758fc и передаёт найденные поля парсеру fcn.001392bc. Фактическая явная SecureBoot/signature-check ветка в данном пути находится в fcn.001584cc.

### 10.3 Следствие для текущего OEM Unlock

Уточнённая цепочка теперь имеет вид:

early init → STEADY record → metadata parse → SecureBoot signature checks → 32-byte bitmap → bit 3 → fcn.0017dfdc → cached OEM lock state.

Это объясняет, почему Android-переключатель, включая его принудительное отображение через runtime resetprop, сам по себе не меняет ветвление SBoot: источник bit 3 — не Android Settings и не ro.boot.other.locked, а bitmap, формируемый из STEADY metadata в boot-time path.

**Ограничения вывода:**
- Семантика bit 3 именно как "user-requested OEM unlock" всё ещё не доказана по отдельным callers/metadata definition. Доказана только его связь с SBoot lock-state reconciliation.
- Наличие SecureBoot signature-check в пути загрузки STEADY делает произвольное изменение bitmap на стороне Android недостаточным и не подтверждает, что можно заменить саму запись без действительной подписи.
- Точное физическое хранилище исходной записи STEADY пока не установлено. Внутренний record lookup root 0x59d000+0xa50 и stride 0x84 — это RAM table lookup, а не доказательство конкретной eMMC/UFS/RPMB partition.
- fcn.001257bc обновляет cache 0x56f000+0x8f0 и вызывает generic storage/backend wrapper fcn.00123f14 при ready guard. Сообщение "OEM %s in RPMB" — диагностическая строка; без полного подтверждения нижнего backend call-chain её недостаточно, чтобы утверждать, что конкретная операция напрямую пишет RPMB.

**Практический вывод:** запись в recovery через dd и изменение Android property не решают текущую проблему. Следующий важный объект анализа — происхождение и provisioning записи STEADY / содержимого bitmap до передачи в этот ранний SBoot parser, а также точная семантика bit 3. До этого нет обоснованного безопасного способа менять соответствующий lock policy.

## 11. Новая корреляция: SBoot lock-state path строит recovery wipe-команду

Проверен полный ARM64-блок fcn.0017dfdc и call-chain extract oem-lockstate-callchain.asm. Это уточняет назначение функции и устраняет старую ошибку в caller map.

### 11.1 Фактическая последовательность вызовов

Подтверждённая цепочка:

fcn.00115610 @ 0x00115628
  → fcn.0017df80
    → fcn.0017dfdc

Функция fcn.00115610 сначала запускает OEM/Customer-token lock-state synchronizer через fcn.0017df80. Позднее она выбирает один из response-processing handlers: fcn.00153180 или fcn.00153998. Эти handlers — соседние последующие ветви, а не прямые callers fcn.0017dfdc. Поэтому прежняя интерпретация callsite 0x1534e8 / 0x153d00 как прямых вызовов synchronizer неверна.

### 11.2 Recovery command внутри synchronizer

После precheck, сравнения bit 3 с cached OEM lock state и успешного поиска записи MISC (fcn.001758fc, pointer 0x250000+0xd3d), fcn.0017dfdc:

- читает/подготавливает связанный объект через fcn.00177854;
- выполняет задержку 1 000 000 микросекунд (значение передаётся в fcn.001b3f80);
- формирует строку через fcn.0014b120 с format/source pointer 0x2691ec;
- строка по 0x2691ec в текущем J6 string scan декодируется как:
  "recovery\n--wipe_data\n--reason=bootloader_unlock\n--locale=en_US\n";
- передаёт получившийся буфер далее в fcn.001392bc;
- затем вызывает fcn.0016e57c, fcn.001503d0, fcn.00150b58 и state setter fcn.001257bc(w19).

fcn.0014b120 в проверенном call-chain extract использует fcn.0014b248 для форматирования строки в caller-provided buffer; это helper уровня vsnprintf/formatting, а не сам механизм reboot или запись в раздел. Само наличие recovery command в этой функции доказывает, что SBoot содержит wipe-flow с reason bootloader_unlock, но не доказывает, что он запускается именно нажатием пользователем кнопки unlock в текущем меню.

### 11.3 Что это значит для практического unlock

Это самая конкретная до сих пор найденная привязка OEM lock-state synchronizer к штатному unlock wipe-пути:

- SBoot уже знает точный recovery reason bootloader_unlock;
- этот путь встроен в раннюю синхронизацию state, которая вызывается до выбора последующих response handlers;
- для прохода до этой команды функция требует согласованности bit 3 и cached lock state, успешно находит MISC record, после чего выполняет несколько дополнительных обработок;
- bit 3 сам по себе не является доказанным пользовательским разрешением; его содержимое поступает из проверенного STEADY-policy bitmap (раздел 10).

Не установлено: какой внешний event/state приводит к прохождению этого branch; роль и формат всех аргументов fcn.001392bc / fcn.0016e57c / fcn.001503d0 / fcn.00150b58; что именно передаётся в recovery subsystem; как нижний storage backend fcn.00123f14 отображает setter request в persistent storage. Поэтому это не готовая команда unlock и не подтверждённый bypass.

### 11.4 Read-only проверка наличия STEADY block node на самом A26

Текстовые ресурсы текущего SBoot содержат сообщения STEADY partition read failed, [FMM] There is no STEADY Partition и [FMM] Lock state by STEADY. Чтобы сопоставить это с реальной разметкой конкретного SM-A266B, достаточно прочитать имена block symlinks:

```sh
su -c 'ls -l /dev/block/by-name | grep -iE "steady|misc|persist|metadata|efs|rpmb|keystore"'
```

Это только list/read operation. Не открывать найденные узлы на запись и не выполнять dd без отдельного плана read-only acquisition. Если будет найден steady / STEADY, следующим шагом станет только чтение размера, major/minor, symlink target и read-only hash — без записи и без изменения state.

### 11.5 Итог

Путь теперь лучше описывать так:

early policy load (STEADY) → SecureBoot signature verification → 32-byte bitmap → bit 3 / cached OEM-state consistency → MISC record lookup → recovery wipe command construction (bootloader_unlock) → additional opaque state/storage helpers → cached/persistent lock-state setter.

Это подтверждает наличие штатного Samsung unlock-related wipe logic внутри SBoot. Оно не подтверждает, что нынешняя прошивка предлагает пользователю этот путь, и не даёт основания записывать TWRP, менять STEADY/RPMB или патчить SBoot.
