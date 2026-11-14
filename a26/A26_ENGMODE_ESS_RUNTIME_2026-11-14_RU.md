# Samsung Galaxy A26 5G — Engineering Mode / ESS: runtime evidence

**Дата наблюдений:** 14 ноября 2026 г. (2026-11-14)  
**Устройство:** Samsung Galaxy A26 5G, SM-A266B  
**Сборка:** A266BXXUCDZJ6 (Android 17 / One UI 9; профиль текущего досье)  
**Режим сбора:** read-only; читались свойства, состояние процессов, метаданные файлов и журналы.

## Краткий результат

На устройстве запущены обе части Samsung Engineering Mode:

- Binder HAL: vendor.samsung.hardware.security.engmode-service, SELinux domain u:r:hal_engmode_default:s0;
- legacy/server process: emservice, SELinux domain u:r:emservice:s0.

Также работают tzdaemon, tzts_daemon и proca. Ранее обнаружены AIDL endpoint vendor.samsung.hardware.security.engmode.ISehEngmode/default и VINTF manifest для него.

В libengmode_client.so найдены клиентские символы/строки для формирования запросов и чтения/установки состояния токенов: makeTokenReq, getRequestMsg, getToken, installToken, isTokenInstalled, getLastTokenStatus, getModesbit, commandForESS и другие. В libengmode_server.so обнаружены классы EngineeringModeLegacy и EngineeringModeWorld, код token cache, ESS-команд и чтения/записи STEADY.

**Это подтверждает наличие программного стека Engineering Mode/ESS в текущей vendor-среде. Это НЕ подтверждает, что конкретное устройство имеет право получить OEM-unlock token, что сервер Samsung выдаст такой токен или что какая-либо операция успешно выполнялась на аппарате.**

## Наблюдения на устройстве

### Состояние служб

Все пять служб вернули running:

| Служба | Результат |
|---|---|
| engmode_hal | running |
| emservice | running |
| tz_service | running |
| tzts_service | running |
| proca | running |

### Процессы и SELinux domains

| Процесс | SELinux context |
|---|---|
| tzdaemon | u:r:tzdaemon:s0 |
| tzts_daemon | u:r:tztsd:s0 |
| vendor.samsung.hardware.security.engmode-service | u:r:hal_engmode_default:s0 |
| vendor.samsung.hardware.security.proca@2.0-service | u:r:hal_proca_default:s0 |
| emservice | u:r:emservice:s0 |

Все пять процессов показаны от пользователя system.

### Файлы vendor

Файлы и размеры, считанные на устройстве:

| Путь | Размер, байт |
|---|---:|
| /vendor/bin/emservice | 11 000 |
| /vendor/bin/vendor.samsung.hardware.security.engmode-service | 33 504 |
| /vendor/lib64/libengmode15.so | 120 704 |
| /vendor/lib64/libengmode2lite.so | 258 368 |
| /vendor/lib64/libengmode_client.so | 31 776 |
| /vendor/lib64/libengmode_server.so | 99 880 |
| /vendor/lib64/libengmode_tlc.so | 15 344 |
| /vendor/lib64/vendor.samsung.hardware.security.engmode-V1-ndk.so | 63 160 |

Размеры совпадают с соответствующими сохранёнными артефактами в a26-analysis/engmode/current/vendor/bin и vendor/lib64. Это полезная корреляция, но не криптографическое подтверждение идентичности: SHA-256 с устройства не снимался.

В репозитории есть отдельная копия vendor.samsung.hardware.security.engmode-V1-ndk.so в system-lib64 размером 85 488 байт. Её нельзя смешивать с 63 160-байтной копией из /vendor/lib64.

### Binder и VINTF

Ранее подтверждено наличие сервиса vendor.samsung.hardware.security.engmode.ISehEngmode/default. На устройстве найден manifest /vendor/etc/vintf/manifest/vendor.samsung.hardware.security.engmode-manifest.xml.

