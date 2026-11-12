# Досье передачи исследования: Samsung Galaxy A26 5G (SM-A266B)

**Дата подготовки:** 12 ноября 2026 г.  
**Назначение:** передача новому ИИ/инженеру для самостоятельного продолжения исследования с нуля, без потери уже собранных материалов.  
**Основной репозиторий:** <https://github.com/alexalxandrov/crypto>  
**Исходная опубликованная переписка:** <https://chatgpt.com/share/6af4f13c-d1a4-83ed-baf6-1903be270304>

---

## 0. Самое важное для принимающей модели

Задача пользователя — разобраться, существует ли реальный, воспроизводимый способ разблокировать загрузчик **собственного Samsung Galaxy A26 5G SM-A266B** на текущей прошивке. Исследование должно быть основано прежде всего на бинарниках именно SM-A266B, а не на переносе методов с других Samsung.

Работа уже далеко не на стадии общих советов Android: в публичном репозитории лежат исходные пакеты прошивок, извлечённые компоненты загрузчика, `sboot.bin`, дизассемблирования ARM64, индексы функций, сканы строк, выгрузки системных библиотек Engineering Mode и отдельные трассировки STEADY/RPMB. Сначала необходимо изучить и перепроверить эти артефакты. Не начинай с повторения очевидных поисковых запросов и не проси пользователя вручную пересказывать прошлую работу.

**Последнее подтверждённое состояние:** загрузчик всё ещё не разблокирован. В опубликованной переписке прежний ассистент сообщил, что работал с бинарником офлайн и телефон к анализу не подключал. Нет подтверждения, что после этой переписки состояние телефона не менялось.

**Главный текущий исследовательский узел:** функция SBoot `0x001690d8` (индекс показывает 444 строки/инструкции в выгрузке) и её вызывающие функции, а также путь Samsung Engineering Mode / ESS V1 / токен / STEADY / RPMB. В репозитории есть подтверждённые ARM64 call-sites к `0x1690d8`, но полноценное тело этой функции в некоторых индексированных текстовых файлах не обнаружено либо не извлечено. Его нужно воспроизвести из оригинального бинарника/полного дизассемблирования.

**Не считать доказанным:** что Samsung выдаст ESS-токен с правом OEM Unlock; что режим `3` разрешён конкретному устройству; что найденная функция `0x1690d8` — именно финальный переключатель режима; что поведение S24 Ultra совпадает с A26; что локально сформированный запрос можно превратить в подписанный токен без Samsung.

**Безопасность:** пока не выполнять прошивку, downgrade, `fastboot flashing unlock`, запись в RPMB/STEADY, установку экспериментального токена, изменение DID, патчинг `sboot` или любые другие write-операции. Сначала — исключительно статический анализ и read-only сбор данных. Устройство не должно становиться тестовым стендом для неподтверждённых гипотез.

---

## 1. Идентификация устройства и прошивки

| Поле | Значение / статус |
|---|---|
| Устройство | Samsung Galaxy A26 5G |
| Модель | `SM-A266B` |
| Актуальная прошивка из архива | `A266BXXUCDZJ6` |
| Полное имя пакета BL в репозитории | `BL_A266BXXUCDZJ6_A266BXXUCDZJ6_MQB116271260_REV00_user_low_ship_MULTI_CERT.tar.md5` |
| Версия Android | Android 17 — подтверждено официальной страницей обновления Samsung |
| One UI | One UI 9 — подтверждено официальной страницей Samsung |
| Дата выпуска сборки | 27 октября 2026 г. — Samsung |
| Уровень патча безопасности | 5 октября 2026 г. — Samsung |
| Bootloader binary / SW REV | В предыдущем исследовании обозначен как `C` (часто интерпретируется как 12), но фактическое состояние Download Mode конкретного телефона ещё нужно зафиксировать |
| Регион/CSC/оператор | Не установлены в доступном контексте; критично запросить при продолжении |
| OEM unlock в Developer Options | Текущий статус не зафиксирован |
| KG/RMM/FRP/OEM Lock в Download Mode | Точные статусы не зафиксированы |
| Knox Warranty Bit | Точное состояние телефона не зафиксировано |

Официальная страница Samsung для этой модели и сборки:  
<https://doc.samsungmobile.com/SM-A266B/033225250421/eng.html>

В тексте Samsung указано: **Galaxy A26 5G (SM-A266B)**, build `A266BXXUCDZJ6`, `C(Android 17)`, дата выпуска `2026-10-27`, patch `2026-10-05`, One UI 9. Это подтверждает модель и версию ПО, но **не подтверждает наличие либо отсутствие возможности OEM unlock**.

### 1.1. Версии для сравнительного анализа в репозитории

Репозиторий содержит три серии загрузчика:

1. **Current:** `A266BXXUCDZJ6`, package `BL_A266BXXUCDZJ6_A266BXXUCDZJ6_MQB116271260_REV00_user_low_ship_MULTI_CERT.tar.md5`.
2. **One UI 8.5 comparison:** `A266BXXSCCZH3`, package `BL_A266BXXSCCZH3_A266BXXSCCZH3_MQB113461813_REV00_user_low_ship_MULTI_CERT.tar.md5`.
3. **Legacy:** `A266BXXS4AYGC`, package `BL_A266BXXS4AYGC_A266BXXS4AYGC_MQB99313348_REV00_user_low_ship_MULTI_CERT.tar.md5`.

Назначение сравнения — выявить изменение OEM Lock / ESS / SBoot / STEADY между сборками, а не предложить пользователю прошивать старый BL. Не использовать эти пакеты для downgrade.

---

## 2. Что фактически удалось восстановить из прошлой работы

Ниже разделены **наблюдаемые артефакты** и **интерпретации прежней модели**. Наличие функции или строки в бинарнике доказывает только наличие соответствующего кода/строки, но не само по себе рабочий способ анлока.

### 2.1. Исследование SBoot

В репозитории есть исходные компоненты актуальной прошивки, включая `sboot.bin`, и дизассемблированный вывод. В `a26-analysis/current/elf-check.txt` зафиксированы размер бинарника `0x00800000` (8 MiB), 64-bit, little-endian; поля `arch`, `cpu`, `machine` выведены как `N/A`, то есть инструмент не распознал формат автоматически. Это похоже на анализ raw image с вручную заданной архитектурой, однако точную командную строку и параметры Rizin/Radare2 следует восстановить отдельно.

В `a26-analysis/current/string-scan.txt` и `critical-functions.txt` присутствуют следующие строки из `sboot.bin`:

- `exynos_read_is_device_unlocked`
- `get_oem_unlock_val`
- `PO_OEM_UNLOCK`
- `OEM %s in RPMB`
- `OSUNLOCK`
- `PO_FRP_MAGIC`
- `Ignore DEBUG_UNLOCK_SJTAG area`
- `Fail to unlock (0x%x)`
- `assert fail: ops->read_is_device_unlocked != NULL`
- `assert fail: ops->read_rollback_index != NULL`
- `%s: using unlock keys which was downloaded by odin\n`
- `--reason=bootloader_unlock`
- строки об ошибках чтения/записи RPMB и STEADY.

В опубликованной переписке ещё упомянуты строки `there is no unlock keys` и `Succeed to unlock`. Их наличие стоит проверить повторным поиском в точной версии бинарника и указать файл/offset каждого совпадения. Не найденная сейчас в кратком string-scan строка не должна автоматически считаться отсутствующей.

