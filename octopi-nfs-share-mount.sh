#! /bin/bash

# The purpose of this script is to mount an NFS share to an octopi server. In this case it is being used for timelapses.

SMCI="192.168.0.128"
ping -c $SMCI

if [ $? -eq 0 ]; then
        mount 192.168.0.128:/mnt/user/octopi_share/ /mnt/smci
else
        echo "$SMCI unreachable"
fi

# TODO: add automatically changing timelapse dir and maybe run at bootup?
