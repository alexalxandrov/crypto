# A26 — Maintenance Mode, временный OEM Unlock switch и Download Mode

**Дата фиксации:** 2026-11-14  
**Устройство:** Samsung Galaxy A26 5G SM-A266B/DS  
**Прошивка:** A266BXXUCDZJ6 / Android 17 / One UI 9.0 / CSC CAU  
**Тип данных:** наблюдения владельца + сопоставление с уже сохранённым A26-specific статическим анализом.  
**Важно:** документ не утверждает, что загрузчик разблокирован, и не является инструкцией по обходу Secure Boot.

## 1. Новые наблюдения владельца (14.11.2026)

Владелец уточнил последовательность и поведение UI:

1. Переключатель **OEM unlocking** появляется временно; когда он отображается, его можно включить, и он остаётся в положении ON. Точная длительность такого состояния и сохранение после перезагрузки в этом сообщении не измерены.
2. Для входа в **Maintenance Mode (MM)** требуется перезагрузка.
3. Для выхода из MM также требуется перезагрузка.
4. Внутри MM пункт/раздел **Developer Options** вообще не отображается.
5. На экране **Custom OS** короткое и длительное нажатия Volume Up приводят к обычному Download Mode; отдельное подтверждение Device Unlock не появляется.
6. После перехода в обычный Download Mode дальнейшие нажатия кнопок не открывают отдельного меню разблокировки.

Это уточняет прежние записи: MM нельзя считать местом, где можно открыть Developer Options и включить OEM Unlock. Поскольку обе границы MM требуют reboot, нельзя предполагать, что временно показанный Android-переключатель переживёт переход в другой режим.

## 2. Download Mode — уже завершённый сбор

Полная перепись ODIN MODE от 13.11.2026 сохранена в:

- `A26_DOWNLOAD_MODE_2026-11-13_RU.md`
- `A26_DEVICE_STATE_2026-11-13_RU.md`

Владелец подтвердил, что перепись исчерпывающая. На экране отсутствуют строки `OEM LOCK`, `FRP LOCK` и `DEVICE STATE`; никаких дополнительных строк нет.

Отсутствие этих строк означает только отсутствие соответствующих полей в отображаемом экране. Оно не равно значению OFF, ON, LOCKED или UNLOCKED. Повторно запрашивать перепись экрана не требуется.

Наблюдение о клавишах также фиксируется как результат именно на текущем аппарате/прошивке: стандартная ветка подтверждения Device Unlock не появляется; пользователь попадает в обычный Download Mode.

## 3. Разделять четыре разных состояния

| Состояние | Что оно означает | Текущий вывод |
|---|---|---|
| Android UI: OEM unlocking switch | Разрешение/переключатель на уровне Android Settings/OEMLockService | Временное отображение и возможность включить подтверждены владельцем; это не доказывает unlock |
| Android OEMLockService: `allowed` | Разрешает ли framework запрос изменения состояния | В предыдущем read-only результате было `allowed=true`; это не означает, что SBoot принял запрос |
| Bootloader state | Фактическое состояние, используемое цепочкой загрузки | Последние зафиксированные свойства: `flash.locked=1`, `vbmeta.device_state=locked`, `verifiedbootstate=green`; после этого нового read-only снимка не было |
| Download Mode Device Unlock UI | Предлагает ли текущая конфигурация штатное подтверждение разблокировки | По наблюдению владельца, ветка подтверждения не появляется; экран ODIN MODE не содержит OEM LOCK field |

Не смешивать Android UI permission с фактическим состоянием загрузчика. Также не трактовать `KG STATE: COMPLETED (0)` как OEM unlock state.

## 4. Сопоставление с A26 SBoot / STEADY

В репозитории уже есть A26-specific статические результаты:

- `A26_ESS_LOCKSTATE_ANALYSIS_2026-11-13_RU.md`
- `A26_LOCKSTATE_TRUTH_TABLE_2026-11-13_RU.md`
- `A26_UNLOCK_RECOVERY_RESEARCH_2026-11-13_RU.md`
- `a26-analysis/current/extracted/oem-lockstate-callchain.asm`
- `a26-analysis/current/extracted/fcn.001690d8.asm`
- `a26-analysis/current/extracted/fcn.001690d8-callers.asm`

Установленная последовательность на уровне статического анализа:

