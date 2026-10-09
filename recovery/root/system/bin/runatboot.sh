#!/system/bin/sh

#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP Device Tree Generator
# Copyright (C) 2019-Present A-Team Digital Solutions
# Copyright (C) 2024 sosRR
#

# Selinux Permissive
setenforce 0

# Mount Partitions
mount /vendor_dlkm
mount /vendor

# Modprobe Device Drivers(Modules)
echo 1 > /proc/sys/kernel/firmware_config/force_sysfs_fallback
modprobe -d /vendor_dlkm/lib/modules /vendor_dlkm/lib/modules/nova_0flash_mmi.ko
modprobe -d /vendor_dlkm/lib/modules /vendor_dlkm/lib/modules/ili9882_mmi.ko
modprobe -d /vendor_dlkm/lib/modules /vendor_dlkm/lib/modules/touchscreen_mmi.ko

# Rest
sleep 1

# Flash Csot Novatek Touch Firmware
if [ $(cat /sys/class/touchscreen/primary/productinfo) == "NT36672C" ]
then
echo 1 > /sys/class/touchscreen/primary/forcereflash
echo novatek_ts-csot-NT36672C-2302240D-605b-genevn.bin > /sys/class/touchscreen/primary/doreflash
echo "Reflashing Csot Novatek Touch Firmware ..."
echo 0 > /sys/class/touchscreen/primary/forcereflash

# Flash Ilitek Touch Firmware
elif [ $(cat /sys/class/touchscreen/primary/productinfo) == "6666" ]
then
echo "Loading Ilitek Touch Firmware ..."

# Unsupported Touchscreen
else
echo "Unsupported Touchscreen Detected"
exit
fi

# Qualcomm Modem + ADSP Firmware Loading
mkdir /firmware
SLOT=$(getprop ro.boot.slot_suffix)
mount -t ext4 -o ro /dev/block/bootdevice/by-name/modem$SLOT /firmware
echo "1" > /sys/kernel/boot_adsp/boot

exit 0
