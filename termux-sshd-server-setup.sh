#!/bin/bash
if [ "$(uname -o)" = "Android" ]; then
	pkg update -qyy
	pkg upgrade -qyy
	termux-setup-storage
	pkg install openssh rsync -qyy
	#you need a password for login
	passwd
	sshd

	#Test if setup
	#pkill -f sshd
	#sshd
	#ssh `whoani`@127.0.0.1 -p 8022

	#auto run sshd while termux open
	echo "sshd" >.profile

	echo 'Setup sshd.'
	echo 'ssh server is running.'
	# echo 'client setup flow:'
	# echo '1 gen pub key with config-ssh-keygen'
	# echo '2 cat id_rsa.pub >> authorized_keys'
	# echo '3 Find out the termux user and IP `whoami` `ifconfig -a`'
	# echo '4 login eg: ssh u0_a141@$xxx.xxx.x.x.x -p 8022'
else
	echo "For termux only"
fi
