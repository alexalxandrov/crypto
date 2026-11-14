# A26 / TWRP — исследование и состояние работ

**Устройство:** Samsung Galaxy A26 5G SM-A266B/DS  
**Codename:** `a26x`  
**SoC/platform:** Exynos 1380 / `s5e8835`  
**Исследуемая прошивка:** `A266BXXUCDZJ6`  
**Последнее обновление записи:** 2026-11-14  
**Статус:** исследование цепочки расшифровки продолжается; сборка и проверка recovery пока не завершены.

> Этот документ фиксирует исследовательское состояние. Он не является инструкцией по прошивке. Не прошивать собранный образ на устройство.

## 1. Цель и границы

Цель — получить технически корректный recovery-образ TWRP для `a26x`, с корректной разметкой boot image и исследованной поддержкой FBE/metadata encryption.

Жёсткие ограничения:
- Загрузчик устройства заблокирован; Verified Boot — green.
- Пользователь теперь явно поставил цель: получить unlock или запустить TWRP; исследовать официальные и технически обоснованные пути разрешено.
- Фактические записи в разделы, очистка userdata, unlock через сервисный инструмент и любые операции с риском потери данных/brick не выполнять без проверки точной совместимости, полной резервной копии и отдельного подтверждения непосредственно перед операцией.
- Допустимы автономный анализ исходников/образов, статические проверки, сборка образа в build-среде и read-only получение данных через ADB.
- Не выполнять непроверенные записи в recovery/vbmeta/STEADY/RPMB/MISC; не использовать downgrade ниже BIT 12.

## 2. Подтверждённая конфигурация устройства

- Модель: `SM-A266B/DS`, codename `a26x`.
- Прошивка: `A266BXXUCDZJ6`, CSC CAU.
- ОС на устройстве сообщена как Android 17 / One UI 9.
- Stock recovery ramdisk сообщает Android 13 / SDK 33; это версия recovery ramdisk, а не утверждение о версии работающей ОС.
- Kernel: `5.15.197-android13-3-34427544`, build date 2026-10-19.
- BIT / RP SWREV: B:12 K:12 S:12. Не использовать компоненты с ревизией ниже BIT 12.
- Устройство non-A/B; `ro.boot.slot_suffix` пуст.
- Раздел recovery: `/dev/block/by-name/recovery -> /dev/block/sda18`, размер 100663296 байт (96 MiB).
- Download Mode ранее показывал KG STATE COMPLETED (0), Warranty Void 0, Secure Download enabled.
- Bootloader/AVB properties: `ro.boot.other.locked=1`, `ro.boot.flash.locked=1`, `ro.boot.vbmeta.device_state=locked`, `ro.boot.verifiedbootstate=green`.

## 3. Stock recovery: извлечение и метаданные

Источник резервной копии:
`https://raw.githubusercontent.com/alexalxandrov/crypto/main/a26/recovery/stock-recovery-backup/recovery-stock.img`

SHA-256 полного stock recovery:
`d275c8bf501ddda19511320d9f2783af7a2936273927b7e3ed0d90102190b03`

Распаковка выполнена AOSP `unpack_bootimg.py`. Параметры:
- Magic: `ANDROID!`
- Header version: 2; page size: 4096; header size: 1660.
- Kernel size: 38185472 байт; ramdisk compressed size: 32643890 байт.
- Kernel load: `0x10008000`; ramdisk load: `0x10000000`.
- DTB size: 239652 байт; DTB address: `0x10000000`.
- Recovery DTBO size: 795800 байт; offset: `0x438e000`.
- OS version: 13.0.0; security patch level: 2026-10.
- Board: `SRPXK14A012`.
- Cmdline: `bootconfig buildtime_bootconfig=enable loop.max_part=7`.

Извлечённые компоненты:
| Компонент | Размер | SHA-256 |
|---|---:|---|
| kernel | 38185472 | `96b483b62393d965cb717b1625318fdd9b5f950fb8bca7c3da99882297294ff1` |
| ramdisk (compressed) | 32643890 | `3ed6148e133070fe5fa6168cb65b1ac0220a46d1e42ad9ab569114318bdfb884` |
| DTB | 239652 | `b81cfa8b2a4127b9c11dc2944c4a45cf68e0eec4ec1a6f89297c807f8a817d0d` |
| recovery_dtbo | 795800 | `f04fa39e21c39cc71b43ee1f6d5f475cd732e66a15588f5aff490d53679f9b72` |

