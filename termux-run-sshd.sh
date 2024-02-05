#!/bin/bash
if [ "$(uname -o)" = "Android" ]; then
	apt update -qyy
	apt upgrade -qyy
	termux-setup-storage
	pkg install openssh
	sshd
	echo 'sshd setup and runing.'
	echo 'client setup flow:'
	echo '1 gen pub key with config-ssh-keygen'
	echo '2 cat id_rsa.pub >> authorized_keys'
	echo '3 Find out the termux user and IP `whoami` `ifconfig -a`'
else
	echo "For termux only"
fi
