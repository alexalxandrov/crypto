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
- передаёт значение 0xF4240 (1 000 000 в десятичной системе) в fcn.001b3f80; единицы и точное назначение helper пока не доказаны;
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

Текстовые ресурсы текущего SBoot содержат сообщения STEADY partition read failed, [FMM] There is no STEADY Partition и [FMM] Lock state by STEADY. Фактическая проверка `/dev/block/by-name` на SM-A266B подтвердила `steady -> /dev/block/sda3`; подробности приведены в разделе 13.

```sh
su -c 'ls -l /dev/block/by-name | grep -iE "steady|misc|persist|metadata|efs|rpmb|keystore"'
```

Это только list/read operation. Не открывать найденные узлы на запись и не выполнять dd без отдельного плана read-only acquisition. Если будет найден steady / STEADY, следующим шагом станет только чтение размера, major/minor, symlink target и read-only hash — без записи и без изменения state.

### 11.5 Итог

Путь теперь лучше описывать так:

early policy load (STEADY) → SecureBoot signature verification → 32-byte bitmap → bit 3 / cached OEM-state consistency → MISC record lookup → recovery wipe command construction (bootloader_unlock) → additional opaque state/storage helpers → cached/persistent lock-state setter.

Это подтверждает наличие штатного Samsung unlock-related wipe logic внутри SBoot. Оно не подтверждает, что нынешняя прошивка предлагает пользователю этот путь, и не даёт основания записывать TWRP, менять STEADY/RPMB или патчить SBoot.

## 12. Уточнение нижнего backend helper fcn.00123f14

Дополнительное чтение полного тела fcn.00123f14 из global-functions.asm показывает, что прежнее описание этой функции как простого RPMB/storage writer было преждевременным.

- Она сначала вызывает fcn.00123590 и выбирает ветви в зависимости от возвращаемых capability/status flags.
- На ветках обработки диапазона вычисляет число блоков, выделяет буфер через fcn.0014237c и передаёт данные в fcn.00124e0c.
- Другая ветвь использует глобальный флаг 0x56f000+0x4e0 и структуры/команды, содержащие строки и diagnostic labels `setct_CertResTBE` и `[ICM] USB Loading Done`.
- В теле встречаются транспортные/пакетные helpers fcn.00122e14, fcn.001224ec, fcn.0014d60c и fcn.0014d5c8; функция также возвращает статусы и освобождает временный объект.

Эти признаки указывают на многоцелевой I/O/command transport path с USB/ICM-related ветками. Они **не** доказывают, что вызов из fcn.001257bc напрямую записывает RPMB или какой именно persistent field он меняет. Для этого нужно восстановить происхождение значения backend ID из 0x56f000+0x4d8, ветку fcn.00123590 и semantics/dispatch fcn.00124e0c.

Уточнённая формулировка: fcn.001257bc обновляет локальный cache, а при guard 0x56f000+0x4e8 вызывает fcn.00123f14 с backend ID, operation=1 и подготовленным object. Нижний transport/backend и destination этой операции пока не доказаны. Строка OEM %s in RPMB — диагностическая корреляция, а не достаточное доказательство конечного носителя.
## 13. Подтверждение физического раздела STEADY на устройстве (2026-11-13)

Владелец предоставил read-only вывод KernelSU shell для текущей сборки A266BXXUCDZJ6. Реальная разметка показывает:

| By-name | Block node |
|---|---|
| `steady` | `/dev/block/sda3` |
| `misc` | `/dev/block/sda23` |
| `persistent` | `/dev/block/sda22` |
| `metadata` | `/dev/block/sda28` |
| `recovery` | `/dev/block/sda18` |

Команда `readlink -f /dev/block/by-name/recovery` подтвердила `/dev/block/sda18`; `blockdev --getsize64` вернул 100663296 bytes. Для `steady` в этом сеансе подтверждён symlink `/dev/block/by-name/steady -> /dev/block/sda3`, но размер и read-only status самого `sda3` ещё не получены.

Дополнительная корреляция:
- `ro.boot.boot_devices=13500000.ufs`.
- `ro.boot.slot_suffix` пустой.
- Fingerprint: `samsung/a26xxx/a26x:17/CP2A.260605.016/A266BXXUCDZJ6_OXMCDZJ6:user/release-keys`.
- KernelSU shell работает с `uid=0(root)`, SELinux context `u:r:ksu:s0`.
- В `/sdcard/Download` не обнаружено файлов с именами `*twrp*` или `*recovery*`.