**Интерпретация:** строка про unlock keys, скачанные через Odin, показывает, что в загрузчике есть ветка/сообщение об обработке таких ключей. Это не доказывает, что произвольный пользователь может подать собственный ключ через Odin, что A26 принимает этот путь в retail-сборке или что известен необходимый формат/подпись.

**Отдельное наблюдение:** строка `Ignore DEBUG_UNLOCK_SJTAG area` — основание не тратить время на простую попытку включить `DEBUG_UNLOCK_SJTAG`, но само поведение ветки всё равно лучше подтвердить по коду, а не только по строке.

### 2.2. Карта функций, заявленная в отчёте предыдущего исследования

Эти адреса были получены прежним исследователем из A26 binary, согласно отчёту `/report` и опубликованному чату. В индексе функций текущего репозитория подтверждаются многие из них. Семантические названия остаются рабочими ярлыками, пока тело каждой функции и call graph не перепроверены независимо.

| Адрес | Заявленная роль | Что можно сказать сейчас |
|---|---|---|
| `0x0015c54c` | Разбор Engineering Mode token | Есть в `function-index.tsv`; 835 строк в индексе |
| `0x00156bc4` | Подготовка/проверка криптографической операции | Есть в индексе; 260 строк |
| `0x00156fb8` | Выбор криптографического backend / проверка | Есть в индексе; 383 строки |
| `0x0015d298` | Проверка срока действия токена | Есть в индексе; 90 строк |
| `0x0015e8e8` | Проверка типа устройства | Было заявлено в прежнем отчёте; перепроверить наличие и содержание |
| `0x0015efdc` | Получение информации о режимах | Было заявлено в прежнем отчёте; перепроверить |
| `0x0016294c` | Разбор базы режимов | Было заявлено в прежнем отчёте; перепроверить |
| `0x00165604` | Формирование ESS token request | Есть в индексе; 561 строка |
| `0x00167308` | Установка/обработка ESS token response | Есть в индексе; 366 строк |
| `0x0016afa4` | Запрос токена | Было заявлено в прежнем отчёте; перепроверить |
| `0x001690d8` | Критическая обработка состояния STEADY | Есть в индексе; 444 строки; приоритетный объект |
| `0x0017b7c8` | Обработка счётчика разблокировки | Есть в индексе; 66 строк; не считать пока доказанным, что функция лишь счётчик |
| `0x00189614` | Небольшая wrapper-функция, передаёт указатель/параметры в `0x14d60c` | Тело доступно в `function-189614.txt` |
| `0x0018962c` | Обработка структур/контекстов, связанная с вызовами `0x1690d8` | Доступна в `current.txt` и `table-functions.asm`; 234 строки в индексе |
| `0x0018996c` | Подготовка контекстов/таблиц STEADY | Есть в индексе; 142 строки; прежняя трактовка как простого allocator была признана неполной |

### 2.3. Подтверждённые call-sites вокруг `0x001690d8`

В `a26-analysis/unlock-investigation/current.txt` и `current-token.txt` доступны реальные ARM64 инструкции вызова.

1. В `fcn.0018962c`:
   - `0x00189810`: загрузка поля контекста `[x0, 0x608]`;
   - `0x00189814`: `orr x8, x8, 0x20`;
   - `0x00189818`: запись нового значения в `[x0, 0x608]`;
   - `0x0018981c`: `bl fcn.001690d8`.
2. Во втором проходе этой же функции:
   - `0x00189ecc`: чтение поля `[x0, 0x608]`;
   - `0x00189ed0`: `orr x8, x8, 0x20`;
   - `0x00189ed4`: запись в `[x0, 0x608]`;
   - `0x00189ed8`: `bl fcn.001690d8`.
3. В другом пути из `table-functions.asm` видны:
   - `0x00188e1c`: загрузка `[x0, 0x608]`;
   - `0x00188e20`: `orr x8, x8, 1`;
   - `0x00188e24`: запись;
   - `0x00188e28`: `bl fcn.001690d8`.
4. Ещё один вызов в другом участке `table-functions.asm` — `0x00189140`.
5. В `global-hits.txt` отмечен дополнительный вызов `0x0018a5d8` из другой функции.

Это означает, что `0x1690d8` вызывается в контексте объектов/структур с полем `+0x608`, которому перед вызовом устанавливают биты `0x20` или `1`. **Не делай вывод, что это напрямую Mode 3 или OEM Unlock, пока не восстановлена структура, происхождение поля, вызываемые функции и последствия записи.**

### 2.4. Функция `0x00189614`

`a26-analysis/current/function-189614.txt` содержит:

```asm
fcn.00189614(int64_t arg1)
  pacibsp
  adrp x1, 0x5a6000
  add x1, x1, 0xa90
  mov w2, 0x20
  autibsp
  b fcn.0014d60c
```

Это функция-переходник: она передаёт адрес в области `0x5a6000 + 0xa90` и длину/параметр `0x20` в `fcn.0014d60c`. Её точное назначение следует установить по `fcn.0014d60c` и caller `fcn.00187cf0`; не путать её с `0x1690d8`.

### 2.5. STEADY / RPMB

В репозитории сохранены отдельные исследования:

- `a26-analysis/mac-final-investigation.txt`
- `a26-analysis/mac-rpmb-chain.txt`
- `a26-analysis/mac-rpmb-next.txt`
- `a26-analysis/mac-rpmb-final-stage.txt`
- `a26-analysis/mac-rpmb-callbacks.txt`
- `a26-analysis/mac-rpmb-dispatch-chain.txt`
- `a26-analysis/mac-rpmb-lower-layer.txt`
- `a26-analysis/mac-rpmb-transport-functions.txt`
- `a26-analysis/mac-rpmb-methods.txt`
- `a26-analysis/mac-rpmb-object-factory.txt`
- `a26-analysis/mac-rpmb-context-origin.txt`, `mac-rpmb-context-origin-v2.txt`
- `a26-analysis/mac-rpmb-construction-context.txt`, `mac-rpmb-direct-refs.txt`
- `a26-analysis/mac-rpmb-init.txt`, `mac-rpmb-registry.txt`, `mac-rpmb-transport.txt`, `mac-rpmb-xrefs.txt`
- `a26-analysis/mac-backend-core.txt`, `mac-backend-stage.txt`, `mac-deep-stage.txt`, `mac-next-stage.txt`
- `a26-analysis/parent-118-candidates.txt`, `rpmb-next-batch.txt`, `rpmb-object-factory.txt`
- `a26-analysis/rpmb-parent-trace.txt` и `rpmb-parent-trace-2.txt` … `rpmb-parent-trace-6.txt`
- `a26-analysis/bitmap-origin.txt`, `bitmap-origin-next.txt`
- `a26-analysis/next-lockstate.txt`, `next-lockstate-2.txt`, `next-lockstate-3.txt`.

Заголовки `mac-final-investigation.txt` показывают, что отдельно разбирались:

- `PRECHECK 0x12467c`
- `PERSISTENT STORAGE 0x123f14`
- `POST-UPDATE HANDLER 0x17b7c8`
- `MODE FLAG CHECK 0x18996c`
- `TOKEN VALIDATION 0x189b50`
- строки ключей/хранилища, включая `get_oem_unlock_val` и `rpmb_set_lock_state`.

`mac-rpmb-chain.txt` включает:

- интерфейс RPMB SCSI `0x1224ec`;
- расширенный интерфейс `0x122e14`;
- операцию записи/чтения записи `0x1243f4`;
- конструктор и методы объекта RPMB `0x204a50`;
- storage context `0x126b3c`;
- storage init `0x1235a0`;
- xrefs к строкам `scsiadvrpmb`, `scsirpmb` и глобальным флагам/индексам.

`mac-rpmb-final-stage.txt` разбирает конструктор объекта `0x204a50`, методы zero/discard, read, write и нижние device methods `0x204df0`, `0x205100`.

В `mac-rpmb-chain.txt` в шапке записан хеш `3ea5690c8599cfab07578fa304aee5097d3f3c9ed6ffd996cf3b215d364ca0ce` с подписью `FIRMWARE SHA256`. Неясно, к какому именно файлу/контейнеру относится этот хеш. Не использовать его как хеш `sboot.bin`, пока не будет установлено происхождение.

`a26-analysis/unlock-investigation/token-path.txt` содержит строки, связывающие STEADY и RPMB, в том числе:

- `There is no STEADY Partition`
- `Lock state by STEADY`
- `STEADY partition read failed`
- `get_oem_unlock_val`
- `set_RPMB_param`
- `RPMB: get hmac value: fail`
- `RPMB: advanced RPMB write block failed`
- `failed to get lock value from RPMB`.

Эти артефакты показывают, что RPMB — значимый путь защищённого хранения/состояния. Но сам факт наличия RPMB API не доказывает, что OEM unlock флаг находится в конкретном поле или что есть доступная операция его безопасного изменения.

---

## 3. Engineering Mode / ESS V1: что заявлено и что нужно подтвердить

### 3.1. Компоненты A26, уже лежащие в репозитории

В `a26-analysis/engmode/current/` находятся реальные выгрузки системы и vendor-компонентов.

**`vendor/lib64/`:**

- `libengmode15.so`
- `libengmode2lite.so`
- `libengmode_client.so`
- `libengmode_server.so`
- `libengmode_tlc.so`
- `vendor.samsung.hardware.security.engmode-V1-ndk.so`

**`system-lib64/`:**

- `lib.engmode.samsung.so`
- `lib.engmodejni.samsung.so`
- `vendor.samsung.hardware.security.engmode-V1-ndk.so`

**`vendor/bin/`:**

- `emservice`
- `vendor.samsung.hardware.security.engmode-service`

**`init/`:**

- `emservice.rc`
- `insthk_teegris.rc`
- `pa_daemon_teegris.rc`
- `teegris.rc`
- `vendor.samsung.hardware.security.engmode-service.rc`

**`vintf/`:**

- `vendor.samsung.hardware.security.engmode-manifest.xml`

Кроме того, в корне `a26-analysis/` есть `1.txt` — 2 123 строки анализа трёх библиотек:

- `lib.engmode.samsung.so`
- `lib.engmodejni.samsung.so`
- `vendor.samsung.hardware.security.engmode-V1-ndk.so`.

В `1.txt` отмечены методы `EngmodeManager::caller_check(...)`, AIDL-клиент `engmode_client_aidl` и другие структуры. Первые строки говорят, что парсер не обнаружил program header/entrypoint в анализируемом input. Это означает, что бинарники могли быть извлечены/представлены как raw или неверно распознаны инструментом; нужно проверить каждый оригинальный ELF через `file`, `readelf -h/-l`, `rabin2 -I`, `rizin -I`.

### 3.2. Цепочка ESS V1, реконструированная предыдущим исследователем

В опубликованной переписке приведена следующая последовательность:

```text
Android client / AIDL ISehEngmode
    makeTokenReq (заявленный transaction 11)
        ↓
EngineeringModeWorld::emGetTokenRequest (заявленный offset 0xf130)
        ↓
TEE command 0x21c7d
        ↓
em_ess_make_token_request (libengmode15.so, заявленный offset 0x504c)
        ↓
ESS request → Samsung ESS service
        ↓
signed token / e-token response
        ↓
em_ess_install_token_v1 (заявленная функция)
        ↓
STEADY state update
        ↓
sync_lockstate_custtoken
        ↓
OEM Unlock state / RPMB synchronization
```

Прежняя модель утверждала, что в локальном генераторе ESS-запроса не найден запрет на запрос режима `3`, а пример списка из одного режима выглядит как `00 01 00 03` (счётчик 1, ID режима 3). **Это относится только к формированию запроса. Это не подпись, не авторизация и не подтверждение, что Samsung выпустит такой токен.**

### 3.3. Данные AIDL, заявленные для A26

Предыдущий отчёт указывает:

- интерфейс `vendor.samsung.hardware.security.engmode.ISehEngmode`;
- hash `40e3d24c35baf5b934a2515792ae8aae089da246`;
- методы: `makeTokenReq`, `getRequestMsg`, `getModesbit`, `getStringModes`, `installToken`, `isTokenInstalled`;
- `getModesbit` возвращает карту режимов размером 256 бит;
- `makeTokenReq` предположительно соответствует transaction 11.

Эти значения **нужно извлечь заново из A26-файлов**, в первую очередь из `vendor.samsung.hardware.security.engmode-V1-ndk.so`, VINTF manifest, `libengmode_client.so`, system framework library/JNI и service. Не брать hash/transaction из другого Samsung как подтверждение A26.

### 3.4. DID / криптографический backend

Предыдущая модель утверждала, что в проверке подписи ветвление зависит от DID: строка `"30"` выбирает crypto mode/backend `0x1e`, а другая ветвь — `0x14`. Это требует отдельного подтверждения на A26. Независимый публичный аудит S24 Ultra сообщает, что DID, начинающийся с `30`, шёл по ветке `0x1e`, а приведённые примеры DID с `20` — по `0x14`. Нельзя превращать эти наблюдения в универсальное правило «всё, что не 30, — 0x14».

### 3.5. SingleID и OTP — незакрытый барьер

По предыдущему отчёту:

- `getID` возвращает `0xD0430010`;
- legacy `getTUC` сообщает, что операция не поддерживается;
- `get_singleId` достаёт SingleID из уже установленного токена в STEADY;
- `makeTokenReq` требует SingleID и OTP;
- `emEssCommand` проверяет OTP длиной ровно 6 байт.

Это препятствие, а не способ обхода. Не придумывать SingleID/OTP, не перебирать OTP и не генерировать фальшивые токены. Нельзя также объявлять, что OTP точно является одноразовым паролем конкретного формата, пока значение и семантика не установлены кодом и официальным протоколом.

### 3.6. TEEGRIS

В предыдущем отчёте указано, что A26 использует TEEGRIS/TLC, а не Qualcomm QSEE. В репозитории это направление подтверждают имена `libengmode_tlc.so`, `libengmode_server.so`, `libengmode_client.so`, `insthk_teegris.rc`, `pa_daemon_teegris.rc` и `teegris.rc`. Это хорошие A26-специфичные зацепки, но окончательное описание взаимодействия должно быть доказано по A26-файлам.

Официальная документация Samsung описывает TEEGRIS как TrustZone-based trusted execution environment с trusted applications, криптографией и trusted storage: <https://developer.samsung.com/teegris/overview.html>. Документация общая и не раскрывает реализацию ESS или OEM unlock именно на A26.

---

## 4. История и последовательность действий, которую удалось восстановить

Публичная копия чата не содержит полного терминального лога. Однако в ней есть список выполненных действий, а GitHub-репозиторий содержит историю коммитов и произведённые артефакты. Ниже — реконструкция без выдумывания незафиксированных команд.