```text
early SBoot initialization
  → PIT resource acquisition / parsing
  → STEADY record lookup
  → metadata/object parsing
  → SecureBoot signature-validation path
  → 32-byte policy bitmap
  → bit 3 / cached lock-state reconciliation
  → MISC object + recovery wipe-related processing
  → state setter / backend request
```

Границы доказанности:

- Подтверждено в J6 SBoot: STEADY record находится через RAM-каталог, построенный из PIT resource; перед публикацией policy bitmap присутствует SecureBoot/signature-check path.
- Подтверждено: bit 3 участвует в сверке с cached state; на согласованных ветках setter получает инверсию bit 3.
- Подтверждено: в соответствующем SBoot пути присутствует формирование recovery arguments с reason `bootloader_unlock`.
- Не подтверждено: что bit 3 в A26 называется именно OEM Unlock / Mode 3; что numeric state 0/1 имеет установленную полярность locked/unlocked; что текущий телефон получил допустимую подписанную policy; что Android switch способен изменить эту policy.
- Не подтверждено: доступный конечному пользователю механизм получения/установки подписанного ESS authorization для этого экземпляра SM-A266B.

Следовательно, включение Android-переключателя не является заменой STEADY policy, подписи или решения SBoot. Изменение runtime property через KernelSU `resetprop` также не меняет подписанный источник policy в загрузчике.

## 5. Техническое решение на текущем этапе

**Штатный unlock через наблюдаемую клавиатурную ветку сейчас не подтверждён и на этом аппарате не проявляется.** Maintenance Mode не предоставляет Developer Options и требует перезагрузок; использовать его как переходный путь бессмысленно.

Не выполнять:

- запись TWRP в `/dev/block/sda18`;
- запись blank vbmeta;
- любые записи в STEADY, RPMB, MISC или другие защищённые области;
- downgrade ниже RP SWREV 12;
- патчинг SBoot, подмену DID, установку неподписанных/экспериментальных токенов.

Root через KernelSU подтверждает права процесса Android, но не изменяет ключи доверия или решение SBoot/AVB. Сохранённая резервная копия recovery остаётся страховочной копией, а не разрешением на запись.

## 6. Следующие автономные исследовательские задачи

Все следующие действия относятся к статическому анализу уже имеющихся артефактов, а не к экспериментам с записью на устройство:

1. Проследить A26-specific callers `fcn.0017af7c` (`fcn.0017eb34`, `fcn.00183e40`) и определить, откуда приходит значение, которое диагностически связывается с `get_oem_unlock_val`.
2. Завершить анализ PIT → SCSI resource backend: установить selector и единицы offset для `STEADY`, затем сопоставить их с подтверждённой геометрией `sda3` (start 36 MiB, size 4 MiB).
3. Найти A26-specific таблицу/enum, которая даёт имя bitmap bit 3; не переносить название Mode 3 с S24 Ultra.
4. Разобрать границу Engineering Mode client → vendor HAL → TLC/TEEGRIS → ESS response validation/install. Отдельно установить, существует ли документированный канал выпуска подписанного разрешения для SM-A266B/CAU.
5. Проверить, какие события/условия вызывают штатный unlock wipe-flow; не считать само наличие строки `--reason=bootloader_unlock` доказательством пользовательской доступности.

## 7. История доказательств и источники внутри репозитория

- `a26/A26_DEVICE_STATE_2026-11-13_RU.md` — профиль ПО и актуальная перепись Download Mode.
- `a26/A26_DOWNLOAD_MODE_2026-11-13_RU.md` — исчерпывающая перепись ODIN MODE.
- `a26/A26_ESS_LOCKSTATE_ANALYSIS_2026-11-13_RU.md` — SBoot customer-token/lock-state synchronizer.
- `a26/A26_LOCKSTATE_TRUTH_TABLE_2026-11-13_RU.md` — точная таблица ветвления bit 3 и cached state.
- `a26/A26_UNLOCK_RECOVERY_RESEARCH_2026-11-13_RU.md` — STEADY, PIT, SCSI, SecureBoot и recovery wipe-flow.
- `a26/TWRP_RESEARCH_STATUS.md` — отдельное исследование recovery/FBE и запрет на тестовую запись при locked state.

**Итог:** временно включаемый Android OEM Unlock switch — наблюдение уровня UI/framework. Maintenance Mode не содержит Developer Options и не решает переход в Download Mode. На последнем зафиксированном состоянии bootloader/AVB остаётся locked; подтверждённого способа unlock для текущего SM-A266B / A266BXXUCDZJ6 пока нет.
