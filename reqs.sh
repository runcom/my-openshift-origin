#!/bin/sh

yum -y install vim htop epel-release
yum -y install ansible pyOpenSSL python-cryptography
yum -y update
systemctl unmask NetworkManager
systemctl enable NetworkManager
systemctl start NetworkManager
git clone https://github.com/openshift-ansible
reboot
