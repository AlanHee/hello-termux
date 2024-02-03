#!/bin/bash
source funs.sh
function installUbuntu() {
	pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh && bash ubuntu.sh
}
yesOrNo "Install ubuntu in termux?(y/n)" installUbuntu