Ramdisk после LZ4-декомпрессии: 85918976 байт, SVR4 CPIO без CRC, 751 записей.
В `prop.default`: device `a26x`, model SM-A266B, fingerprint `samsung/a26xxx/a26x:13/TP1A.220624.014/A266BXXUCDZJ6:user/release-keys`, SDK 33, patch 2026-10-05, `ro.product.first_api_level=35`, `ro.board.first_api_level=33`, board `s5e8835`, platform `erd8835`, `ro.minui.pixel_format=RGBX_8888`, VNDK 33.

Параметры, восстановленные распаковщиком для будущей офлайн-сверки mkbootimg:
```text
--header_version 2 --os_version 13.0.0 --os_patch_level 2026-10
--kernel <kernel> --ramdisk <ramdisk>
--recovery_dtbo <recovery_dtbo> --dtb <dtb>
--pagesize 0x00001000 --base 0x00000000
--kernel_offset 0x10008000 --ramdisk_offset 0x10000000
--second_offset 0x00000000 --tags_offset 0x10000000
--dtb_offset 0x0000000010000000 --board SRPXK14A012
--cmdline 'bootconfig buildtime_bootconfig=enable loop.max_part=7'
```
Round-trip воспроизведение stock image этими параметрами пока НЕ подтверждено.

## 4. Device tree и состояние сборочной конфигурации

Официальная страница TWRP: https://twrp.me/samsung/a26x.html  
Опубликованный образ: `twrp-3.7.1_12-1-a26x` (2025-12-26).  
Исходное дерево: https://github.com/TeamWin/android_device_samsung_a26x/tree/android-12.1  
Исходный commit дерева: `d7f82fe11b39c51370cf9553babdeda0117a5e5c` (2025-12-24).

Локальный путь, используемый в исследовании: `~/android/twrp-a26x/device/samsung/a26x`; предполагаемый корень дерева сборки: `~/android/twrp-a26x`.

Известные особенности старого дерева:
- В нём смешаны настройки TWRP, OrangeFox, Skyhawk/PBRP.
- `twrp_a26x.mk` содержит устаревший Android 13 fingerprint `A266BXXS4AYG9`.
- README дерева предлагает после установки прошить blank vbmeta и выполнить wipe data. Эти рекомендации НЕ выполнять.
- `BOARD_AVB_ENABLE := false`.
- `BOARD_CUSTOM_BOOTIMG_MK` закомментирован; пользовательская recipe mkbootimg не активна.
- `BOARD_MKBOOTIMG_ARGS` первоначально включал `--dtb=$(TARGET_PREBUILT_DTB)`.
- `BOARD_PREBUILT_DTBOIMAGE` используется как `--recovery_dtbo` при `BOARD_INCLUDE_RECOVERY_DTBO := true`.
- `BOARD_INCLUDE_DTB_IN_BOOTIMG` явно не задан; DTB подключается через BoardConfig args.
- На предыдущем этапе был сделан recovery-only аудит/настройка mkbootimg args по stock header. Перед любыми дальнейшими изменениями нужно перечитать локальные файлы и проверить diff; backup упоминался как `BoardConfig.mk.bak-20261114-131202`. Ничего из исходников или конфигурации не менять без отдельного согласования.

## 5. Fstab и шифрование userdata

Vendor first-stage fstab для `/data`:
```text
/dev/block/by-name/userdata /data f2fs noatime,nosuid,nodev,discard,usrquota,grpquota,fsync_mode=nobarrier,reserve_root=32768,resgid=5678,inlinecrypt latemount,wait,check,quota,reservedsize=128M,checkpoint=fs,,fscompress,fileencryption=aes-256-xts:aes-256-cts:v2+inlinecrypt_optimized+wrappedkey_v0,metadata_encryption=aes-256-xts:wrappedkey_v0,keydirectory=/metadata/vold/metadata_encryption
```

Recovery fstab содержит те же значимые параметры:
```text
/dev/block/by-name/userdata /data f2fs noatime,nosuid,nodev,discard,usrquota,grpquota,fsync_mode=nobarrier,reserve_root=32768,resgid=5678,whint_mode=fs-based,inlinecrypt latemount,wait,check,quota,reservedsize=128M,checkpoint=fs,,fscompress,fileencryption=aes-256-xts:aes-256-cts:v2+inlinecrypt_optimized+wrappedkey_v0,metadata_encryption=aes-256-xts:wrappedkey_v0,keydirectory=/metadata/vold/metadata_encryption
```

