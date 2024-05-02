#!/bin/bash
#Determine if installed
#Run termux-style to change termux style:)
if type termux-style  &>/dev/null; then
	termux-style
else
	cd $HOME
	git clone https://github.com/adi1090x/termux-style
	cd termux-style
	./install
	termux-style
fi
