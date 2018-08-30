#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info in the main Magisk thread

# detect network is ready
COUNT=1
while [[ -z `getprop | grep gsm.sim.operator.iso-country` && COUNT -lt 120 ]]; do
    COUNT=${COUNT}+1
    sleep 1
done

# really setprop
setprop gsm.sim.operator.numeric 310030
setprop gsm.sim.operator.iso-country us