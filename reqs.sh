#!/bin/sh

yum -y install epel-release
yum -y install vim htop ansible pyOpenSSL python-cryptography nfs-utils
yum -y update
systemctl unmask NetworkManager
systemctl enable NetworkManager
systemctl start NetworkManager
git clone https://github.com/openshift/openshift-ansible $HOME/openshift-ansible
mkdir -p /srv/nfs
chown nfsnobody:nfsnobody /srv/nfs
chmod 777 /srv/nfs
echo "/srv/nfs *(rw,sync,all_squash)" >> /etc/exports
systemctl enable nfs-server
systemctl start nfs-server
reboot
