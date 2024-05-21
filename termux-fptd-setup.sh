#!/bin/bash
# AlanHee (alan.hee@outlook.com) 2024.02.21
pkg install busybox termux-services -qyy
source $PREFIX/etc/profile.d/start-serices.sh
sv-enable ftpd
sv up ftpd
