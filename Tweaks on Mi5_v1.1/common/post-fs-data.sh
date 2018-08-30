#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread

#fingerprint wakeup
echo 1 > /sys/devices/soc/soc:fpc_fpc1020/enable_wakeup

#disbale ramdump
echo 0 > /sys/module/subsystem_restart/parameters/enable_ramdumps

#disbale LMK log
echo 0 > /sys/module/lowmemorykiller/parameters/debug_level

#enable wcd9330 features
echo 1 > /sys/module/snd_soc_wcd9330/parameters/high_perf_mode

#enable wcd9330 features
echo 1 > /sys/module/snd_soc_wcd9xxx/parameters/impedance_detect_en
