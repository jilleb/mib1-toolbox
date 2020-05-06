#!/bin/ksh

echo FinalScript for HW ${1} on medium ${2}...

echo "Mounting volumes"
mount -uw /net/mmx/mnt/system/
mount -uw /net/mmx/mnt/app/

echo "Copying MQB-coding green menu to MIB1"
cp /net/mmx/fs/sda0/Toolbox/mqbcoding.esd /net/mmx/mnt/app/eso/hmi/engdefs/mqbcoding.esd
cp /net/mmx/fs/sda0/Toolbox/Scripts/*.* /net/mmx/mnt/app/eso/hmi/engdefs/scripts/
chmod /net/mmx/bin/chmod a+rwx /net/mmx/mnt/app/eso/hmi/engdefs/scripts/*


cd /net/mmx/mnt/app/eso/bin/
export LD_LIBRARY_PATH=/net/mmx/mnt/app/root/lib-target:/net/mmx/mnt/eso/lib:/net/mmx/mnt/app/usr/lib:/net/mmx/mnt/app/armle/lib:/net/mmx/mnt/app/armle/lib/dll:/net/mmx/mnt/app/armle/usr/lib
export IPL_CONFIG_DIR=/etc/eso/production

/net/mmx/eso/bin/dumb_persistence_writer -P 0 3221356557 01

echo FinalScript finished

touch /tmp/SWDLScript.Result