### Этап A. Сбор прошивок и сравнение

- Получены/сохранены пакеты bootloader для актуального A26, более раннего legacy-состояния и One UI 8.5.
- Пакеты распакованы, из них сохранены бинарные компоненты в `contents/` в LZ4-форме и в `raw/` после извлечения.
- Проведено сравнение string scan по `sboot.bin` разных версий.
- Были отмечены отличия по строкам `OEMLOCK`, `OEM LOCK: ON`, `Custom binary blocked by OEM Lock` в старой прошивке и строки ESS/OEM unlock в актуальной. Точные результаты повторить командой `strings`/скриптом и diff, так как старое текстовое утверждение не равно полной таблице сравнения.

### Этап B. Извлечение и дизассемблирование SBoot

- В репозитории появился полный дизассемблированный файл `full-sboot.asm.gz`, а также файлы `full-sboot-part-00`, `part-01`, `part-02`.
- В `elf-check.txt` зафиксированы размер 8 MiB, 64-bit, little-endian, но arch/machine автодетектор не определил.
- Добавлен Python-скрипт `index_sboot.py`, который читает `full-sboot.asm`, удаляет ANSI escape-коды Rizin и формирует `function-index.tsv`, `global-functions.asm`, `global-hits.txt` для адресов/страниц `0x5a6000`, `0x56f000` и ряда глобальных адресов.
- Добавлен `trace_page.py`, формирующий `page-5a6000-context.txt` — список функций, ссылающихся на страницу `0x5a6000`.
- В корневом файле `samsung` записаны реальные исследовательские команды:

```sh
ASM="$HOME/a26-analysis/current/full-sboot.asm"

echo "===== SMC CALL + FUNCTION START ====="
grep -n -B 180 -A 55 '0x0017c198' "$ASM"

echo "===== 17BFAC REFERENCES ====="
grep -n -B 15 -A 25 '17bfac' "$ASM"

echo "===== FUNCTION 1796D0 ====="
grep -n -A 100 'fcn.001796d0(' "$ASM"
```

Команды показывают, что исследовался SMC-call path и отдельные функции SBoot. Они не доказывают результативный exploit.

### Этап C. Изучение функции и глобального контекста STEADY

- Созданы `critical-functions.txt`, `critical-functions-v2.txt`, `deep-analysis-v3.txt` … `deep-analysis-v10.txt`, `table-functions.asm`, `function-index.tsv`, `global-hits.txt`, `page-5a6000-context.txt`.
- Анализировали `0x18996c`, `0x18962c`, `0x189d8c`, `0x1690d8`, `0x17b7c8`, связанные таблицы/контексты и обращения к `0x5a6000`.
- В позднем исследовании выяснилось, что `0x18996c` нельзя описать просто как выделение памяти: она участвует в инициализации нескольких контекстов, а `0x189d8c` использует эту подготовку и вызывает функцию дальнейшей обработки.
- Восстановлены и опубликованы call-sites из `0x18962c` к `0x1690d8` при предварительной установке флага `0x20` в поле `+0x608`.
- При этом отдельное полное тело `0x1690d8` не было представлено в доступной нам выборке `global-functions.asm`; индекс говорит, что это крупная функция. Следующий агент должен выгрузить именно её, а не считать прежнее описание законченным.

### Этап D. EngMode / ESS / AIDL / TLC

- Были исследованы Android AIDL-интерфейс Samsung EngMode, системные библиотеки и vendor-сервис.
- Извлекались строки и байты, декодировался Base64, исследовался UUID `libengmode_tlc.so`.
- Были изучены `ISehEngmode`, команды ESS, ветки `makeTokenReq`, `getModesbit`, `installToken`, а также предполагаемый путь через TLC и TEEGRIS.
- В SBoot найдены команды `EM_CMD_TOKEN_REQUEST`, `EM_CMD_REQ_TOKEN_ESS_V1`, `EM_CMD_INSTALL_TOKEN_ESS_V1`, `EM_CMD_GET_MODES_ESS_V1` (согласно прошлому отчёту, нужно повторить string/xref подтверждение в точном бинарнике).
- Сформирован вывод, что клиент умеет сформировать запрос, но серверный подписанный токен и входные значения SingleID/OTP остаются недоступными.

### Этап E. RPMB / persistent state

- Отдельно изучалась иерархия RPMB SCSI, объектные методы read/write/zero, конструкторы, vtable/callback dispatch и родительские вызовы.
- Созданы серии `mac-rpmb-*`, `rpmb-parent-trace-*`, `next-lockstate-*` и `bitmap-origin*`.
- Важная исследовательская дисциплина: различать стандартный RPMB storage API и конкретные поля OEM-unlock state. Наличие write-method не означает, что запись возможна без аутентифицированного HMAC/key или что она изменяет правильный state.

### Этап F. Проверка гипотез и вывод

Предыдущий исследователь исключил или счёл бесперспективными:

- `resetprop`/подмену Android properties — не меняет защищённое состояние bootloader/TEE;
- прямую запись в STEADY/RPMB — не создаёт валидную подписанную авторизацию;
- `unlock_count` как механизм анлока — вероятнее accounting/event counter;
- `DEBUG_UNLOCK_SJTAG` — в SBoot присутствует строка `Ignore DEBUG_UNLOCK_SJTAG area`;
- старые DASEUL/9999 token-пути — не считать эквивалентом текущего ESS V1;
- downgrade на старый bootloader — рискован и ограничен Knox Rollback Prevention/SW REV.

Итог: найдено много внутренней инфраструктуры и путей работы с токенами, но **доказанный рабочий обход bootloader unlock не найден**. Последний поставленный прежней моделью вопрос — откуда получить корректные `SingleID` и six-byte OTP, если они действительно обязательны для конкретного ESS request flow.

---

## 5. Публичный аудит другого устройства: полезно, но не переносить на A26

Найден независимый публичный проект:

- <https://github.com/keyarr/oems24-audit>
- Findings: <https://github.com/keyarr/oems24-audit/blob/main/notes/findings.md>
- Original research: <https://github.com/keyarr/oems24-audit/blob/main/notes/original-research.md>
- HLOS / TrustZone boundary audit: <https://github.com/keyarr/oems24-audit/blob/main/notes/engmode-hlos-tz-boundary-audit.md>
- Historical DASEUL/ESS: <https://github.com/keyarr/oems24-audit/blob/main/notes/historical-daseul-ess.md>

Этот аудит относится к **Samsung Galaxy S24 Ultra SM-S928B (e3q)**, сборке `S928BXXU5DZDP`, Android 16 / One UI 8.5, а не к SM-A266B.

Что он может дать как ориентир для чтения A26-кода:

- интерфейс `vendor.samsung.hardware.security.engmode.ISehEngmode/default`, version 1 и hash `40e3d24c35baf5b934a2515792ae8aae089da246`;
- transaction 11 для `makeTokenReq`;
- Framework Mode 3 / `MODE_CUST_KERNEL`;
- пример request mode list `00 01 00 03`;
- архитектурная связь Engineering Mode / token / bootloader unlock bit / AVB;
- подписание токена связывает запрашиваемые mode bits с устройством и не позволяет просто изменить byte в готовом токене.

Но аудит S24 **не показал успешный retail unlock**: тестовый загрузчик оставался locked; рабочая выдача Mode 3 token от Samsung не была подтверждена. Поэтому он не является доказательством анлока A26.