Обе записи включают:
- FBE: `aes-256-xts:aes-256-cts:v2+inlinecrypt_optimized+wrappedkey_v0`.
- Metadata encryption: `aes-256-xts:wrappedkey_v0`.
- Key directory: `/metadata/vold/metadata_encryption`.
- `inlinecrypt`, `fscompress`, `checkpoint=fs`.

Двойная запятая в `checkpoint=fs,,fscompress` присутствует в обеих записях; не исправлять без проверки парсера и исходного fstab.
Упрощённая запись `/data` в stock recovery ramdisk не доказывает отсутствие шифрования. Vendor fstab подтверждает FBE и metadata encryption с wrapped keys.

## 6. Текущий аудит TWRP crypto/FBE — точка остановки

### 6.1 Конфигурация сборки

В BoardConfig зафиксировано:
```makefile
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 14
TW_INCLUDE_CRYPTO := false
TW_INCLUDE_CRYPTO_FBE := false
TW_INCLUDE_FBE_METADATA_DECRYPT := true
BOARD_USES_METADATA_PARTITION := true
```

Ключевой вывод: `TW_INCLUDE_FBE_METADATA_DECRYPT := true` само по себе не включает соответствующий C++ путь. В `bootable/recovery/Android.mk` определения `-DTW_INCLUDE_CRYPTO`, `-DUSE_FSCRYPT`, `-DTW_INCLUDE_FBE` и `-DTW_INCLUDE_FBE_METADATA_DECRYPT`, а также основные FBE dependencies, находятся внутри `ifeq ($(TW_INCLUDE_CRYPTO), true)`.

Следовательно, при текущем `TW_INCLUDE_CRYPTO := false`:
- `Decrypt_Data()` в partitionmanager.cpp, защищённая `#ifdef TW_INCLUDE_CRYPTO`, не собирается как crypto-путь.
- FBE DE/CE code под `TW_INCLUDE_FBE` не активен.
- Одного включённого BoardConfig флага metadata decrypt недостаточно.

### 6.2 Что показал исходный код

Последний просмотренный `system/vold/MetadataCrypt.cpp`:
- Парсит metadata encryption options.
- Для `wrappedkey_v0` включает `use_hw_wrapped_key`.
- `read_key()` использует `retrieveOrGenerateKey()` и `KeyStorage`.
- `create_crypto_blk_dev()` при hardware wrapped key вызывает `exportWrappedStorageKey()`.
- Далее создаёт dm-default-key target; для wrapped key устанавливает `SetWrappedKeyV0()`.
- Значит, metadata decrypt требует рабочей цепочки Keymaster/KeyMint + KeyStorage + device-mapper target, а не только наличия fstab flags или копирования vendor .so.

Последний просмотренный `system/vold/Decrypt.cpp`:
- Подключает Binder, Keystore2 AIDL, KeyMint HardwareAuthToken, Authorization, Gatekeeper, Keymaster 4.1 и старые keystore headers.
- `Decrypt_DE()` вызывает `fscrypt_initialize_systemwide_keys()` и `fscrypt_init_user0()`.
- Этот код содержит отдельную обработку DE/CE и Synthetic Password; просмотренный диапазон закончился до полного определения пользовательских decrypt функций.
- `Decrypt_User()`, `Get_Password_Type()` и `Decrypt_User_Synth_Pass()` найдены grep-ом в том же файле (примерно строки 642, 830, 884).

Последний просмотренный диапазон `system/vold/FsCrypt.cpp`:
- `load_all_de_keys()` перебирает DE key directories, вызывает `retrieveKey()`, затем `install_storage_key()`.
- `fscrypt_initialize_systemwide_keys()` вызывает `retrieveOrGenerateKey()`, устанавливает storage key и записывает key reference.
- `fscrypt_init_user0()` создаёт необходимые каталоги, при необходимости создаёт user 0 keys, загружает DE keys и готовит DE storage.
- Это не доказывает, что CE пользовательские данные могут быть расшифрованы без успешной Keystore/KeyMint/Gatekeeper/Synthetic Password цепочки.

`system/vold/Android.bp` содержит модуль `libvold`, включающий `MetadataCrypt.cpp`, `Decrypt.cpp`, `FsCrypt.cpp`, `KeyStorage.cpp`, `Keymaster.cpp` и другие исходники. Среди shared dependencies:
- `android.hardware.security.keymint-V1-ndk_platform`
- `android.system.keystore2-V1-ndk_platform`
- `android.security.authorization-ndk_platform`
- `android.security.apc-ndk_platform`
- `android.hardware.keymaster@4.1`
- `libkeymaster4_1support`
- `libkeymint_support`
- `libkeystoreinfo`
- Gatekeeper / Binder / HIDL libraries.