Поиск APK через pm list packages не обнаружил пакетов с engmode/engineering в имени. Это не противоречит результату: компоненты реализованы native init-службами и HAL и не обязаны быть отдельными Android-приложениями.

## Клиентская библиотека: libengmode_client.so

В строках библиотеки присутствуют имена методов:

- getServer, getStatus, getVersion, getID;
- makeTokenReq, getRequestMsg, getToken;
- installToken, isTokenInstalled, removeToken;
- getLastTokenStatus, getExpiryDate, getTokenInfoForJanus;
- getModesbit, getStringModes, getNumOfModes;
- commandForESS, getServerTime, getTUC;
- makeITLReq, recoveryITL, sendFuseCmd;
- getBytes, setPriorityTime, getPriorityTime.

Строки ошибок включают EM token length is invalid, Failed to get token, Failed to get token request message, Failed to get binder service, Server not published, waiting... и сообщения об ошибках отдельных методов.

## Серверная библиотека: libengmode_server.so

В строках обнаружены классы EngineeringModeHandler, EngineeringModeLegacy и EngineeringModeWorld.

Имена методов legacy/world-пути включают:

- emIsTokenInstalled, emTokenInstall, emGetTokenRequest;
- emGetId, emGetExpiryDate, emGetStatus;
- emRemoveToken, emGetRecoveryRequest, emRecoveryData;
- emGetLastTokenStatus, emEssCommand, emGetToken;
- emGetTuc, emGetModes, emGetModesBit;
- emGetTimeRequest, emVerifyTime.

Имена внутренних операций EngineeringModeWorld указывают на token cache, DID, подготовку payload, ESS sync-up, чтение/запись токена и статуса, priority time, а также чтение/запись STEADY. Строки библиотеки содержат сообщения Failed to write steady, Failed to write token, Failed to init core, Failed to create token cache, Your request(get token) is not supported и Your request(recovery request) is not supported.

Наличие этих строк и символов доказывает присутствие соответствующих кодовых компонентов в библиотеке, но не то, что конкретная ветвь достижима для пользователя или что операция завершилась успешно.

## Журналы

- Широкий первый grep дал много посторонних строк: неограниченное выражение ESS совпадает с окончаниями обычных слов, например process. Эту выборку нельзя считать журналом ESS.
- Более узкий поиск по последним 3000 строкам logcat не вернул совпадений по engmode, ISehEngmode, em_token, EM_CMD_TOKEN, PO_OEM_UNLOCK, bootloader_unlock, STEADY, tzdaemon, rpmb_set_lock_state и avc: denied.
- Это означает только отсутствие совпадений в выбранном фрагменте журнала. Это не доказывает отсутствие запросов, отсутствие ESS-активности вообще или неисправность служб.
- В показанном ранее отфильтрованном dmesg также не было совпадений. Полный kernel log не анализировался.

## Сопоставление с состоянием OEM Lock

Ранее снятый read-only результат service call oem_lock:

| Транзакция | Смысл | Ответ |
|---:|---|---|
| 3 | carrier allowed | true |
| 5 | user allowed | true |
| 6 | overall allowed | true |
| 7 | device OEM unlocked | false |

Android OEMLockService сообщал, что пользовательская/общая возможность разрешена, но устройство фактически оставалось locked. Это согласуется с ранее зафиксированными boot properties: ro.boot.flash.locked=1, ro.boot.vbmeta.device_state=locked, ro.boot.verifiedbootstate=green и ro.boot.other.locked=1.

## Вывод и границы доказанного

1. Engineering Mode HAL, emservice, TEEGRIS-сопутствующие службы и Proca запущены.
2. Клиентская и серверная библиотеки содержат расширенный интерфейс токенов и ESS; серверная библиотека содержит код token cache и STEADY I/O.
3. Набор символов/строк не подтверждает выдачу Samsung-подписанного токена, привилегию OEM Unlock или доступный пользователю интерфейс разблокировки.
4. Журналы не дали свидетельств успешного запроса или установки токена.
5. OEMLockService по-прежнему сообщает device OEM unlocked=false.
6. Ни один write-тест не выполнялся. В STEADY/RPMB, recovery, vbmeta и другие разделы ничего не записывалось.

