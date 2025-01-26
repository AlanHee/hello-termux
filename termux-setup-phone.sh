#!/bin/bash
source funs.sh

phoneUser="u0_007"
phoneIP="192.168.1.101"
phonePort=8022

if [ -e $SRC/config.sh ]; then
	source $SRC/config.sh
fi

if [ ! -z $PHONE_USER ]; then
	phoneUser=$PHONE_USER
fi
read -p "Type in phone user($phoneUser):" phone_user
if [ ! -z $phone_user ]; then
	phoneUser=$phone_user
fi
saveExport PHONE_USER $phoneUser
echo "Setup sshd phone user:$phoneUser"

if [ ! -z $PHONE_IP ]; then
	phoneIP=$PHONE_IP
fi
read -p "Type in phone ip($phoneIP):" phone_ip
if [ ! -z $phone_ip ]; then
	phoneIP=$phone_ip
fi
saveExport PHONE_IP $phoneIP
echo "Setup sshd phone IP:$phoneIP"

if [ ! -z $PHONE_PORT ]; then
	phonePort=$PHONE_PORT
fi
read -p "Type in sshd phone ip($phonePort):" phone_port
if [ ! -z $phone_port ]; then
	phonePort=$phone_port
fi
saveExport PHONE_PORT $phonePort
echo "Setup sshd phone port:$phonePort"
