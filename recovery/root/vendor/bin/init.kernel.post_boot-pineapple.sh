#=============================================================================
# Copyright (c) 2023 Qualcomm Technologies, Inc.
# All Rights Reserved.
# Confidential and Proprietary - Qualcomm Technologies, Inc.
#=============================================================================


get_num_logical_cores_in_physical_cluster()
{
	i=0
	logical_cores=(0 0 0 0 0 0)
	if [ -f /sys/devices/system/cpu/cpu0/topology/cluster_id ] ; then
		physical_cluster="cluster_id"
	else
		physical_cluster="physical_package_id"
	fi
	for i in `ls -d /sys/devices/system/cpu/cpufreq/policy[0-9]*`
	do
		if [ -e $i ] ; then
			num_cores=$(cat $i/related_cpus | wc -w)
			first_cpu=$(echo "$i" | sed 's/[^0-9]*//g')
			cluster_id=$(cat /sys/devices/system/cpu/cpu$first_cpu/topology/$physical_cluster)
			logical_cores[cluster_id]=$num_cores
		fi
	done
	cpu_topology=""
	j=0
	physical_cluster_count=$1
	while [[ $j -lt $physical_cluster_count ]]; do
		cpu_topology+=${logical_cores[$j]}
		if [ $j -lt $physical_cluster_count-1 ]; then
			cpu_topology+="_"
		fi
		j=$((j+1))
	done
	echo $cpu_topology
}

#Implementing this mechanism to jump to powersave governor if the script is not running
#as it would be an indication for devs for debug purposes.
fallback_setting()
{
	governor="powersave"
	for i in `ls -d /sys/devices/system/cpu/cpufreq/policy[0-9]*`
	do
		if [ -f $i/scaling_governor ] ; then
			echo $governor > $i/scaling_governor
		fi
	done
}

#because the next action to execute the init.kernel.post_boo-pineapple_xxxx.sh maybe failed,so we
#set the correct sleep mode here
echo s2idle > /sys/power/mem_sleep

variant=$(get_num_logical_cores_in_physical_cluster "$1")
echo "CPU topology: ${variant}"
case "$variant" in
	"2_3_2_1")
	/system/bin/sh /vendor/bin/init.kernel.post_boot-pineapple_default_2_3_2_1.sh
	;;
	"2_3_1_1")
	/system/bin/sh /vendor/bin/init.kernel.post_boot-pineapple_2_3_1_1.sh
	;;
	"2_3_2_0")
	/system/bin/sh /vendor/bin/init.kernel.post_boot-pineapple_2_3_2_0.sh
	;;
	*)
	echo "***WARNING***: Postboot script not present for the variant ${variant}"
	fallback_setting
	;;
esac

#config fg and top cpu shares
echo 5120 > /dev/cpuctl/top-app/cpu.shares
echo 4096 > /dev/cpuctl/foreground/cpu.shares

#config sstop and ssfg cpu shares
echo 5120 > /dev/cpuctl/sstop/cpu.shares
echo 4096 > /dev/cpuctl/ssfg/cpu.shares
#config general cpu shares
echo 2048 > /dev/cpuctl/general/cpu.shares