Есть также расхождение адресов: аудит S24 описывает `EngineeringModeWorld::emGetTokenRequest` около `0xf07c`, тогда как прежний отчёт A26 указывает `0xf130`. Это может быть разницей бинарников/сборок/версий, а не ошибкой; проверять только по A26 исходникам.

**Правило:** использовать S24 audit как гипотезу/ориентир по архитектуре и именам, но любой вывод про A26 доказывать собственными ELF/ASM/строками/xrefs.

---

## 6. Официальные технические ограничения и источники

### 6.1. Knox Rollback Prevention

Samsung описывает Knox Rollback Prevention Fuses как защищённое аппаратное значение минимально допустимой версии bootloader. После установки нового bootloader значение может быть повышено, и откат к старому ПО становится невозможен.

- Samsung Knox documentation, Hardware-Backed Security: <https://docs.samsungknox.com/admin/fundamentals/whitepaper/samsung-knox-mobile-security/system-security/hw-backed-security/>
- Samsung Knox Trusted Boot: <https://docs.samsungknox.com/admin/fundamentals/whitepaper/samsung-knox-mobile-security/system-security/trusted-boot/>

Для A26 repo указывает ревизию `C`; публичные каталоги прошивок также часто помечают текущие сборки как Bit/SW REV C. Однако фактический статус конкретного телефона нужно проверить в Download Mode, а не вычислять из строки имени файла на глаз. **Не пробовать старый BL.**

### 6.2. Android/AOSP bootloader unlocking model

AOSP описывает общую модель: `get_unlock_ability`, физическое подтверждение пользователя, persistent data block и lock/unlock state.

<https://source.android.com/docs/core/architecture/bootloader/locking_unlocking>

Это общая модель Android и не раскрывает OEM-специфичный Samsung A26 flow. Не путать AOSP fastboot unlock с Samsung Engineering Mode ESS token flow.

### 6.3. Samsung TEEGRIS

Официальная страница Samsung: <https://developer.samsung.com/teegris/overview.html>. Подтверждает общий TrustZone-based TEE и Trusted Storage / криптографическую инфраструктуру. Не подтверждает точные команды, ключи, формат OTP, Samsung ESS endpoint или OEM Unlock policy на A26.

### 6.4. Наличие/отсутствие официального unlock-пути

В выполненном поиске не найдено достоверного официального документа Samsung, который бы прямо гарантировал или запрещал OEM unlock для `SM-A266B` на всех CSC/регионах. Не делай вывод о невозможности только потому, что пункт Developer Options отсутствует у части пользователей. Надо отдельно установить регион, carrier policy, sales CSC, KG/RMM/OEM state и точный Download Mode output.

---

## 7. Состояние доказательств

### Подтверждено публичными артефактами / первичными источниками

- Официальная Samsung страница подтверждает модель SM-A266B, сборку A266BXXUCDZJ6, Android 17, One UI 9, release date 2026-10-27 и security patch 2026-10-05.
- GitHub repo содержит актуальный BL package, извлечённые raw/contents компоненты, `sboot.bin`, `full-sboot.asm.gz`, function index, disassembly reports, EngMode libs/services/manifest и отдельные токен/RPMB анализы.
- `elf-check.txt` указывает для анализируемого образа size `0x00800000`, 64-bit, little-endian; архитектура автоматически не распознана.
- `function-index.tsv` содержит записи для `0x156bc4`, `0x156fb8`, `0x15c54c`, `0x15d298`, `0x165604`, `0x167308`, `0x1690d8`, `0x17b7c8`, `0x189614`, `0x18962c`, `0x18996c`.
- `current.txt` / `current-token.txt` содержат реальные ARM64 инструкции двух вызовов `0x1690d8` из `0x18962c`, перед которыми меняется поле `+0x608` (OR `0x20`).
- В `table-functions.asm` имеются другие call-sites `0x188e28` и `0x189140` к `0x1690d8` и операции с `+0x608`.
- В SBoot strings есть `get_oem_unlock_val`, `PO_OEM_UNLOCK`, `Ignore DEBUG_UNLOCK_SJTAG area` и RPMB/STEADY сообщения.

### Сообщено предыдущей моделью, но требует независимого воспроизведения

- Точное семантическое назначение всех адресов в карте функций.
- Цепочка `0x15c54c → 0x156bc4 → 0x156fb8` как проверка подписи токена.
- Значение ветвления DID `"30"` → `0x1e` / другая ветвь `0x14` на A26.
- A26 AIDL hash и transaction number.
- Смысл `00 01 00 03` как одного Mode 3 request в A26, а не только в S24.
- Точные адреса `EngineeringModeWorld::emGetTokenRequest`, TEE command `0x21c7d`, `em_ess_make_token_request` offset `0x504c` и `em_ess_install_token_v1`.
- Ошибка `getID=0xD0430010`, unsupported `getTUC`, доступность `get_singleId` только из уже установленного token, шестибайтный OTP check.
- Утверждение о полной синхронизации конкретного OEM unlock bit через STEADY → RPMB.

### Не доказано / не найдено

- Рабочий метод получить Samsung ESS signed token с OEM Unlock permission для retail SM-A266B.
- Корректные SingleID и OTP, которые принимаются именно на текущей прошивке.
- Возможность легально сформировать/получить Odin unlock key для A26.
- Рабочий exploit обхода signature validation, TEE trust boundary или RPMB authentication.
- Любая гарантированная возможность downgrade, аппаратного unlock или успешного unlock после текущего build.

---

## 8. Артефакты репозитория: точная карта для нового агента

Все пути относительно корня `alexalxandrov/crypto`, branch `main`.

### 8.1. Основные каталоги

В каталогах `current/contents/`, `legacy/contents/`, `oneui85/contents/` сохранены LZ4-версии следующих 12 образов/компонентов; в соответствующих `raw/` — извлечённые версии без `.lz4` там, где это применимо:

- `dtp.bin`, `fld.bin`, `harx.bin`, `keystorage.bin`
- `ldfw.img`, `sboot.bin`, `ssp.img`, `tzar.img`, `tzsw.img`
- `uh.bin`, `up_param.bin`, `vbmeta.img`

```text
crypto/
├── a26-analysis/
│   ├── current/
│   │   ├── contents/                 # исходные LZ4-обёрнутые извлечённые partition files
│   │   ├── raw/                      # извлечённые raw images / binaries
│   │   ├── BL_A266BXXUCDZJ6_...tar.md5
│   │   ├── full-sboot.asm.gz
│   │   ├── full-sboot-part-00
│   │   ├── full-sboot-part-01
│   │   ├── full-sboot-part-02
│   │   ├── function-index.tsv
│   │   ├── global-functions.asm
│   │   ├── global-hits.txt
│   │   ├── page-5a6000-context.txt
│   │   ├── string-scan.txt
│   │   ├── critical-functions*.txt
│   │   ├── deep-analysis-v3.txt ... deep-analysis-v10.txt
│   │   ├── table-functions.asm
│   │   └── index_sboot.py / trace_page.py
│   ├── legacy/
│   │   ├── contents/
│   │   ├── raw/
│   │   └── BL_A266BXXS4AYGC_...tar.md5
│   ├── oneui85/
│   │   ├── contents/
│   │   ├── raw/
│   │   └── BL_A266BXXSCCZH3_...tar.md5
│   ├── engmode/current/
│   │   ├── init/
│   │   ├── system-lib64/
│   │   ├── vendor/bin/
│   │   ├── vendor/lib64/
│   │   └── vintf/
│   ├── embedded-elf/current/         # elf1.elf, elf2.elf
│   ├── embedded-elf/legacy/
│   ├── embedded-elf/oneui85/
│   ├── embedded-elf-fixed/current/
│   ├── embedded-elf-fixed/legacy/
│   ├── embedded-elf-fixed/oneui85/
│   └── unlock-investigation/
│       ├── current.txt
│       ├── current-token.txt
│       ├── current-init.txt
│       ├── legacy.txt
│       ├── oneui85.txt
│       ├── oneui85-token.txt
│       ├── oneui85-steady.txt
│       └── token-path.txt
├── report
├── samsung
├── steady-followup.asm
├── steady-offset-hits.txt
├── table-functions.asm
└── missing-functions.asm
```

