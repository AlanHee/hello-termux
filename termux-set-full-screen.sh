#!/bin/bash
source funs.sh

function save() {
	cat <<EOF >~/.termux/termux.properties
extra-keys-style = none 
fullscreen = true
extra-keys = []
disable-terminal-session-change-toast = true
volume-keys = volume
terminal-margin-horizontal = 0
EOF
	echo 'Updated termux.properties.'
}

function _() {
	mv -f ~/.termux/termux.properties ~/.termux/termux.properties.old.$(date +%Y.%m.%d-%H:%M:%S)
	save
}

if [ -e ~/.termux/termux.properties ]; then
	yesOrNo "Override existed termux.properties?(y/n) :" _
else
	save
fi
