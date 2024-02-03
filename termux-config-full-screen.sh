#!/bin/bash
source funs.sh

function _() {
	mv -f ~/.termux/termux.properties ~/.termux/termux.properties.old.$(date +%Y.%m.%d-%H:%M:%S)
	cp -f $SRC/profile/termux.properties ~/.termux
	echo 'Changes shell in full mode'
}

if [ -e ~/.termux/termux.properties ]; then
	yesOrNo "Override existed termux.properties?(y/n) :" _
else
	cp -f $SRC/profile/termux.properties ~/.termux
	echo 'Changes shell in full mode'
fi
