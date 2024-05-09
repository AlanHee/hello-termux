#!/bin/bash
source funs.sh

remoteIP="0.0.0.0"
if [ ! -z $REMOTE_IP ]; then
	remoteIP=$REMOTE_IP
fi

read -p "Set up remote ip($remoteIP):" remote_ip
if [ ! -z $remote_ip ]; then
	remoteIP=$remote_ip
fi

saveExport REMOTE_IP $remoteIP
echo "Remote IP($remoteIP) setup"
