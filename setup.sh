#!/bin/bash

# package installations
dnf install vim openssl -y

# enable sshd permission
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
systemctl restart sshd.service

# add student user with sudo privileges
useradd student
echo 'student:student' | chpasswd -
usermod -aG wheel student