## Следующие безопасные задачи статического анализа

- Сверить хранящиеся ELF-файлы с фактическими on-device SHA-256, если владелец позже предоставит только хеши.
- Статически сопоставить AIDL transaction map и libengmode_client.so/libengmode_server.so, не отправляя транзакции на устройстве.
- Проверить зависимости libengmode_tlc.so, libengmode15.so, libengmode2lite.so и связанный HAL/TEE интерфейс по уже извлечённым ELF.
- Отдельно установить по статическому анализу, какие функции только читают состояние, а какие потенциально меняют его.

---

**Подробный технический intake:** [RUNTIME_DIAGNOSTICS_2026-11-14.md](../a26-analysis/engmode/current/RUNTIME_DIAGNOSTICS_2026-11-14.md).  
**Первичный источник наблюдений:** вывод Termux/KernelSU, предоставленный владельцем устройства в переписке 14.11.2026.  
**Связанный корпус:** a26-analysis/engmode/current/ и сводка a26/README_RU.md.


## Дополнение: зависимости ELF и граница TEE — 14.11.2026

Новая проверка readelf и strings на шести библиотеках с устройства уточнила архитектуру:

- libengmode_server.so имеет DT_NEEDED на libengmode_tlc.so и libengmode2lite.so, а также libbinder.so, libstork_shared.so, libsecril-client.so и librtts_client.so.
- libengmode_tlc.so зависит от libteecl.so; присутствуют имена TEEC_InitializeContext, TEEC_OpenSession, TEEC_InvokeCommand и em_tlc_send_teegris. Это подтверждает использование TEE Client API как транспорта к защищённой среде. UUID/команды TA и точная семантика обмена не установлены.
- libengmode15.so содержит ESS request/token/STEADY functions, crypto dependency и строки динамической интеграции с RIL.
- libengmode2lite.so содержит строки парсинга токенов/сертификатов, проверки подписей, nonce/session key и ESI metadata. Это наличие кода, не доказательство успешного выполнения.
- vendor.samsung.hardware.security.engmode-V1-ndk.so содержит AIDL Bp/Bn glue и зависит от libbinder_ndk.so; libengmode_client.so и libengmode_server.so зависят от classic libbinder.so. Следовательно, нельзя сводить все интерфейсы к одному Binder protocol.

Шесть live SHA-256 записаны в [ARCHITECTURE_STATIC_FINDINGS_2026-11-14.md](../a26-analysis/engmode/current/ARCHITECTURE_STATIC_FINDINGS_2026-11-14.md). Сравнение этих хешей с хранящимися binary artifacts репозитория пока не выполнялось.

**Новая граница доказанного:** подтверждены DT_NEEDED зависимости и TEE Client API names; прямой порядок вызовов между AIDL HAL, emservice и TLC пока не установлен. Не выполнялись Binder/ESS state-changing calls и записи в разделы устройства.


## Дополнение: подтверждённые связи ELF-символов — 14.11.2026

Новая read-only проверка `readelf -d` и `readelf -Ws` позволила связать конкретные функции между исполняемыми файлами и библиотеками:

- `emservice` импортирует `EngineeringModeHandler::instantiate()`; эта функция определена в `libengmode_server.so`.
- `libengmode_server.so` определяет `EngineeringModeHandler::onTransact()`, `EngineeringModeWorld::emProcess()`, `emSyncUpCore()` и STEADY read/write accessors.
- `libengmode_server.so` импортирует `em_tlc_send`, а `libengmode_tlc.so` определяет эту функцию.
- TLC импортирует из `libteecl.so` реальные TEEC-функции: инициализацию контекста, открытие сессии, выделение shared memory, вызов команды, освобождение памяти и закрытие сессии.

