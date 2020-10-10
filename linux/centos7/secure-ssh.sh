#!/bin/bash
useradd -m -d /home/$1 -s /bin/bash $1
usermod -aG wheel $1
usermod -aG sudo $1

wget https://github.com/mshelto59/SYS-265/raw/master/linux/public-keys/id_rsa.pub

mkdir -p ~/.ssh
touch /home/$1/.ssh/authorized_keys
cat ./id_rsa.pub >> /home/$1/.ssh/authorized_keys

rm id_rsa.pub

sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sed -i 's/#PermitRootLogin/PermitRootLogin/' /etc/ssh/sshd_config