### 8.2. Особо важные файлы и blob SHA, полученные при проверке GitHub

SHA ниже — Git blob SHA, **не SHA-256 бинарника**.

| Файл | Git blob SHA | Наблюдение |
|---|---|---|
| `a26-analysis/current/function-index.tsv` | `e81efe8256aa0c68c4c941780ef524fb6da97945` | 4 890 строк, адрес / function / lines |
| `a26-analysis/current/global-hits.txt` | `a0ab75bdb85556a6df21a772dc5bd67693eb1b38` | 3 104 строки, контекст обращений к глобальным адресам |
| `a26-analysis/current/string-scan.txt` | `ab7870afa974423336f4615d8499554bc8846a15` | 105 строк скана строк по разделам, в том числе sboot |
| `a26-analysis/current/critical-functions-v2.txt` | `0ea4f5d10520af07c79471688f18fb4affa678c4` | 622 строки; есть проблема с архитектурной согласованностью вывода |
| `a26-analysis/current/deep-analysis-v9.txt` | `117f6984c6ef300452f0001bfb2d3983c1389e39` | 73 139 символов, содержит xrefs/контекст по множеству функций |
| `a26-analysis/current/deep-analysis-v10.txt` | `c82f3e0d1b4cc2cb0555310993cd9b5d27e71cad` | 508 строк ARM64-дизассемблирования ограниченного участка |
| `a26-analysis/current/table-functions.asm` | `15b239273c8ba6758d9d9af40041ec9116424f3d` | 1 536 строк, включает несколько крупных table/STEADY функций |
| `a26-analysis/current/function-189614.txt` | `f4ece6c8bab3a366d6c120fb621e90b8883e41cf` | 10 строк, wrapper 0x189614 |
| `a26-analysis/unlock-investigation/current.txt` | `607b4809ef7d23f97fe82334c8d3d1158e9fbc27` | 1 847 строк, ARM64 call-sites, 0x18962c |
| `a26-analysis/unlock-investigation/current-token.txt` | `3268cd021e2f3439cf4f08ef2c1f3f2cb34a831b` | 1 034 строки, token/STEADY references |
| `a26-analysis/unlock-investigation/token-path.txt` | `36da0edc1fe579a73e25483c072c623404d51010` | 364 строки, string references STEADY/RPMB |
| `a26-analysis/unlock-investigation/oneui85-steady.txt` | `c0039185bf09ea1503f8f3d18f19cdee7a3158d9` | 809 строк, сравнение One UI 8.5 / STEADY |
| `a26-analysis/mac-rpmb-chain.txt` | `7cf977a0e6d20ceebda75013c4941e6255002937` | 1 384 строки, RPMB object/transport chain |
| `a26-analysis/mac-rpmb-final-stage.txt` | `155f8b9b32576da758e1872b12a2032d7561a3cb` | 754 строки, constructor/read/write/lower layer |
| `a26-analysis/mac-final-investigation.txt` | `bf712e9b631e78f518944456a42c8296a3f36463` | 548 строк, precheck/persistent storage/token validation |
| `a26-analysis/mac-rpmb-next.txt` | `1ebc82af336f454e081cc0aa358a1da3e69912b0` | 444 строки, object initialization/callback dispatch |
| `a26-analysis/bitmap-origin.txt` | `d29349bbecc00039256613e7e3dd039c75141e8a` | 903 строки, references to helper/bitmap-related functions |
| `a26-analysis/rpmb-parent-trace-6.txt` | `9f4429f5ffbdb300ee49a8ea6161b80df2e3a655` | 524 строки, vtable/method/parent trace |
| `a26-analysis/1.txt` | `31389c1c7c94984e5bdd4676874859e754ff2372` | 2 123 строки, disasm EngMode system libraries |
| `steady-followup.asm` | `7b241db4b651b9c3f79b2d8cb712a6d0a7a7188e` | 288 строк, additional STEADY functions |
| `steady-offset-hits.txt` | `68c15fb8fbb0646b26a2001cbbc9acbf6f7f8c0c` | 597 строк, offset references in embedded ELF analysis |
| root `samsung` | `011e214f26b5592c436b42225e7e1bdb74740fd6` | 2 245 строк, includes terminal commands and disassembly output |

### 8.3. Important anomalies in existing artifacts

1. `a26-analysis/current/global-functions.asm` exists in GitHub but the GitHub fetch returned empty content (blob SHA `5b2de6c11f32872218b002fcc2254c53aad69327`). Regenerate it.
2. Root `missing-functions.asm` is effectively empty (blob SHA `8b137891791fe96927ad78e64b0aad7bded08bdc`).
3. `critical-functions.txt` begins with `ERROR: Cannot find function at 0x00187cf0`, `0x0018962c`, `0x00189d8c` etc. That is an earlier failed analysis output, not evidence those functions are absent from the binary.
4. `critical-functions-v2.txt` contains x86-looking instructions (e.g. `jnle`, `add edx, ebp`, `std`) around addresses where other current outputs show ARM64. Treat as likely wrong architecture/misaligned input or contaminated analysis output. Do not trust it before checking raw bytes and ELF/image provenance.
5. `deep-analysis-v10.txt` starts with ARM64 at `0x187cf0` but only includes a limited region; it does not show all relevant functions.
6. `current.txt`/`current-token.txt` and `table-functions.asm` have actual ARM64 instructions for 0x18962c and calls into 0x1690d8. Use these as working evidence, but reproduce against the exact raw `sboot.bin`.
7. Some top-level files (`README.md`, unrelated app project files) are stale/unrelated to this A26 work. Do not mistake root README for project documentation.
8. `a26-analysis/mac-rpmb-chain.txt` calls a value “FIRMWARE SHA256” but does not state whether this is package, image, or another artifact. Determine scope before using it.

### 8.4. Git commit history that establishes when key artifacts were added

- `2a29e0e4c3aa043b4040463951fd70605d674ce9` — “Update Samsung bootloader analysis”, 11 Nov 2026 17:20:17 UTC. Adds/updates `full-sboot.asm.gz`, function index, `global-functions.asm`, `global-hits.txt`, `index_sboot.py`, `page-5a6000-context.txt`, `table-functions.asm`, `trace_page.py`.
- `9ba35c4e007485887b3378d9da2d7b0c04414214` — “Add STEADY verification function analysis”, 11 Nov 2026 17:32:15 UTC. Adds `steady-followup.asm` and `steady-offset-hits.txt`.
- `dca61a49a6b39ea029fe5e83f8cfd49e1301be06` — “Create report”, 11 Nov 2026. Root `report` contains a 337-line summary of the ESS/STEADY investigation.
- `83cb6272b025f59d605d203c09f287968fcde485` — “Add complete Samsung bootloader table functions” (reported commit in repository history; use commit view to inspect exact patch).