Поэтому теперь подтверждена статическая связка:

`emservice → libengmode_server.so → libengmode_tlc.so → libteecl / TEEC API`

Это доказывает путь зависимостей и межбиблиотечных symbol references до TEE Client API, но не раскрывает Trusted Application UUID, номера команд, формат payload, внутреннюю политику TEE или право на OEM Unlock.

Отдельно подтверждено, что `vendor.samsung.hardware.security.engmode-service` использует AIDL NDK Binder glue и напрямую зависит от `libengmode_client.so`. Это пока самостоятельная ветвь: точная логика перенаправления AIDL-вызовов в classic Binder client и конкретный маршрут к `emservice` ещё не доказаны.

`libengmode15.so` экспортирует `em_ess_make_token_request`, `em_ess_install_token_v1` и `em_write_to_steady`, но не фигурирует в зафиксированном прямом DT_NEEDED списке `libengmode_server.so`; связь вызова не предполагается без дополнительных доказательств.

Результаты записаны в [подробную архитектурную карту](../a26-analysis/engmode/current/ARCHITECTURE_STATIC_FINDINGS_2026-11-14.md) и [runtime diagnostics](../a26-analysis/engmode/current/RUNTIME_DIAGNOSTICS_2026-11-14.md). Вызовы Binder/ESS не выполнялись, разделы и состояние устройства не изменялись.


## Дополнение: AIDL-служба напрямую импортирует legacy EngMode client API — 14.11.2026

Свежий `readelf -Ws` показал, что `vendor.samsung.hardware.security.engmode-service` импортирует большой набор методов `android::engmodeclient`, а эти же символы определены в `libengmode_client.so`. Исполняемый файл также имеет прямой `DT_NEEDED` на эту библиотеку и импортирует `BnSehEngmode` из AIDL NDK glue.

Среди импортов подтверждены:

- token/request: `makeTokenReq`, `getRequestMsg`, `getToken`, `installToken`, `isTokenInstalled`, `removeToken`, `getLastTokenStatus`, `getTokenInfoForJanus`;
- mode/status: `getModesbit`, `getStringModes`, `getNumOfModes`, `getStatus`;
- ESS/ITL: `commandForESS`, `makeITLReq`, `recoveryITL`;
- time/metadata: `getServerTime`, `getPriorityTime`, `setPriorityTime`, `getTUC`, `getVersion`;
- дополнительные: `getServer`, `getID`, `getExpiryDate`, `sendFuseCmd`, `getBytes`.

Таким образом, AIDL-service executable использует legacy EngMode client API напрямую. Это подтверждённая ELF-связь, а не просто совпадение библиотечных зависимостей. Точный порядок forwarding внутри AIDL-обработчиков, имя legacy Binder service и доступность каждого метода из внешней транзакции ещё не установлены.

Подробности и полный перечень импортов записаны в [ARCHITECTURE_STATIC_FINDINGS](../a26-analysis/engmode/current/ARCHITECTURE_STATIC_FINDINGS_2026-11-14.md) и [RUNTIME_DIAGNOSTICS](../a26-analysis/engmode/current/RUNTIME_DIAGNOSTICS_2026-11-14.md). Никакие методы не вызывались; устройство не изменялось.


## Дополнение: ELF-layout AIDL executable и отсутствие objdump — 14.11.2026

Для `vendor.samsung.hardware.security.engmode-service` получены размеры секций:

- `.text`: `0x3054`;
- `.plt`: `0x3f0`;
- `.rela.plt`: 1464 байта — 61 стандартная 24-байтовая ELF64 RELA-запись;
- `.dynsym`: `0x708`, `.dynstr`: `0xd64`;
- флаги динамического линкера: `BIND_NOW`, `NOW PIE`.

