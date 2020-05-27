#!/bin/sh

# This script is meant to dump all skin and android auto files
# author: Jille
########################

#info
DESCRIPTION="This script will write a dirlist to SD-card"

#Firmware/unit info:
VERSION="$(cat /net/rcc/dev/shmem/version.txt | grep "Current train" | sed 's/Current train = //g' | sed -e 's|["'\'']||g' | sed 's/\r//')"

echo $DESCRIPTION
echo Firmware version: $VERSION
echo "---------------------------"
sleep .5

#Make app volume writable
echo Mounting app folder.
mount -uw /mnt/app

#Is there any SD-card inserted?
if [ -d /net/mmx/fs/sda0 ]; then 
    echo SDA0 found
    VOLUME=/net/mmx/fs/sda0
elif [ -d /net/mmx/fs/sdb0 ] ; then
    echo SDB0 found
    VOLUME=/net/mmx/fs/sdb0
else 
    echo No SD-cards found.
    exit 0
fi

sleep .5

echo Mounting SD-card.
mount -uw $VOLUME

sleep .5

#Make backup folder
echo "Performing ls command. This can take a long time."
echo "Feel free to unplug the SD-card if it takes too long."
DUMPPATH=$VOLUME/Dump/$VERSION/dirlisting.txt
cd /
ls -a -l -R > $DUMPPATH

exit 0
