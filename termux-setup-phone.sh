#!/bin/bash
source funs.sh
if [ -e $SRC/config.sh ]; then
	source $SRC/config.sh
fi

phoneIP="192.168.1.101"
phonePort=8022

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
echo "Setup sshd phone port: $phonePort"
