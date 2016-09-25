#!/bin/sh

yum -y install vim htop epel-release
yum -y install ansible pyOpenSSL python-cryptography
yum -y update
systemctl unmask NetworkManager
systemctl enable NetworkManager
systemctl start NetworkManager
git clone https://github.com/openshift/openshift-ansible $HOME/openshift-ansible
systemctl enable nfs-server
systemctl start nfs-server
echo "/srv/nfs 127.0.0.1(rw,sync,no_root_squash)" >> /etc/exports
systemctl restart nfs-server
reboot