В отфильтрованном списке секций не обнаружены `.symtab` и `.strtab`; видимая dynamic symbol table содержит лишь несколько собственных вспомогательных определений. Имена внутренних обработчиков AIDL из этого ELF-вывода получить нельзя.

В Termux не найдены `llvm-objdump` и `objdump`, поэтому дизассемблирование и карта call sites пока не сделаны. 61 запись PLT — это общее количество relocation entries, а не количество вызовов EngMode. Следующий read-only этап — сохранить полную таблицу `readelf -rW`; при желании владелец может отдельно установить LLVM tools в Termux для дизассемблирования. Никакие методы и состояние устройства не затрагивались.


## Дополнение: PLT и relocation map AIDL-службы — 14.11.2026

После установки Termux LLVM 21.1.8 дизассемблер успешно запущен через su -c: при обычном запуске чтение /vendor/bin/vendor.samsung.hardware.security.engmode-service завершалось Permission denied. Сохранены три файла: ~/a26_engmode/relocations.txt (66 строк), plt.txt (380 строк) и disassembly.txt (3459 строк).

Сопоставлены адреса PLT-stub с R_AARCH64_JUMP_SLOT для ключевых методов legacy API. Например: engmodeclient() — PLT 0x6140 / slot 0x74b0; getServer() — 0x6150 / 0x74b8; getModesbit() — 0x61e0 / 0x7500; commandForESS() — 0x6270 / 0x7548; makeTokenReq() — 0x6290 / 0x7558; installToken() — 0x6320 / 0x75a0; getStatus() — 0x6330 / 0x75a8. Полная таблица из 27 EngMode методов находится в архитектурной карте и runtime diagnostics.

Это доказывает соответствие PLT stub ↔ GOT/relocation slot, но ещё не доказывает фактические BL call sites в .text и достижимость методов через AIDL transactions. Предыдущая заметка об отсутствии objdump устарела. Никакие Binder/ESS методы не вызывались; состояние устройства не менялось.


## Дополнение: прямые BL call sites из AIDL executable — 14.11.2026

По сохранённому LLVM-дизассемблеру найдены прямые AArch64 BL-вызовы ко всем 23 прикладным методам android::engmodeclient из relocation inventory. Четыре общих метода — constructor, getServer, getBytes, destructor — также многократно вызываются. Следовательно, все 27 импортированных EngMode client symbols имеют хотя бы одну ссылку-вызов в .text.

Адреса method-specific call sites:
- getTokenInfoForJanus — 0x32c8;
- getModesbit — 0x34d8;
- getStringModes — 0x36e8;
- getLastTokenStatus — 0x38f8;
- getPriorityTime — 0x3b08; setPriorityTime — 0x3d2c;
- getTUC — 0x3f24; getToken — 0x403c;
- makeITLReq — 0x4274; recoveryITL — 0x4480;
- commandForESS — 0x45b8; getServerTime — 0x47c8;
- makeTokenReq — 0x4a24; getRequestMsg — 0x4c98;
- getID — 0x4eb8; getExpiryDate — 0x50c8;
- removeToken — 0x52bc; getNumOfModes — 0x53ac;
- sendFuseCmd — 0x549c; getVersion — 0x558c;
- isTokenInstalled — 0x567c; installToken — 0x5780;
- getStatus — 0x58b4.

Повторяющаяся структура вокруг вызовов — constructor → getServer() → специализированный метод → getBytes() → destructor — согласуется с набором AIDL adapter/wrapper routines. Однако точные границы функций, transaction-code mapping, проверки разрешений и достижимость каждого обработчика ещё не восстановлены. Семантику getBytes() также нельзя выводить только из имени.

Следующий этап — разбор ограниченных диапазонов дизассемблера вокруг getModesbit, commandForESS, makeTokenReq, installToken, sendFuseCmd и getStatus: условия ветвления, подготовка аргументов, обработка результата и соседние строки. Это исключительно статический анализ; методы не вызывались и состояние устройства не менялось.
