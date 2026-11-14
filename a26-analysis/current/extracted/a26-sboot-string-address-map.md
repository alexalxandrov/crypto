# A26 J6 SBoot string / VA map

Raw SBoot: a26-analysis/current/raw/sboot.bin (8388608 bytes)
SHA-256: 3ea5690c8599cfab07578fa304aee5097d3f3c9ed6ffd996cf3b215d364ca0ce

androidboot.other.locked: file offset 0x26b317; known VA 0x26b317 implies load base 0x0.

- VA 0x24edc5 / file offset 0x24edc5: using unlock keys which was downloaded by odin

- VA 0x23f11a / file offset 0x23f11a: DPM
- VA 0x245cf7 / file offset 0x245cf7: VDDCAL_FW
- VA 0x2463d5 / file offset 0x2463d5: Unable to get partinfo (%s)

- VA 0x265467 / file offset 0x265467: PERSISTENT
- VA 0x26529e / file offset 0x26529e: PO_OEM_UNLOCK
- VA 0x265508 / file offset 0x265508: SVM
- VA 0x26b4ca / file offset 0x26b4ca: get_oem_unlock_val
- VA 0x26f537 / file offset 0x26f537: there is no unlock keys

- VA 0x26a977 / file offset 0x26a977: Fail to unlock (0x%x)

- VA 0x275d4a / file offset 0x275d4a: Succeed to unlock (0x%x)

- VA 0x26d660 / file offset 0x26d660: sync_lockstate_custtoken
- VA 0x269201 / file offset 0x269201: --reason=bootloader_unlock
--locale=en_US

- VA 0x26b317 / file offset 0x26b317: androidboot.other.locked=%d
- VA 0x2746cd / file offset 0x2746cd: Binaryname has changed (%s) -> (%s)

- VA 0x26ff1c / file offset 0x26ff1c: No signinfo : (%s)

- VA 0x24854a / file offset 0x24854a: DDI
- VA 0x250d3d / file offset 0x250d3d: MISC
- VA 0x24aabd / file offset 0x24aabd: Fail_to_switch_device_state
- VA 0x23e409 / file offset 0x23e409: null
- VA 0x251971 / file offset 0x251971: Failed to switch device state.

- VA 0x240c92 / file offset 0x240c92: Unlock
- VA 0x23e7fd / file offset 0x23e7fd: Lock
- VA 0x25a8ca / file offset 0x25a8ca: OEM %s in RPMB

- VA 0x262794 / file offset 0x262794: %s : RPMB is not initialized yet

- VA 0x2691ec / file offset 0x2691ec: recovery
--wipe_data
--reason=bootloader_unlock
--locale=en_US

- VA 0x260425 / file offset 0x260425: USERDATA
- VA 0x24620d / file offset 0x24620d: erase
- VA 0x269191 / file offset 0x269191: MDM MODE. CAN'T ERASE USERDATA.

- VA 0x2561a0 / file offset 0x2561a0: %s: USERDATA partition is not exist.

- VA 0x2463b3 / file offset 0x2463b3: %s : can not find MISC partition

- VA 0x276a7f / file offset 0x276a7f: Device state switched (%d)


## OEM / unlock strings

- androidboot.other.locked: file offset 0x26b317, inferred VA 0x26b317
- get_oem_unlock_val: file offset 0x26b4ca, inferred VA 0x26b4ca
- PO_OEM_UNLOCK: file offset 0x26529e, inferred VA 0x26529e
- using unlock keys which was downloaded by odin: file offset 0x24edc5, inferred VA 0x24edc5
- there is no unlock keys: file offset 0x26f537, inferred VA 0x26f537
- Fail to unlock: file offset 0x26a977, inferred VA 0x26a977
- Succeed to unlock: file offset 0x275d4a, inferred VA 0x275d4a
- sync_lockstate_custtoken: file offset 0x26d660, inferred VA 0x26d660
- --reason=bootloader_unlock: file offset 0x269201, inferred VA 0x269201
- PERSISTENT: file offset 0x265467, inferred VA 0x265467
- PO_OEM_UNLOCK: file offset 0x26529e, inferred VA 0x26529e

## Raw pointer references to OEM / unlock strings and SBoot functions

- VA 0x26b317: first LE32 offset 0x1d594f; first LE64 offset none
