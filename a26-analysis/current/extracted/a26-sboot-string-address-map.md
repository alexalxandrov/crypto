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

- VA 0x23a6fb / file offset 0x23a6fb: UFS Check Read Device Desc Error: %d

- VA 0x26cdd6 / file offset 0x26cdd6: UFS Check Read Geometry Desc Error: %d

- VA 0x23c827 / file offset 0x23c827: UFS Check Read Config Desc Error: %d

- VA 0x240c2a / file offset 0x240c2a: UFS Check Read BootlunEn Attr Error: %d

- VA 0x253872 / file offset 0x253872: UFS supports TW feature, 0x%x

- VA 0x240b79 / file offset 0x240b79: UFS_Config_Desc_Header wPeriodicRTCUpdate error

- VA 0x25c25f / file offset 0x25c25f: UFS_Config_Desc_Header bLength error

- VA 0x23a683 / file offset 0x23a683: UFS_Config_Desc_Header bDescriptorType error

- VA 0x24c331 / file offset 0x24c331: UFS_Config_Desc_Header bConfDescContinue error

- VA 0x24c361 / file offset 0x24c361: UFS_Config_Desc_Header bBootEnable error

- VA 0x2629f0 / file offset 0x2629f0: UFS_Config_Desc_Header bDescrAccessEn error

- VA 0x278560 / file offset 0x278560: UFS_Config_Desc_Header bInitPowerMode error

- VA 0x25e0c1 / file offset 0x25e0c1: UFS_Config_Desc_Header bHighPriorityLUN error

- VA 0x257684 / file offset 0x257684: UFS_Config_Desc_Header bSecureRemovalType error

- VA 0x25e0f0 / file offset 0x25e0f0: UFS_Config_Desc_Header bInitActiveICCLevel error

- VA 0x243170 / file offset 0x243170: UFS_Config_Desc_Header bWriteBoosterBufferType conf : %d, geom : %d

- VA 0x25c2cd / file offset 0x25c2cd: dLUNumWriteBoosterBufferAllocUnits error at LU 0 %d, %d

- VA 0x2558f3 / file offset 0x2558f3: UFS_Config_Desc_Header bWriteBoosterBufferNoUserSpaceReductionEn error

- VA 0x23a721 / file offset 0x23a721: dLUNumWriteBoosterBufferAllocUnits error at LU%d	%d, %d

- VA 0x2559d2 / file offset 0x2559d2: UFS Provision : PASS

- VA 0x27858d / file offset 0x27858d: bLUEnable error at LU%d  %d, %d

- VA 0x260794 / file offset 0x260794: bBootLunID error at LU%d  %d, %d

- VA 0x2607b6 / file offset 0x2607b6: bLUWriteProtect error at LU%d  %d, %d

- VA 0x23c8cb / file offset 0x23c8cb: bMemoryType error at LU%d  %d, %d

- VA 0x264c50 / file offset 0x264c50: dNumSharedWriteBoosterBufferAllocUnits error %d, %d

- VA 0x251077 / file offset 0x251077: bLogicalBlockSize error at LU%d  %d, %d

- VA 0x25593b / file offset 0x25593b: bProvisioningType error at LU%d  %d, %d

- VA 0x2785ae / file offset 0x2785ae: wContextCapabilities error at LU%d  %d, %d

- VA 0x27ca0b / file offset 0x27ca0b: UFS bootLU is not enabled

- VA 0x26f848 / file offset 0x26f848: dNumAllocUnits error at LU%d %d %d

- VA 0x23e7b9 / file offset 0x23e7b9: dNumAllocUnits error at LU%d  %x, %x

- VA 0x24f0ce / file offset 0x24f0ce: UFS Provision : FAIL

- VA 0x24a0e0 / file offset 0x24a0e0: %s : dVendorSpecificFeaturesSupport = 0x%x

- VA 0x23c931 / file offset 0x23c931: ufs_sec_check_psa_support
- VA 0x264c9e / file offset 0x264c9e: %s : ufs doesn't support psa.

- VA 0x262a40 / file offset 0x262a40: ufs_sec_user_psa_configure
- VA 0x24c3f2 / file offset 0x24c3f2: %s : UFS read attribute for PSA state Error: %d

- VA 0x278624 / file offset 0x278624: ufs_read_bPSAState
- VA 0x247c4a / file offset 0x247c4a: %s : get current psa state error: %d

- VA 0x24f0e4 / file offset 0x24f0e4: %s : psa state : %d

- VA 0x273b6f / file offset 0x273b6f: %s : psa state is PRE-SOLDERING state.

- VA 0x2762b5 / file offset 0x2762b5: UFS write attribute for PSA state Error: %d

- VA 0x24a10c / file offset 0x24a10c: %s : ufs set loading complete state is wrong. %d

- VA 0x25e1ab / file offset 0x25e1ab: %s : ufs current psa state : %d

- VA 0x273b44 / file offset 0x273b44: %s : ufs psa state : %d

- VA 0x273b5d / file offset 0x273b5d: ufs_set_bPSAState
- VA 0x266b5d / file offset 0x266b5d: %s : ufs user psa provision is succeeded.

- VA 0x24c27f / file offset 0x24c27f: THGLF2G9J8LBATCA
- VA 0x259f6f / file offset 0x259f6f: THGLF2G8J4LBATDA
- VA 0x2536a3 / file offset 0x2536a3: SCSI swp set FAIL: %d

- VA 0x266a2e / file offset 0x266a2e: %s: [bio_open] failed to open %s

- VA 0x2716d3 / file offset 0x2716d3: scsi_swp_set
- VA 0x266a50 / file offset 0x266a50: UFS LU%d SWP control Fail : %d

- VA 0x2760b5 / file offset 0x2760b5: UFS LU%u SWP set success

- VA 0x2457a3 / file offset 0x2457a3: UFS LU%u SWP clear success

- VA 0x259f80 / file offset 0x259f80: UFS LU%u not support SWP setting

- VA 0x250fb4 / file offset 0x250fb4: %s: Trying %d but %d failed!!

- VA 0x268810 / file offset 0x268810: scsi_ufs_set_swp_luns
- VA 0x276131 / file offset 0x276131: UFS_QUERY_WRITE_DESC_CONFIG, len : %02x

- VA 0x2716f8 / file offset 0x2716f8: ==== ufs configuration descriptor setup ====

- VA 0x268826 / file offset 0x268826:   0x%02x
- VA 0x25729e / file offset 0x25729e: 


- VA 0x268356 / file offset 0x268356: 

- VA 0x24f033 / file offset 0x24f033: 
==========================================

- VA 0x2536ba / file offset 0x2536ba: [UFS] %s:%u: UFS utp interface error(%d): 0x%x

- VA 0x23c811 / file offset 0x23c811: ufs_utp_query_process
- VA 0x23a5c6 / file offset 0x23a5c6: [UFS] %s:%u: UFS utp check result error(%d): 0x%x

- VA 0x26f7c1 / file offset 0x26f7c1: UFS Query cmd: 0x%x, flag 0x%x, function 0x%x, response 0x%x

- VA 0x2739cc / file offset 0x2739cc: UFS: %s: query with opcode 0x%02x is not supported

- VA 0x2557dd / file offset 0x2557dd: __utp_query_get_data

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