### 6.3 Samsung vendor KeyMint inventory

На устройстве обнаружены:
- `/vendor/bin/hw/android.hardware.security.keymint-service`
- `/vendor/bin/vendor.samsung.hardware.security.fkeymaster-service`
- vendor KeyMint/FKeymaster init rc и VINTF manifest.
- Vendor libraries: `libskeymint10device.so`, `libskeymint_cli.so`, `libhermes.so`, `libteecl.so`, `libsecril-client.so`, Samsung KeyMint V2 AIDL и Android KeyMint V2 AIDL.
- System libraries также содержат KeyMint V1/V2/V5 AIDL, `libkeymint_support.so`, Fabric Crypto интерфейсы и FKeymaster интерфейсы.

Важная несовместимость: vendor библиотеки/службы относятся к Android 33, а обнаруженные system KeyMint V5 компоненты — к Android 37. Нельзя без проверки смешивать библиотеки разных поколений. Наличие vendor сервиса не доказывает, что recovery сможет запустить его или корректно обратиться к нему.

### 6.4 Точные ограничения текущей конфигурации

- `TW_INCLUDE_CRYPTO := false` — текущий блокирующий build switch для FBE.
- TWRP tree основан на Android 12.1, конфигурация указывает `PLATFORM_VERSION := 14`, stock recovery ramdisk SDK 33, vendor KeyMint сервисы Android 33. Это межверсионный риск; фактическую совместимость исходников и ABI нужно установить до включения crypto.
- В собранном ранее recovery root обнаруживалась `libfscrypttwrp.so`, но отсутствовал ряд ожидаемых FBE/KeyMint библиотек; отдельно проверить имя/модуль `libfscrypttwrp.so` против `libtwrpfscrypt.so` из TWRP Android.mk.
- Не копировать vendor/system KeyMint библиотеки в recovery наугад. Сначала определить точную цепочку зависимостей, интерфейсные версии, init/service manager requirements, SELinux contexts и ABI.

## 7. Последний шаг, на котором остановились (2026-11-14)

Пользователь прислал вывод объединённой команды, просматривавшей:
1. `system/vold/MetadataCrypt.cpp` — просмотрен фрагмент от начала файла; вывод обрезан внутри `fscrypt_mount_metadata_encrypted()` после блока создания crypto block device.
2. `system/vold/Decrypt.cpp` — просмотрен фрагмент до строки 280; видны AIDL/HIDL includes и `Decrypt_DE()`; остальная реализация ещё не изучена.
3. `system/vold/FsCrypt.cpp` — просмотрен фрагмент примерно 350–550; исследованы DE key loading и `fscrypt_init_user0()`.
4. `system/vold/KeystoreInfo.cpp/.hpp` — это вспомогательный класс чтения synthetic password handle из `/data/system/locksettings.db` и построения alias `synthetic_password_<handle>`.
5. `system/vold/Android.bp` — просмотрен целиком; зависимости `libvold` перечислены выше.
6. Фрагменты `bootable/recovery/Android.mk` — подтверждено, что crypto/FBE блоки и required libraries завязаны на `TW_INCLUDE_CRYPTO=true`.
7. grep по decrypt API нашёл `Decrypt_DE`, `Decrypt_User`, `Get_Password_Type`, `Decrypt_User_Synth_Pass`.
8. Все три `git log` вызова завершились ошибкой `fatal: not a git repository`; происхождение/commit текущих `system/vold` исходников пока не установлены. Не считать source provenance подтверждённым.

