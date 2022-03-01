#!/bin/sh

# Find amdgpu device
DEVICE=$(find /sys/class/drm/card*/device/pp_power_profile_mode | sed 's/\/pp_power_profile_mode//')
HWMON_DEVICE=$(grep amdgpu /sys/class/hwmon/hwmon*/name | sed 's/^\(.*hwmon[0-9]\+\).*$/\1/')

# Reset all settings to standard
echo "auto" > ${DEVICE}/power_dpm_force_performance_level
echo 1 > ${DEVICE}/pp_power_profile_mode
echo 175000000 > ${HWMON_DEVICE}/power1_cap
echo "s 0 300 750" > ${DEVICE}/pp_od_clk_voltage
echo "s 1 909 856" > ${DEVICE}/pp_od_clk_voltage
echo "s 2 1134 1037" > ${DEVICE}/pp_od_clk_voltage
echo "s 3 1266 1187" > ${DEVICE}/pp_od_clk_voltage
echo "s 4 1365 1150" > ${DEVICE}/pp_od_clk_voltage
echo "s 5 1432 1150" > ${DEVICE}/pp_od_clk_voltage
echo "s 6 1490 1150" > ${DEVICE}/pp_od_clk_voltage
echo "s 7 1545 1150" > ${DEVICE}/pp_od_clk_voltage
echo "m 0 400 750" > ${DEVICE}/pp_od_clk_voltage
echo "m 1 1000 900" > ${DEVICE}/pp_od_clk_voltage
echo "m 2 2000 950" > ${DEVICE}/pp_od_clk_voltage
echo "c" > ${DEVICE}/pp_od_clk_voltage