**Что подтверждено:** отдельная запись `steady` есть в Android-visible by-name map и указывает на физический UFS block partition `/dev/block/sda3`. Это снимает прежнюю неопределённость «существует ли отдельный раздел с таким именем в разметке данного телефона».

**Что не подтверждено:** это ещё не доказывает, что файл/объект, который читает конкретная функция SBoot, лежит в простом raw offset этого block node без промежуточного metadata/container layer. Наличие node не означает, что содержимое уже прочитано, корректно распознано или совпадает с объектом в bootloader RAM.

### Следующий read-only metadata probe

Получить только размер, sector count, read-only flag и sysfs uevent:

```sh
su -c '
echo "=== STEADY BLOCK METADATA ==="
readlink -f /dev/block/by-name/steady
blockdev --getsize64 /dev/block/by-name/steady
blockdev --getro /dev/block/by-name/steady
cat /sys/class/block/sda3/size
cat /sys/class/block/sda3/ro
cat /sys/class/block/sda3/uevent
echo "=== MOUNT / HOLDERS ==="
grep -w sda3 /proc/mounts || true
ls -la /sys/class/block/sda3/holders 2>/dev/null || true
echo "=== IDENTIFICATION (READ ONLY) ==="
blkid -p /dev/block/by-name/steady 2>/dev/null || true
'
```

`blockdev --getro=0` будет означать лишь, что kernel block layer не пометил node read-only; это не разрешение выполнять запись. `blkid -p` читает сигнатуры для идентификации, не модифицирует раздел. Не выполнять `dd` в сторону раздела и пока не выгружать его полное содержимое.

После получения размера можно сопоставить длину/структуру раздела с ожидаемым форматом STEADY и выбрать минимальный read-only acquisition. Никаких write-операций.
## 14. Машинный код предварительных условий STEADY loader

Дополнительная разборка raw J6 sboot.bin (ARM64, file offset = анализируемый RVA в этих диапазонах) уточнила начало fcn.00189d8c.

### 14.1 Ранние gates перед поиском STEADY

Порядок в fcn.00189d8c:

1. `bl fcn.0017d674`; результат сохраняется в `0x5a6000+0xa88`.
2. `bl fcn.0010a9a8`; функция возвращает byte из global `0x540000+0x41c`. Если значение не равно 1, fcn.00189d8c уходит в error/return path и не продолжает ветку.
3. При flag=1 вызывается `fcn.000f2f28`; нулевой возврат также ведёт в fail path.
4. Только при прохождении условий и успешном `fcn.0018996c(0x19)` выполняется дальнейший `STEADY` record lookup.

### 14.2 Что именно делают helpers

- `fcn.0017bae4` возвращает pointer из `0x5a0000+0x4b8`.
- `fcn.0017d674` вызывает этот getter, проверяет поля объекта `[ptr+0x68]` и `[ptr+0x70]`: если `+0x68` ненулевой, возвращает 0; иначе если `+0x70` ненулевой, возвращает 1; иначе возвращает 0. Это статусная проверка непрозрачного runtime object, а не чтение STEADY partition.
- `fcn.0010a9a8` — прямой getter одного byte-флага `0x540000+0x41c`; его semantic label / writer ещё не найден.
- `fcn.000f2f28` использует `fcn.000f2b34`, который читает bit 3 из слова по адресу `0x11860810`. При установленном bit 3 вызывается SMC через helper `fcn.0010a0e8` (function ID в регистре x0 = `-0xe9`); в другой ветви читается слово по адресу `0x20200064`. Затем helper проверяет формат/поля полученного status word и кэширует результат в globals `0x53a000` / `0x53a004`.

### 14.3 Границы интерпретации

Эти gates показывают, что загрузка STEADY policy не безусловна: она зависит от runtime object state, отдельного global byte flag и hardware/SMC-derived status. Но точные имена этих состояний, смысл bit 3 по адресу `0x11860810`, назначение SMC `-0xe9` и значение global `0x540000+0x41c` пока не установлены.