**Следующее конкретное действие — продолжить именно с этого места, не возвращаться к уже завершённым общим рассуждениям:**
1. Дочитать `MetadataCrypt.cpp` до конца функции `fscrypt_mount_metadata_encrypted()` и связанные `KeyStorage.cpp`, `Keymaster.cpp/.h`, `KeyUtil.cpp`.
2. Дочитать `Decrypt.cpp` от строки 250 до конца, особенно `Decrypt_User_Synth_Pass()`, `Get_Password_Type()`, `Decrypt_User()`; проследить реальные обращения к Keystore2/KeyMint/Gatekeeper.
3. Проследить `fscrypt_initialize_systemwide_keys()` → `retrieveOrGenerateKey()` → `generateStorageKey()` → `install_storage_key()` → Keymaster/KeyMint, и отдельно CE credential unlock.
4. Сопоставить исходные модули `libvold` / TWRP `libtwrpfscrypt` и выяснить, какие части действительно собираются для recovery, а какие являются зависимостями Android userspace, отсутствующими в recovery.
5. Установить, почему `git log` не видит repository: проверить `pwd`, `.repo/manifest.xml`, `git -C` для отдельных project directories и manifest revisions; не делать предположений о версии исходников.
6. Сформировать таблицу совместимости: TWRP branch/API, Android platform API, vendor KeyMint AIDL versions, init services, SELinux, нужные библиотеки.
7. Только после этого предложить минимальный план автономной сборки/статической проверки. Не менять BoardConfig или исходники без отдельного разрешения.

## 8. Этапы проекта

| Этап | Содержание | Состояние |
|---|---|---|
| 1 | Идентификация устройства, прошивки, boot/recovery layout | Завершён |
| 2 | Получение и распаковка stock recovery, контрольные суммы компонентов | Завершён |
| 3 | Аудит stock header, kernel/ramdisk/DTB/recovery_dtbo и recovery-only mkbootimg args | Исследован; round-trip ещё не подтверждён |
| 4 | Анализ device tree, fstab, partition layout и encryption flags | Основной аудит завершён |
| 5 | Исследование TWRP FBE/metadata encryption call chain | **В работе — текущая точка** |
| 6 | Инвентаризация Samsung vendor KeyMint/FKeymaster и ABI/dependencies | Инвентаризация завершена; совместимость не доказана |
| 7 | Согласование build flags и минимального набора crypto/FBE модулей | Не начат |
| 8 | Автономная сборка recovery image | Не начат |
| 9 | Статическая проверка образа: header, offsets, размер, ramdisk contents, ELF dependencies, fstab, init/SELinux | Не начат |
| 10 | Офлайн round-trip сравнение с stock и документирование результата | Не начат |
| 11 | Действия на устройстве | Цель разблокировки/TWRP явно разрешена владельцем; выполнять только после проверки конкретной процедуры, совместимости и резервной копии |

## 9. Что считать успехом

- Stock header/offsets и recovery image structure корректно воспроизводятся и подтверждены независимым разбором.
- Recovery собирается офлайн без неподтверждённых vendor blob substitutions.
- Crypto/FBE build path компилируется с согласованным набором API и библиотек.
- Статическая проверка показывает отсутствие неразрешённых ELF dependencies и наличие необходимых init/SELinux/fstab элементов.
- Фактическая расшифровка на устройстве не заявляется как подтверждённая без отдельного безопасного тестового плана и явного разрешения пользователя.

## 10. Журнал точности

- Не путать Android 17 / One UI 9 работающей системы с Android 13 / SDK 33 в stock recovery ramdisk.
- Не делать вывод об отсутствии FBE по упрощённому stock recovery fstab.
- Не считать `TW_INCLUDE_FBE_METADATA_DECRYPT := true` достаточным при `TW_INCLUDE_CRYPTO := false`.
- Не утверждать, что Samsung KeyMint совместим с текущей recovery-сборкой только потому, что vendor сервис и библиотеки присутствуют на устройстве.
- Не считать mkbootimg round-trip или recovery build завершёнными без фактических результатов.

## 11. Bootloader gate update — 2026-11-14

The owner reports that the OEM unlocking switch is temporarily visible and can be enabled, but Maintenance Mode itself requires a reboot to enter and another reboot to exit; Developer Options is absent inside Maintenance Mode. Both short and long Volume Up on the Custom OS screen lead to ordinary Download Mode without a Device Unlock confirmation prompt. The complete Download Mode screen is already transcribed in `A26_DOWNLOAD_MODE_2026-11-13_RU.md`; OEM LOCK / FRP LOCK / DEVICE STATE fields are absent.

This does not change the last recorded boot-chain state: `ro.boot.flash.locked=1`, `ro.boot.vbmeta.device_state=locked`, `ro.boot.verifiedbootstate=green`. An Android OEM Unlock switch or KernelSU root does not authorize an unsigned recovery image.

**TWRP decision unchanged: no `dd`, no blank-vbmeta write, no test flash.** Continue offline recovery/FBE compatibility research only. Any bootloader unlock path must first be independently demonstrated for this exact SM-A266B / A266BXXUCDZJ6 / BIT 12 configuration.


## 12. Chimera EUB unlock candidate — 2026-11-14

