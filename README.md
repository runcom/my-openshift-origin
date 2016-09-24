This repo will bring up an OpenShift Origin cluster on a CentOS 7.x server:

* clone this repo (so, first install `git` on the server)
* run `./reqs.sh`
* copy ssh key to the server (under `~/.ssh/id_rsa`)
* edit `hosts` and fill in the authentication section (Github OAuth)
* edit `/etc/hosts` and point the hostname to the server public ip address
* cd into the `openshift-ansible` repository
* run `ansible-playbook playbooks/byo/config.yml --inventory /path/to/hosts_file`
* enjoy

At this point you may probably want to:

* secure the SSH server, change port, add user to sudo, do not permit root login and whatnot (changing port requires you to edit `/etc/sysconfig/iptables` to change port 22 to what you've chosen and reload iptables)
* install and configure `fail2ban`
* install a local nfs server to play with PersistentVolumes