Важно: ни `fcn.0017d674`, ни `fcn.0010a9a8`, ни `fcn.000f2f28` сами по себе не являются OEM Unlock setters. Это предшествующие условия допуска к STEADY parsing.

Дальше путь продолжает `fcn.0018996c` (создание рабочих context buffers), поиск `STEADY` через `fcn.001758fc`, parsing, `fcn.001690d8`, SecureBoot/signature validation через `fcn.001584cc`, object finalization `fcn.00169738` и копирование 32 bytes в bitmap `0x5a6000+0xa90`.

### 14.4 Корреляция с физической разметкой телефона

Сопоставление по live by-name map завершено на уровне имени/major block target: `steady -> /dev/block/sda3`. Размер, read-only flag и формат `sda3` ещё не получены. Не утверждать, что найденный Android block node уже byte-for-byte связан с тем runtime object, который возвращает `fcn.001758fc`; для этого нужны partition metadata и read-only format identification.
## 15. Откуда берётся gate `0x540000+0x41c`: CertResTBE processing path

Дополнительный анализ `full-sboot-part-00` подтвердил writer и ранний execution context для byte flag `0x540000+0x41c`.

### 15.1 Writer `fcn.0010a57c`

- Единственный подтверждённый write в текущем SBoot disassembly: `0x0010a808 strb w9, [x8,#0x41c]`, где `w9=1` и `x8` указывает на `0x540000`.
- Инструкция находится в `fcn.0010a57c`, а не в `fcn.0010a810`.
- В той же функции при конкретной ошибочной ветви на `0x0010a6f4` логируется строка с symbol `setct_CertResTBE` (`0x26a000+0x74a`).
- До установки флага функция анализирует результат, связанный с областью `-0x5e00000`, и вызывает SMC wrappers `fcn.0010a0c8` (FID `-0x512`) / `fcn.0010a088` (FID `-0x500`), parser/record helpers и обрабатывает коды `0x1230`, `0x1231`, `0xfdaa...`.
- В ветке, которая доходит до `0x10a808`, функция уже нормализовала local return `w19` к 0, затем выставляет flag=1. Это доказывает завершение соответствующей CertResTBE-processing ветви, но не смысл certificate result и не положительную/разрешающую политику OEM Unlock.

### 15.2 Execution order и callers

В `fcn.00114100` ранняя инициализация вызывает `fcn.0010ffcc` на `0x00114190`. Внутри `fcn.0010ffcc`:

1. Выполняются DRAM encryption / security status checks (`fcn.00192678`, `fcn.001925f8`, `fcn.000f2f28`, `fcn.0010207c`, `fcn.0010a26c`).
2. В нескольких ветвях вызывается `fcn.0010a57c` (`0x1100c8`, `0x110124`, а также отдельная ветвь с SMC `0x12e`).
3. Затем идут `fcn.00124ccc`, повторная `fcn.000f2f28`, conditional `fcn.00124fa8`, `fcn.0010a810`, status cleanup, `fcn.00102220`, `fcn.0010a174` и `fcn.001039a8`.

`fcn.0010a9a8` (getter `0x540000+0x41c`) имеет callers:
- `fcn.00114100 @ 0x11446c`;
- `fcn.0017baf8 @ 0x17bb08`;
- `fcn.0017bfac @ 0x17c424`;
- `fcn.00189d8c @ 0x189dac`.

Иными словами, early-init path сначала проходит `fcn.0010ffcc` / CertResTBE processing, а позже STEADY loader `fcn.00189d8c` требует, чтобы getter `0x540000+0x41c` вернул 1.

### 15.3 Семантическая граница

На этом этапе флаг разумно описывать как **CertResTBE processing/readiness flag**, потому что он записывается внутри `fcn.0010a57c`, которая использует соответствующую diagnostic label и обрабатывает security/certificate result data. Однако нельзя пока утверждать, что:
- это валидность ESS customer token;
- это user-enabled OEM Unlock permission;
- значение 1 означает подпись сертификата успешно проверена;
- результат, переданный от SMC, тождественен STEADY signature verification в `fcn.001584cc`.

