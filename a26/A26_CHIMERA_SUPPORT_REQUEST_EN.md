# Chimera support request — SM-A266B EUB bootloader unlock

**Send to:** support@chimeratool.com  
**Official Telegram:** https://t.me/chimeratoolofficialsupport  
**Official model page:** https://chimeratool.com/en/models/samsung-galaxy-a26-5g-sm-a266b?procedureId=344

**Subject:** SM-A266B / A266BXXUCDZJ6 (Android 17, BIT C) — EUB Bootloader Unlock compatibility

Hello Chimera Support,

I have a Samsung Galaxy A26 5G, model **SM-A266B/DS**.

Device details:
- Firmware/AP: **A266BXXUCDZJ6**
- Android: **17**
- One UI: **9**
- CSC: **CAU**
- Hardware revision: **5**
- Download Mode RP SWREV: **B:12 K:12 S:12 (binary C)**
- KG STATE: **COMPLETED (0)**
- WARRANTY VOID: **0**
- SECURE DLD: **ENABLED**
- The bootloader is still locked. The standard Volume Up Device Unlock confirmation does not appear.

Your current SM-A266B model page lists both **Unlock / Relock Bootloader (EUB)** and **Patch Knoxguard (EUB)**. Your EUB documentation says most devices require a hardware test point, and your KnoxGuard Patch documentation says that this operation unlocks the bootloader on supported EUB models.

Could you please confirm:

1. Does **Unlock / Relock Bootloader (EUB)** work on the exact firmware **A266BXXUCDZJ6 / Android 17 / BIT C / CSC CAU**?
2. Does **Patch Knoxguard (EUB)** also unlock this model, and will it run when KG STATE is already **COMPLETED (0)**? Your general guide recommends it for Locked or Active states, so I need to know whether Completed is accepted.
3. Is a hardware test point required for SM-A266B, or can this model use **Switch to EUB** without disassembly?
4. Is the official test-point guide at https://chimeratool.com/en/test-points/1440-test-point-for-samsung-galaxy-a26-5g-models.html the correct connection guide for SM-A266B?
5. Does the unlock operation wipe userdata, change Knox warranty state, or require any special authorization/token?
6. If the procedure fails on this exact build, is there any risk of leaving the device unable to boot or requiring a paid Boot Repair?

I am not asking about FRP removal, MDM removal, or a generic EUB feature listing; I need confirmation of the **bootloader unlock operation** on this exact model/build and rollback revision before purchasing credits or opening the phone.

Thank you.
