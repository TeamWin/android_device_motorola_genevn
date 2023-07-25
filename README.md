Device configuration for Edge 30 Ultra / Edge X30 Pro (codenamed "eqs")
=========================================

The Motorola Edge 30 Ultra / Edge X30 Pro (codenamed _"eqs"_) is a flagship smartphone from Motorola mobility announced in December 2021.

## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
SoC     | Qualcomm SM8475 Snapdragon 8+ Gen 1 (4 nm)
CPU     | Octa-core (1x3.19 GHz Cortex-X2 & 3x2.75 GHz Cortex-A710 & 4x1.8GHz Cortex-A510)
GPU     | Adreno 730
Memory  | 8/12 GB RAM (LPDDR5)
Shipped Android Version | 12.0, My UX 3.0 (Global) / MY UI 3.0 (China)
Storage | 128/256/512 GB (UFS 3.1)
Battery | Non-removable Li-Po 4610 mAh battery
Display | 2400 x 1080 pixels, 6.67 inches (~403 ppi density)
Camera  | 200MP (Main) + 50MP (Ultra-wide) + 12MP (Telephoto) + 60MP (Selfie)

## Device picture
![Motorola Edge 30 Ultra / Edge X30 Pro](https://fdn2.gsmarena.com/vv/pics/motorola/motorola-edge-30-ultra-3.jpg)

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
lunch twrp_eqs-eng
mka recoveryimage -j$(nproc --all)
```

**Copyright (C) 2023 Team Win Recovery Project**
