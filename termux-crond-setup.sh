#!/bin/bash
# */1 * * * * echo "$(date) test" >> "${HOME}/test.txt"
# */1 * * * * /data/data/com.termux/files/usr/bin/rsync -rv --delete /data/data/com.termux/files/home/storage/music/ root@1.1.1.1:music/asset/
# * * * * * /data/data/com.termux/files/usr/bin/bash /data/data/com.termux/files/home/script.sh
# * * * * * /data/data/com.termux/files/usr/bin/bash /data/data/com.termux/files/home/script.sh >> output.log 2>&1
# 48h
# 0 0 */2 * * /data/data/com.termux/files/usr/bin/bash /data/data/com.termux/files/home/bin/src/utils/sync-music-phone-to-server.sh >>music-sync.log 2>&1
pkg install cronie termux-services -qyy
sv-enable crond
crond
crontab -e