The current official Chimera model page for SM-A266B lists **Unlock / Relock Bootloader (EUB)**:
https://chimeratool.com/en/models/samsung-galaxy-a26-5g-sm-a266b

This supersedes the older statement that the first-party model page did not list bootloader unlock. Exact compatibility with A266BXXUCDZJ6 / Android 17 / BIT 12 / CAU remains unconfirmed. The August 2026 ODIN-mode unlock announcement is limited to selected models below Android 16 when no emtoken is required; do not conflate that ODIN path with the EUB feature.

Before buying credits or opening the phone, obtain written confirmation from Chimera support for the exact build, emtoken requirements, test-point requirement, data wipe and Knox consequences. See `A26_CHIMERA_EUB_BOOTLOADER_UNLOCK_2026-11-14_RU.md`.

A public A26-specific kernel source (`os-guy-original/android_kernel_samsung_a26x`, `lineage-23.2`, Linux 5.15.180) has `# CONFIG_KEXEC is not set` and `# CONFIG_KEXEC_FILE is not set` in `s5e8835-a26xxx_defconfig`. This is not the installed J6 5.15.197 config, but it weakens the in-memory kexec route. No kexec attempt is authorized.

The owner has explicitly authorized pursuing bootloader unlock or TWRP launch. No recovery write has been performed: the current bootloader remains locked, and the image still needs exact compatibility validation. Any eventual write must be preceded by a verified backup, confirmed unlock, and a final operation-specific check because a failed flash can brick the device or wipe data.


Host requirement for the newly identified Chimera EUB candidate: the official Chimera download page lists Windows 10 / Windows 11 32/64-bit. Parrot Linux, macOS and Windows 7 are not listed as supported hosts. Native Windows 10/11 is preferred; VM USB passthrough remains unverified.


## 13. SBoot boot-property confirmation — 2026-11-14

Focused J6 disassembly shows `fcn.0016f3e0` passing the format string `androidboot.other.locked=%d` with value 1 to `fcn.0017184c` at VA `0x16fe84–0x16fe90`. This matches the observed runtime `ro.boot.other.locked=1`. A KernelSU `resetprop` override can expose the Android UI switch but does not alter SBoot's signed STEADY policy or protected lock-state cache. See `a26-analysis/current/extracted/bootarg-oem-locked-and-xref-audit.asm`.

This confirms that the temporary Settings switch is not an unlock. It does not change the leading external candidate: Chimera EUB Bootloader Unlock for SM-A266B, with exact J6 / Android 17 / BIT 12 support still requiring written confirmation.
\n\n## 14. AVB proof: locked recovery partition is cryptographically bound to stock image — 2026-11-14

A read-only parser was run against the exact saved boot-chain files and the official TWRP TAR already in this repository. Full report:
`a26/recovery/A26_AVB_DESCRIPTOR_REPORT_2026-11-14_RU.md`.

Confirmed facts:
- Samsung `vbmeta.img` is a valid AVB0 image (64 KiB), algorithm type 2, signature size 512 bytes, public key size 1032 bytes.
- Its signed HASH descriptor explicitly names partition `recovery`, with image size **71,877,408 bytes** and SHA-256 digest `6b8ad8371e42811ac425d34579a97de564f7e04d3218b340c244a656974b07e7`.
- The stock recovery partition dump has an AVB footer and embedded vbmeta. Its image size and digest match the signed recovery descriptor exactly (**True**).
- The official TWRP TAR member `recovery.img` is 74,027,008 bytes, has **no AVB footer**, and its first 71,877,408 bytes do **not** match the Samsung-signed recovery digest (**False**).
- The embedded recovery vbmeta carries the same recovery HASH descriptor as the main vbmeta.

**Conclusion:** while the bootloader remains locked and AVB is green, writing the official TWRP image with root-level `dd` does not make it a valid recovery image. Android may permit the block write, but the locked boot chain has a signed recovery hash descriptor that the TWRP image fails. The official TAR image is therefore expected to be rejected at boot or cause recovery verification failure. The locally built image was not present in this repository for byte-for-byte checking; because it is not the stock image, it cannot match the same Samsung-signed recovery digest unless it is literally identical to stock.

This closes the direct-`dd`-while-locked branch. **Do not write TWRP before bootloader unlock.** A bootloader unlock (or a genuine service-level authorization that changes the trusted unlock state) is now a prerequisite. The leading external candidate remains Chimera EUB, pending written confirmation for J6 / Android 17 / BIT 12.
