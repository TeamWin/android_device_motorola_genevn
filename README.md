Recovery Configuration For Moto G Stylus 5G 2023 (Codenamed "genevn")
=========================================

The Motorola Moto G Stylus 5G (2023) (codenamed genevn) is a mid-range smartphone from Motorola Mobility announced in May 2023

## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
SoC     | Qualcomm SM6450-AB Snapdragon 6 Gen 1 (4 nm)
CPU     | Octa-core (4x2.2 GHz Cortex-A78 & 4x1.8 GHz Cortex-A55)
GPU     | Adreno 710
Memory  | 4 GB / 6 GB / 8 GB RAM
Shipped Android Version | Android 13
Storage | 128 GB / 256 GB (UFS 2.2)
Battery | Non-removable Li-Po 5000 mAh battery
Display | LTPS LCD, 120Hz, 1080 x 2200 pixels, 20:9 ratio (~395 ppi density)
Camera  | 50MP (Wide) + 8MP (Ultra-wide) + 2MP (Macro) + 8MP (Selfie)

## Device picture
![Motorola Moto G Stylus 5G 2023](https://fdn2.gsmarena.com/vv/pics/motorola/motorola-moto-g-stylus-5g-2023-1.jpg)

## Device link @ gsmArena
https://www.gsmarena.com/motorola_moto_g_stylus_5g_(2023)-12289.php

# Status
Current State Of Features:
- [X] Correct screen/recovery size
- [X] Working touch, display
- [X] Screen goes off and on
- [X] Backup/restore to/from internal/external storage and adb
- [X] Poweroff
- [X] Reboot to system, bootloader, recovery, fastboot, edl
- [X] ADB (including sideload)
- [X] Support EROFS/F2FS/EXT4/exFAT/FAT32/NTFS
- [X] Decrypt /data
- [X] Flashing zip/images
- [X] MTP export
- [X] All important partitions listed in wipe/mount/backup lists
- [X] Input devices via USB-OTG
- [X] USB mass storage export
- [X] Correct date
- [X] Battery level
- [X] Set brightness
- [X] Vibrate and set vibration
- [X] Screenshot
- [X] Advanced features

# Building
*Build Script Included
```bash
source build/envsetup.sh
lunch twrp_genevn-eng
mka recoveryimage -j$(nproc --all)
```

**Copyright (C) 2019-Present A-Team Digital Solutions**<br />
