Device configuration for Moto G Stylus 5G (2023) (codenamed "genevn")
=========================================

The Motorola Moto G Stylus 5G (2023) (codenamed _"genevn"_) is a mid-range smartphone from Motorola Mobility announced in May 2023.

## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
SoC     | Qualcomm SM6450 Snapdragon 6 Gen 1 (4 nm)
CPU     | Octa-core (4x2.20 GHz Cortex-A78 & 4x1.8GHz Cortex-A55)
GPU     | Adreno 710
Memory  | 6 GB RAM (LPDDR4X)
Shipped Android Version | 13.0, My UX 3.0 (Global)
Storage | 128 GB | 256 GB (UFS 3.1)
Battery | Non-removable Li-Po 5000 mAh battery
Display | LTPS, 120 Hz, 2400 x 1080 pixels, 6.67 inches (~403 ppi density)
Camera  | 50MP (Wide) + 8MP (Ultra-wide) + 16MP (Selfie)

## Device picture
![Motorola Moto G Stylus 5G (2023)](https://fdn2.gsmarena.com/vv/pics/motorola/motorola-moto-g-stylus-5g-2023-1.jpg)

# Status
Current state of features:
- [x] Correct screen/recovery size
- [x] Working touch, display
- [x] Screen goes off and on
- [x] Backup/restore to/from internal/external storage and adb
- [x] Poweroff
- [x] Reboot to system, bootloader, recovery, fastboot, edl
- [x] ADB (including sideload)
- [x] Support EROFS/F2FS/EXT4/exFAT/FAT32/NTFS
- [x] Decrypt /data
- [x] Flashing zip/images
- [x] MTP export
- [x] All important partitions listed in wipe/mount/backup lists
- [x] Input devices via USB-OTG
- [x] USB mass storage export
- [x] Correct date
- [x] Battery level
- [x] Set brightness
- [x] Vibrate and set vibration
- [x] Screenshot
- [x] Advanced features

# Building
```bash
export ALLOW_MISSING_DEPENDENCIES=true
source build/envsetup.sh
lunch twrp_genevn-eng
mka recoveryimage -j$(nproc --all)
```

**Copyright (C) 2023 Team Win Recovery Project**
