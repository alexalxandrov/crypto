# Samsung Galaxy A26 5G — фактический профиль устройства

**Дата получения данных:** 2026-11-13  
**Источник:** текстовые значения, предоставленные владельцем со страницы Settings → About phone → Software information.  
**Назначение:** корреляция установленной прошивки с уже изученными артефактами репозитория. Данные не содержат IMEI, серийного номера или номера телефона.

## 1. Идентификация и ПО

| Поле | Значение |
|---|---|
| Модель (по предыдущей идентификации) | Samsung Galaxy A26 5G, SM-A266B/DS |
| One UI version | 9.0 |
| Android version | 17 |
| Baseband version | `A266BXXUCDZJ6` |
| Build number | `CP2A.260605.016.A266BXXUCDZJ6` |
| Service provider software version | `SAOMC_SM-A266B_OXM_CAU_17_0007` |
| CSC line | `CAU/CAU,CAU/CAU` |
| Google Play system update | 2026-09-01 |
| Kernel | `5.15.197-android13-3-34427544` |
| Kernel build timestamp | Mon Oct 19 15:26:18 KST 2026 |
| SE for Android | Enforcing |
| SE policy label | `SEPF_SM-A266B_13_0001` |
| SE policy timestamp | Mon Oct 19 15:37:57 2026 |
| Knox | 3.14 |
| Knox API level | 41 |
| HDM | 4.0 - 025 |
| Knox POS SDK | 1.0 |
| ASKS | v10.3 Release 20260911 |

## 2. Сверка с исследуемым пакетом

**Совпадение подтверждено по идентификаторам сборки:**

- В репозитории: `a26-analysis/current/raw/sboot.bin` извлечён из BL package `A266BXXUCDZJ6`.
- На устройстве: Baseband version заканчивается на `A266BXXUCDZJ6`.
- Build number также заканчивается на `A266BXXUCDZJ6`.
- Официальная страница Samsung для SM-A266B перечисляет build `A266BXXUCDZJ6`, Android 17, One UI 9, release date 2026-11-03 и security patch 2026-10-05:
  https://doc.samsungmobile.com/SM-A266B/033186250417/eng.html
- Региональный каталог прошивок CAU указывает для этого PDA/AP build соответствующий CSC package `A266BOXMCDZJ6`:
  https://www.sammobile.com/samsung/galaxy-a26-5g/firmware/SM-A266B/CAU/download/A266BXXUCDZJ6/2189737/

**Вывод:** текущий SBoot-анализ из `a26-analysis/current/` относится к той же версии прошивки, что и установленная на телефоне, с высокой уверенностью по совпадению build/baseband identifiers. CSC устройства — CAU в OXM multi-CSC family. Точная побайтная сверка раздела BL непосредственно с текущим телефоном не выполнялась.

## 3. Что эти данные не доказывают

- One UI 9 / Android 17 сами по себе не отвечают на вопрос, разрешён ли OEM unlock на данном экземпляре.
- Knox 3.14 и Knox API level 41 — версии платформы/API, **не значение Knox Warranty Bit**.
- SE for Android status `Enforcing` показывает режим SELinux, а не статус разблокировки загрузчика.
- Google Play system update date не определяет версию SBoot.
- CSC CAU не создаёт оснований ожидать другой региональный SBoot внутри того же PDA/AP build.
- Положение OEM Unlock в Developer Options не является достаточным подтверждением состояния SBoot, особенно с учётом ранее отмеченного временного изменения `ro.boot.other.locked` через KernelSU `resetprop`.

## 4. Значение для исследования

1. Общие ветки J6 в `a26-analysis/current/` остаются правильной основной базой исследования; повторно скачивать или анализировать соседний firmware build вместо этого не требуется.
2. Не менять CSC и не прошивать другой BL для проверки гипотезы.
3. Следующий сбор runtime evidence, если он будет продолжен, должен быть только read-only: фактические поля Download Mode, без перехода в Device Unlock Mode и без подтверждения стирания данных.
4. До такого сбора остаются неизвестными точные Download Mode поля KG/RMM/FRP/OEM Lock, фактическое состояние загрузчика и Knox Warranty Bit.

## 5. Исходные сведения владельца

Владелец сообщил, что ранее на странице Developer Options был виден включённый переключатель OEM unlocking. В исследовательских записях также указано, что переключатель становился видимым после временного изменения `ro.boot.other.locked` через KernelSU `resetprop`. Поэтому это наблюдение не повышает уровень доказанности реального unlock permission.
