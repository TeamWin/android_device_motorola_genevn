Device configuration for Motorola Edge 30 Pro / Edge Plus (2022) / Edge Plus 5G UW / Edge X30 (hiphi/hiphic/hiphid)
=========================================

The Motorola Edge 30 Pro / Edge Plus (2022) / Edge Plus 5G UW / Edge X30 (codenamed _"hiphi/hiphic/hiphid"_) is a flagship smartphone from Motorola mobility announced in December 2021.

## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
SoC     | Qualcomm SM8450 Snapdragon 8 Gen 1 (4 nm)
CPU     | Octa-core (1x3.0 GHz Kryo 780 & 3x2.5 GHz Kryo 780 & 4x1.8GHz Kryo 780)
GPU     | Adreno 730
Memory  | 8/12 GB RAM (LPDDR5)
Shipped Android Version | 12.0, My UX 3.0 (Global) / MY UI 3.0 (China)
Storage | 128/256/512 GB (UFS 3.1)
Battery | Non-removable Li-Po 4800 mAh (Global) / 5000 mAh (China) battery
Display | 2400 x 1080 pixels, 6.18 inches (~403 ppi density)
Camera  | 50MP (Main) + 50MP (Ultra-wide) + 2MP (Depth) + 60MP (Selfie)

## Device picture
![Motorola Edge 30 Pro / Edge Plus (2022) / Edge Plus 5G UW / Edge X30](https://i.imgur.com/B0cNJ79.png)

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
lunch twrp_hiphi-eng
mka recoveryimage -j$(nproc --all)
```

**Copyright (C) 2023 Team Win Recovery Project**
