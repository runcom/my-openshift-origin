* run `./reqs.sh`
* copy ssh key to the server (under `~/.ssh/id_rsa`)
* edit `hosts` and fill in the authentication section (Github OAuth)
* edit `/etc/hosts` and point the hostname to the server public ip address
* cd into the `openshift-ansible` repository
* run `ansible-playbook playbooks/byo/config.yml --inventory /path/to/hosts_file`
* enjoy