Current branch is `main`. Always run `git log --oneline --decorate --all -- a26-analysis` before assuming the file inventory is unchanged.

---

## 9. Чего не хватает для полного восстановления действий

Доступные источники дают хороший reconstruction, но **не дают полного журнала действий всех предыдущих чатов**. Недостающие элементы:

1. Полный terminal/session log: точные команды, cwd, версии `rizin`/`radare2`, скрипты, результаты/ошибки каждого запуска.
2. Полные тексты предыдущих 22 чатов (доступна одна публичная копия — чат 22).
3. Исходные файлы/хэши всех скачанных firmware packages и точные URLs/time of download/CSC.
4. Полный файл `full-sboot.asm` (в репозитории лежит gzip-версия; `global-functions.asm` в доступном дереве оказался пустым).
5. Полные тела критических функций в одном воспроизводимом дизассемблировании, особенно `0x1690d8`, `0x15c54c`, `0x156bc4`, `0x156fb8`, `0x165604`, `0x167308`, `0x17b7c8`, `0x18996c`, `0x18962c`.
6. Полная карта load address / file offset / VA / RVA и происхождение каждого адреса.
7. Устройство-специфичные значения: текущий CSC, carrier/region, OEM unlock UI state, Download Mode statuses, DID (если доступен без извлечения секретов), наличие сертификата/токена, доступность SingleID/OTP.
8. Независимое подтверждение AIDL transaction/hash, TLC command IDs, TEE entrypoints и точного протокола ESS для A26.
9. Подтверждённое состояние самого телефона после последнего исследования.

Не заполнять эти пробелы догадками. Помечай «неизвестно» и получай доказательство.

---

## 10. План продолжения для новой модели

### Приоритет 1 — сохранить и нормализовать доказательства

```sh
git clone https://github.com/alexalxandrov/crypto.git
cd crypto
git status --short
git log --oneline --decorate --all -- a26-analysis
find a26-analysis -type f -print | sort
```

Сначала сохранить копию локально, не перезаписывать существующие файлы. Зафиксировать commit SHA и `git status`.

Затем проверить контрольные суммы/размеры ключевых файлов:

```sh
sha256sum a26-analysis/current/raw/sboot.bin
sha256sum a26-analysis/current/BL_A266BXXUCDZJ6_A266BXXUCDZJ6_MQB116271260_REV00_user_low_ship_MULTI_CERT.tar.md5
sha256sum a26-analysis/current/full-sboot.asm.gz
file a26-analysis/current/raw/sboot.bin
file a26-analysis/current/full-sboot.asm.gz
```

Если имена/путь отличаются, сначала вывести `find`, а не угадывать. Сравнить хеш `sboot.bin` с хешем, который ранее применялся для `mac-rpmb-chain.txt` — но только после установления, к чему относится `3ea569...`.

### Приоритет 2 — воспроизвести исходное дизассемблирование

- Распаковать `full-sboot.asm.gz` во временный каталог, не заменяя оригинал.
- Сопоставить длину файла и архитектуру с `raw/sboot.bin`.
- Проверить, что образ действительно AArch64/ARM64 little-endian. В `elf-check.txt` автоопределение архива не сработало, поэтому архитектура должна быть задана явно и задокументирована.
- Определить, являются ли `0x001690d8` и другие адреса VA, RVA или file offsets. Использовать bytes, branch targets, literal pools, function prologues and cross references. Не считать автоматически, что адрес равен offset в raw-файле.
- Получить отдельно `pdf`/полный listing для `0x1690d8` и всех callers. Сохранить сырой вывод без ANSI и отдельную аннотированную версию.
- Воспроизвести `function-index.tsv` и проверить, почему прошлый `global-functions.asm` оказался пустым.
- Разобрать несогласованность `critical-functions-v2.txt` с ARM64 outputs. Записать точную команду, которой он был создан, либо пометить его как испорченный/неприменимый.

Пример команд для Rizin (точная архитектура/base/имя executable должны быть скорректированы после `file` и проверки образа; не принимать `-m 0` без проверки):

```sh
rizin -a arm -b 64 -e cfg.bigendian=false a26-analysis/current/raw/sboot.bin
```

Внутри Rizin: включить анализ, перейти к конкретному адресу, вывести функцию, xrefs и graph. Записать версию Rizin и все параметры. Не изменять бинарник.

### Приоритет 3 — восстановить `0x1690d8` и объект вокруг `+0x608`

1. Вывести полный body `0x1690d8` (все 444 инструкции) из исходного текущего A26 `sboot.bin`.
2. Получить полный list of xrefs to/from `0x1690d8`, включая `0x188e28`, `0x189140`, `0x18981c`, `0x189ed8`, `0x18a5d8`.
3. Проследить происхождение аргументов `x0`/`x1` у каждого вызова и структуру `[x0 + 0x608]`.
4. Сравнить значение, которое устанавливается OR `1` и OR `0x20`, и определить, какие биты уже могли быть выставлены до вызова.
5. Найти всех writers/readers поля +0x608 и функцию проверки/commit result.
6. Сопоставить с `0x18996c`, `0x189d8c`, `0x189b50`, `0x17b7c8` и отдельными `mac-final-investigation`/RPMB trace.
7. Только после анализа caller/callee дать нейтральные имена функциям. Не называть функцию `set_oem_unlock` на основании одной строки или соседнего вызова.

### Приоритет 4 — восстановить A26 EngMode interface end-to-end

1. Проверить ELF headers всех файлов из `engmode/current`.
2. Извлечь AIDL/VINTF hash/version/instance из manifest, NDK stub, binder interface descriptors и framework libraries.
3. Получить точные transaction IDs и signatures методов, прежде всего `makeTokenReq`, `getRequestMsg`, `getModesbit`, `getStringModes`, `installToken`, `isTokenInstalled`.
4. Разобрать `emservice` и vendor service, `libengmode_client.so`, `libengmode_server.so`, `libengmode15.so`, `libengmode_tlc.so`.
5. Восстановить границу HLOS → TEE Client API → Trusted Application, именованные TEE commands, входы/выходы, return codes и вызовы storage.
6. Верифицировать DID-dependent backend на A26, не опираясь на S24 result.
7. Установить, какие входы действительно нужны ESS request, какие значения могут быть безопасно прочитаны, а какие являются секретными/серверными credential.
8. Разделить подготовку запроса, сетевую/серверную issuance, криптографическую проверку, установку токена и commit state. Это разные операции.

### Приоритет 5 — найти официальный/легитимный канал выдачи разрешения

- Проверить точную CSC/carrier/region пользователя и актуальные OEM unlocking restrictions.
- Проверить официальные Samsung/Service Center/enterprise service channels для engineering authorization, если они доступны для модели/региона.
- Не путать наличие протокола ESS с доступом к Samsung ESS issuance endpoint.
- Не генерировать случайные OTP, не пытаться извлечь private keys, не обещать token forgery.

### Приоритет 6 — только read-only runtime confirmation

Если пользователь позднее захочет продолжить на самом телефоне, сначала запросить только read-only сведения:

- снимок/текст Download Mode с `PRODUCT NAME`, current binary, RP SWREV, KG/RMM state, OEM LOCK, FRP LOCK и warranty bit, если эти поля отображаются;
- AP/CP/CSC и активный CSC;
- отображается ли OEM unlocking в Developer Options;
- регион покупки/оператор/модель поставки.

