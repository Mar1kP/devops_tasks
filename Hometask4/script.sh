#!/bin/bash
useradd adminuser
echo 'adminuser:pass' | sudo chpasswd
groupadd admin
usermod -aG admin adminuser 


useradd poweruser
bash -c echo "poweruser ALL=(ALL:ALL) /sbin/iptables" >> /etc/sudoers
usermod -aG adminuser poweruser
find / -type d -perm 4000 -exec ls -ld {} \; >> /var/suid_files.txt