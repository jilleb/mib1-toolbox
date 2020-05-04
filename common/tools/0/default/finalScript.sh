#!/bin/ksh

echo FinalScript for HW ${1} on medium ${2}...

echo "Mounting volumes"
mount -uw /net/mmx/mnt/system/
mount -uw /net/mmx/mnt/app/

echo "Copying MQB-coding green menu to MIB1"
cp /net/mmx/fs/sda0/Toolbox/mqbcoding.esd /net/mmx/mnt/app/eso/hmi/engdefs/mqbcoding.esd
cp /net/mmx/fs/sda0/Toolbox/Scripts/*.* /net/mmx/mnt/app/eso/hmi/engdefs/Scripts/
chmod /net/mmx/bin/chmod a+rwx /net/mmx/mnt/app/eso/hmi/engdefs/Scripts/*

echo FinalScript finished

touch /tmp/SWDLScript.Result