Не запрашивать IMEI, серийный номер, OTP, приватные ключи, Samsung account token или другие чувствительные секреты. Не сохранять и не публиковать их в репозитории.

---

## 11. Критерий доказанного результата

Считать анлок доказанным только когда есть воспроизводимое подтверждение, что:

1. Устройство действительно переходит в bootloader-unlocked state, а не просто показывает изменённое Android property.
2. Состояние переживает перезагрузку и считывается самим bootloader/Download Mode.
3. Есть понятный механизм авторизации и подписи (или доказанная уязвимость), а не подмена UI/локального флага.
4. Не было неподтверждённой записи в RPMB/STEADY либо других рискованных операций.
5. Проверка выполнена на том же SM-A266B и той же релевантной версии bootloader.
6. В отчёте есть исходные логи, точные версии бинарников и хеши, команды, результаты до/после и ограничения применимости.

Запрос, локальный файл token, строка `Succeed to unlock`, экспериментальная карта режимов или успешная генерация nonce **не являются доказательством разблокировки**.

---

## 12. Готовая постановка задачи для следующей нейронки

Скопируй блок целиком в новый чат вместе с этим файлом:

```text
Ты принимаешь исследование Samsung Galaxy A26 5G SM-A266B с нуля. Прочитай приложенное досье полностью и изучи публичный репозиторий:
https://github.com/alexalxandrov/crypto

Главная цель — установить, существует ли реальный, проверяемый способ разблокировки bootloader именно SM-A266B на прошивке A266BXXUCDZJ6 (Android 17 / One UI 9), а не просто изменить отображение статуса в Android.

Не начинай с общих рекомендаций. Сначала инвентаризируй все материалы a26-analysis, сверь Git commits, сохрани исходные файлы и SHA-256. Затем независимо воспроизведи disassembly и function xrefs. Приоритетный объект — функция SBoot 0x001690d8 (function-index.tsv сообщает 444 строки) и все её callers, особенно 0x0018962c, 0x0018981c, 0x00189ed8, 0x00188e28, 0x00189140 и 0x0018a5d8. Восстанови поле +0x608 и не предполагай, что bit 0x20 означает OEM unlock или ESS Mode 3 без доказательства.

После этого независимо восстанови путь Engineering Mode / ISehEngmode / ESS V1 / libengmode_tlc.so / TEEGRIS / STEADY / RPMB именно по A26 binaries. Публичный audit oems24-audit относится к S24 Ultra и годится только как гипотеза, не как подтверждение A26.

Все утверждения помечай одним из статусов: CONFIRMED-A26, REPRODUCED-FROM-REPO, REPORTED-BY-OLD-CHAT, CROSS-MODEL-HYPOTHESIS, UNKNOWN, REFUTED. При каждом утверждении давай точный путь/offset/инструкции/хеш и способ воспроизведения. Не выдумывай команды, логи, секреты, OTP, SingleID или подписи.

Сначала только статический и read-only анализ. Не прошивай устройство, не делай downgrade, не меняй DID, не записывай в RPMB/STEADY, не устанавливай экспериментальные токены, не патчь SBoot и не предлагай необратимые действия. Никаких write-операций без отдельного информированного решения владельца и полноценного объяснения риска.

Текущий итог: bootloader unlock НЕ достигнут. Наличие ESS request builder и mode 3 в похожем S24 audit не доказывает, что Samsung выдаст A26 signed token. Важный незакрытый барьер — подлинные inputs/SingleID/OTP и серверная подпись. Не объявляй exploit найденным, пока не будет фактического и воспроизводимого подтверждения на SM-A266B.

Продолжай максимально автономно в рамках безопасного статического исследования. Не останавливайся после простого пересказа: верни точную карту артефактов, список воспроизведённых результатов, исправления старых ошибок, новые выводы и конкретный следующий этап. Сохраняй все результаты в отдельных новых файлах и не перезаписывай исходные артефакты.
```

---

## 13. Ссылки на ключевые материалы

### Исходная переписка и проект

- Публичная копия чата 22: <https://chatgpt.com/share/6af4f13c-d1a4-83ed-baf6-1903be270304>
- GitHub repo: <https://github.com/alexalxandrov/crypto>
- Root report: <https://github.com/alexalxandrov/crypto/blob/main/report>
- Current A26 data: <https://github.com/alexalxandrov/crypto/tree/main/a26-analysis/current>
- Current raw firmware components: <https://github.com/alexalxandrov/crypto/tree/main/a26-analysis/current/raw>
- Current disassembly outputs: <https://github.com/alexalxandrov/crypto/tree/main/a26-analysis/current>
- EngMode components: <https://github.com/alexalxandrov/crypto/tree/main/a26-analysis/engmode/current>
- Embedded ELF outputs: <https://github.com/alexalxandrov/crypto/tree/main/a26-analysis/embedded-elf>
- Unlock investigation: <https://github.com/alexalxandrov/crypto/tree/main/a26-analysis/unlock-investigation>
- RPMB analysis: <https://github.com/alexalxandrov/crypto/tree/main/a26-analysis>
- Commit adding SBoot tooling: <https://github.com/alexalxandrov/crypto/commit/2a29e0e4c3aa043b4040463951fd70605d674ce9>
- Commit adding STEADY follow-up: <https://github.com/alexalxandrov/crypto/commit/9ba35c4e007485887b3378d9da2d7b0c04414214>
- Commit adding report: <https://github.com/alexalxandrov/crypto/commit/dca61a49a6b39ea029fe5e83f8cfd49e1301be06>

### Официальные и независимые источники

- Samsung official firmware page for SM-A266B / A266BXXUCDZJ6: <https://doc.samsungmobile.com/SM-A266B/033225250421/eng.html>
- Samsung Knox Hardware-Backed Security / Rollback Prevention: <https://docs.samsungknox.com/admin/fundamentals/whitepaper/samsung-knox-mobile-security/system-security/hw-backed-security/>
- Samsung Knox Trusted Boot: <https://docs.samsungknox.com/admin/fundamentals/whitepaper/samsung-knox-mobile-security/system-security/trusted-boot/>
- Samsung TEEGRIS overview: <https://developer.samsung.com/teegris/overview.html>
- AOSP bootloader locking/unlocking architecture: <https://source.android.com/docs/core/architecture/bootloader/locking_unlocking>
- S24 Ultra EngMode audit (cross-model reference only): <https://github.com/keyarr/oems24-audit>
- S24 audit findings: <https://github.com/keyarr/oems24-audit/blob/main/notes/findings.md>
- S24 HLOS/TrustZone boundary: <https://github.com/keyarr/oems24-audit/blob/main/notes/engmode-hlos-tz-boundary-audit.md>

---

## 14. Заключение для принимающей модели

Не нужно заново открывать вопрос «есть ли в Samsung Engineering Mode какие-то unlock-функции»: в репозитории уже есть substantial A26-specific traces и firmware artifacts. Но нельзя перескакивать от строк/имен функций к утверждению, что найден анлок.

Правильный ближайший шаг — **воспроизвести адреса, полностью разобрать `0x1690d8`, установить семантику поля `+0x608`, затем связать это с конкретным A26 EngMode/TEE request/install path и RPMB state**. Параллельно нужно закрыть вопрос о реальной выдаче подписанного ESS authorization. До выполнения этих пунктов состояние проекта — «исследование продолжается, working unlock не найден».