#!/bin/bash
source funs.sh
source ~/.bashrc

sshdUser="u0_007"
sshdIP="192.168.1.100"
sshdPort=8022

if [ ! -z $SSHD_USER ]; then
	sshdUser=$SSHD_USER
fi
if [ ! -z $SSHD_IP ]; then
	sshdIP=$SSHD_IP
fi
if [ ! -z $SSHD_PORT ]; then
	sshdPort=$SSHD_PORT
fi

function _() {

	while true; do
		read -p "Type in sshd user: " ssh_user
		if [ ! -z $ssh_user ]; then
			sshdUser=$ssh_user
			break
		fi
		if [ ! -z $sshdUser ]; then
			break
		fi
		echo 'user can not be empty.'
	done

	while true; do
		read -p "Type in sshd ip (default $sshdIP) : " ssh_ip
		if [ ! -z $ssh_ip ]; then
			sshdIP=$ssh_ip
			break
		fi
		if [ ! -z $sshdIP ]; then
			break
		fi
		echo 'ip can not be empty.'
	done

	while true; do
		read -p "Type in sshd port: " ssh_port
		if [ ! -z $ssh_port ]; then
			sshdPort=$ssh_port
			break
		fi
		if [ ! -z $sshdPort ]; then
			break
		fi
		echo 'sshd port can not be empty.'
	done

	ssh $sshdUser@$sshdIP -p $sshdPort "cat >> ~/.ssh/authorized_keys" <~/.ssh/id_rsa.pub
	echo "Pushed pub key to sshd."
}

yesOrNo "Push public key to sshd(y/n): " _
