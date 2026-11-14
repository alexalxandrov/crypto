# A26 J6 SBoot string / VA map

Raw SBoot: a26-analysis/current/raw/sboot.bin (8388608 bytes)
SHA-256: 3ea5690c8599cfab07578fa304aee5097d3f3c9ed6ffd996cf3b215d364ca0ce

androidboot.other.locked: file offset 0x26b317; known VA 0x26b317 implies load base 0x0.

- VA 0x265467 / file offset 0x265467: PERSISTENT
- VA 0x2659d8 / file offset 0x2659d8: : none;'><td>

- VA 0x26b317 / file offset 0x26b317: androidboot.other.locked=%d

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
