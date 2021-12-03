#!/bin/bash

#find -L /path/to/dir/ -xtype l -exec ls -al {} \;
#find / -type -l #find . -type l -ls
find / -type l -exec ls -la '{}'\;
sed -n '/^Character/, /^$/ { /^$/ !p }' /proc/devices #Character devices
sed -n '/^Block/, /^$/ { /^$/ !p }' /proc/devices  #Block devices

#find . \! -perm /1000
find / -type d -perm -1000 -exec ls -ld {} \;# find . -perm -1000
ln -s /etc/hostname /tmp 
useradd testuser
touch /home/testuser/testuser_data
chown testuser /home/testuser/testuser_data