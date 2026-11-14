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
