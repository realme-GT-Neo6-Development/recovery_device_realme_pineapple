#!/bin/bash
fw_path=$1
echo fw_path=$fw_path
cat /proc/devinfo/ufs
cat /proc/devinfo/ufs_version
echo "start move firmware:"
echo $fw_path
#oplusreserve1 -> /dev/block/sdf6
if [ "$fw_path" != "" ]; then
	if [ -f $fw_path ];then
		echo "new fw found, copy to target partition";
		dd if=/dev/zero of=/dev/block/bootdevice/by-name/oplusreserve1  bs=4096 count=1024;
		dd if="${fw_path}" of=/dev/block/bootdevice/by-name/oplusreserve1  bs=1 seek=0 skip=80;
	fi
fi
