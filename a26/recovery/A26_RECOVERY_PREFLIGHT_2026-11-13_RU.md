# A26 Recovery preflight — 2026-11-13

## 1. Read-only состояние устройства

Источник: вывод владельца из Termux, 2026-11-13.

| Поле | Значение |
|---|---|
| Root | `uid=0(root) gid=0(root) context=u:r:ksu:s0` |
| Recovery by-name | `/dev/block/by-name/recovery -> /dev/block/sda18` |
| Recovery partition size | `100663296` bytes (96 MiB) |
| Slot suffix | пусто |
| Boot device | `13500000.ufs` |
| Build fingerprint | `samsung/a26xxx/a26x:17/CP2A.260605.016/A266BXXUCDZJ6_OXMCDZJ6:user/release-keys` |
| `ro.boot.other.locked` | `1` |
| `ro.boot.flash.locked` | `1` |
| `ro.boot.vbmeta.device_state` | `locked` |
| `ro.boot.verifiedbootstate` | `green` |

Root подтверждён через KernelSU. Он даёт процессу UID 0, но сам по себе не меняет состояние проверки образов в SBoot/AVB.

## 2. Артефакты в этой папке

| Путь | Размер | Назначение |
|---|---:|---|
| `stock-recovery-backup/recovery-stock.img` | 100663296 bytes | Backup штатного recovery; размер совпадает с размером раздела |
| `twrp-3.7.1_12-1-a26x.img.tar` | 74035200 bytes | TWRP Odin package |
| `boot-chain-backup/boot.img` | 67108864 bytes | Backup boot |
| `boot-chain-backup/init_boot.img` | 16777216 bytes | Backup init_boot |
| `boot-chain-backup/vendor_boot.img` | 33554432 bytes | Backup vendor_boot |
| `boot-chain-backup/dtbo.img` | 8388608 bytes | Backup dtbo |
| `boot-chain-backup/vbmeta.img` | 65536 bytes | Backup vbmeta |
| `boot-chain-backup/vbmeta_system.img` | 65536 bytes | Backup vbmeta_system |

Размер штатного recovery backup совпадает с размером блочного раздела, но побайтная сверка backup с текущим содержимым раздела в этом preflight не выполнялась.

## 3. Что подтверждает официальная страница TWRP

Официальная страница Team Win для Galaxy A26 5G:
https://twrp.me/samsung/a26x.html

- Статус устройства: Current.
- Codename: `a26x`.
- Maintainer: SavedByLight.
- Страница содержит отдельный **DD Install Method (Requires Root)** и пример записи raw `.img` в recovery.
- В каталоге загрузок опубликованы `twrp-3.7.1_12-1-a26x` (2025-12-26) и `twrp-3.7.1_12-0-a26x` (2025-11-12).

Официальные SHA-256, считанные со страницы загрузки:
- `.img`: `4b46b7e8244799c3e3309ecea960de8eccbf3e81e03da7fa49a999d1049d94ae`
- `.img.tar`: `55804d4995086a2bb43a363c1a34dea1a2fdc47c474d6315aa8a9e2ceab4b8b6`

Эти значения пока не сверены с локальным содержимым файлов из репозитория.

Важно: `.img.tar` — Odin-контейнер, не raw recovery image. Для DD-метода требуется извлечённый/отдельно скачанный `.img`. Перед любым использованием проверить SHA-256 и формат образа.

## 4. Риски совместимости с J6 / Android 17

Device tree:
https://github.com/TeamWin/android_device_samsung_a26x/tree/android-12.1

В доступной версии дерева:
- `TARGET_FORCE_PREBUILT_KERNEL := true`;
- ядро, DTB и DTBO берутся из prebuilt-файлов;
- `PLATFORM_VERSION := 14`;
- product fingerprint в `twrp_a26x.mk` относится к Android 13 / `A266BXXS4AYG9`;
- README дерева прямо говорит, что после прошивки нужно прошить blank vbmeta и wipe data, иначе возможен bootloop.

Это существенно старше установленной на аппарате сборки Android 17 / `A266BXXUCDZJ6`. Наличие официальной страницы поддержки `a26x` не доказывает совместимость опубликованного recovery image с J6.

## 5. Решение по записи через dd

**На текущем этапе не выполнять запись TWRP или blank vbmeta.**

Причины:
1. Устройство сообщает `flash.locked=1` и `vbmeta.device_state=locked`.
2. Root даёт возможность попытаться записать блок recovery, но не снимает политику проверки подписи загрузчиком.
3. Вендорское дерево TWRP предупреждает о blank vbmeta и очистке данных; изменение vbmeta при locked state несёт существенно больший риск, чем замена одного recovery-раздела.
4. Опубликованный prebuilt TWRP относится к существенно более раннему программному базису, чем J6 / Android 17.

Таким образом, надо различать:
- **write access**: UID 0 может иметь возможность записать `/dev/block/sda18`;
- **boot acceptance**: SBoot/AVB может отвергнуть неподписанный recovery при locked state.

Наличие первого не доказывает второго.

## 7. Следующий безопасный preflight

До любых write-команд:
1. Получить raw `.img` либо извлечь его из `.img.tar`.
2. Проверить SHA-256 по официальному значению выше.
3. Проверить формат и фактический размер raw image; он должен помещаться в 100663296-byte recovery partition.
4. Проверить kernel banner / DTB / ramdisk в TWRP против текущих J6 boot-chain backups.
5. Сделать локальный backup текущего `/dev/block/sda18` на пользовательское хранилище телефона и проверить его размер/хэш.

Только после этих проверок можно отдельно оценивать контролируемый тест загрузки recovery. Состояние locked/AVB и предупреждение о blank vbmeta должны быть разрешены до установки, а не игнорироваться.
