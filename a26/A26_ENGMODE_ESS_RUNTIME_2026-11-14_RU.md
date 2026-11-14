# Samsung Galaxy A26 5G — Engineering Mode / ESS: runtime evidence

**Дата наблюдений:** 14 ноября 2026 г.  
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

**Первичный источник наблюдений:** вывод Termux/KernelSU, предоставленный владельцем устройства в переписке 14.11.2026.  
**Связанный корпус:** a26-analysis/engmode/current/ и сводка a26/README_RU.md.
