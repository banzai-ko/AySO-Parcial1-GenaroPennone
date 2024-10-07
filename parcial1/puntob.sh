#!/bin/bash

# Elegí parted sobre fdisk para automatizar 
sudo parted /dev/sdc --script mklabel msdos
sudo parted /dev/sdc --script mkpart primary ext4 0% 25%
sudo parted /dev/sdc --script mkpart primary ext4 25% 50%
sudo parted /dev/sdc --script mkpart primary ext4 50% 75%
sudo parted /dev/sdc --script mkpart extended 75% 100%
sudo parted /dev/sdc --script mkpart logical ext4 75% 100%

# Formato
sudo mkfs.ext4 /dev/sdc1  
sudo mkfs.ext4 /dev/sdc2  
sudo mkfs.ext4 /dev/sdc3
sudo mkfs.ext4 /dev/sdc5

# Montaje
sudo mkdir -p /mnt/disco{1,2,3,4}
sudo mount /dev/sdc1 /mnt/disco1  
sudo mount /dev/sdc2 /mnt/disco2  
sudo mount /dev/sdc3 /mnt/disco3  
sudo mount /dev/sdc5 /mnt/disco4 

# Resultado 
# NAME   MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
# loop0    7:0    0 63.9M  1 loop /snap/core20/2318
# loop1    7:1    0   87M  1 loop /snap/lxd/29351
# loop2    7:2    0 38.8M  1 loop /snap/snapd/21759
# sda      8:0    0   40G  0 disk 
# └─sda1   8:1    0   40G  0 part /
# sdb      8:16   0   10M  0 disk 
# sdc      8:32   0   10G  0 disk 
# ├─sdc1   8:33   0  2.5G  0 part /mnt/disco1
# ├─sdc2   8:34   0  2.5G  0 part /mnt/disco2
# ├─sdc3   8:35   0  2.5G  0 part /mnt/disco3
# ├─sdc4   8:36   0    1K  0 part 
# └─sdc5   8:37   0  2.5G  0 part /mnt/disco4
# sdd      8:48   0    2G  0 disk 
