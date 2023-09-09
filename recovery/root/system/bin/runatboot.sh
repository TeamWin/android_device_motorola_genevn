#!/system/bin/sh

mount /vendor_dlkm
mount /vendor
modprobe -d /vendor/lib/modules /vendor/lib/modules/nova_0flash_mmi.ko
modprobe -d /vendor/lib/modules /vendor/lib/modules/ili9882_mmi.ko
sleep 1
if [ $(cat /sys/class/touchscreen/primary/productinfo) == "NT36672C" ]
then
echo 1 > /sys/class/touchscreen/primary/forcereflash
echo novatek_ts-csot-NT36672C-2302240D-605b-genevn.bin > /sys/class/touchscreen/primary/doreflash
echo "Reflashing firmware..."
echo 0 > /sys/class/touchscreen/primary/forcereflash
fi

is_fastboot=$(getprop init.svc.fastbootd)
if [ "$is_fastboot" != "running" ]; then
echo "Fastboot is running"
fi

mkdir /firmware
SLOT=$(getprop ro.boot.slot_suffix)
mount /dev/block/bootdevice/by-name/modem$SLOT /firmware -O ro
echo "1" > /proc/sys/kernel/firmware_config/force_sysfs_fallback
echo "1" > /sys/kernel/boot_adsp/boot
exit 0
