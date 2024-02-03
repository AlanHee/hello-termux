#!/bin/bash
if [ "$(uname -o)" = "Android" ]; then
	apt update -qyy
	apt upgrade -qyy
else
	echo "For termux only"
fi