Отдельный `fcn.001584cc` signature-check внутри STEADY-record parser остаётся отдельной проверкой. Таким образом, в раннем boot sequence имеются как минимум два различимых слоя: CertResTBE readiness gate и signature validation конкретной STEADY record. Не объединять их в один certificate flag.
## 16. Live metadata STEADY на SM-A266B: размер и kernel RO (2026-11-13)

Владелец выполнил metadata-only probe из KernelSU root. Получено:

| Field | Result |
|---|---:|
| By-name target | `/dev/block/sda3` |
| `blockdev --getsize64` | `4194304` bytes = 4 MiB |
| sysfs sectors | `8192` |
| Logical sector arithmetic | `8192 × 512 = 4194304` bytes |
| `blockdev --getro` | `1` |
| `/sys/class/block/sda3/ro` | `1` |
| `DEVTYPE` | `partition` |
| `PARTN` | `3` |
| `PARTNAME` | `steady` |
| Mount in `/proc/mounts` | no match |
| `/sys/class/block/sda3/holders` | empty |
| `blkid -p` | no signature/recognized filesystem output |

The 4 MiB size is exactly consistent with 8192 sectors at 512 bytes/sector. Device reports the partition read-only in both blockdev and sysfs interfaces. This confirms kernel block-layer RO state, not hardware write-protection proof at every lower layer.

No mountpoint or holders were observed. `blkid -p` produced no recognizable filesystem signature output; this is not evidence that the partition is empty. It may be a raw proprietary metadata area or another non-filesystem format.

No partition payload was dumped in this step.

## 17. Newly recovered SBoot STEADY registry indirection

A fresh read of J6 `full-sboot-part-01` disassembly adds a concrete intermediate layer between the string `STEADY` and any physical partition backend:

- `fcn.001758fc` constructs a lookup key, then compares exactly 32 bytes against an in-RAM record array rooted at `0x59d000+0xa50`, with record stride `0x84` (132 bytes). The record count is read from `0x59d000+0xa14`.
- It uses `fcn.0014dbd8` for the 32-byte comparison. The returned pointer is adjusted to the record payload/header region; callers subsequently parse record fields.
- `fcn.00175a28` performs a similar 32-byte lookup against a second array rooted at `0x59d000+0xa70`, also stepping by `0x84`.
- `fcn.00175b28` requests an object of type/key `0x2000` via `fcn.0014237c(0x2000)`. If available, it validates a 0x2000-byte object beginning with magic `0x12349876`, processes its count/record fields, and copies 0x84-byte records into the in-RAM registry at `0x59d000+0xa10`. It ultimately publishes the count used at `0x59d000+0xa14`.
- `fcn.0014237c` is a generic linked-list/resource accessor: it checks an internal list, performs cleanup with `fcn.001422a8` when needed, then tail-calls `fcn.00206b84`. The implementation of `fcn.00206b84` has not yet been recovered in this extract, so the backing source of resource `0x2000` remains unknown.

The important correction is that `fcn.001758fc("STEADY")` is **not itself a raw block-device read**. It is an in-memory registry lookup. A physical source relationship between `sda3` and the object/record registry is still to be established.

### Updated evidence status

- Confirmed: Android by-name map points `steady` to `sda3`; partition is 4 MiB and kernel RO; no mount or holders; no filesystem signature was recognized by `blkid -p`.
- Confirmed in SBoot: STEADY lookup uses a 32-byte key in an in-RAM record catalog; catalog is populated from a separate 0x2000-byte structured object with magic `0x12349876`.
- Not confirmed: that the 0x2000-byte object is read directly from `sda3`, that its registry entries map 1:1 to GPT/by-name records, or that the complete 4 MiB partition is consumed by this path.

### Minimal next acquisition (read-only)

Read only the first 4096 bytes into a new file on `/sdcard/Download` for static header inspection; this writes a file to userdata, not to STEADY:

```sh
su -c 'dd if=/dev/block/by-name/steady of=/sdcard/Download/steady_header_4k.bin bs=4096 count=1 status=none && ls -lh /sdcard/Download/steady_header_4k.bin && sha256sum /sdcard/Download/steady_header_4k.bin'
```

Do not issue any `of=/dev/block/...` command. The target device node must appear only after `if=`. Do not acquire the full 4 MiB yet; first examine whether the first 4 KiB contains a recognizable structure and whether it is even relevant to the resource catalog.