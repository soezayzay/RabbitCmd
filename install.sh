#!/bin/bash
#Author:SoeZayZay
#Github:https://github.com/soezayzay
apt-get update -y
apt-get upgrade -y
echo
pwd  >> path
sleep 2
path="$(grep -o "/data.*" path | cut -d "'" -f2)"
cd $path
mkdir file
cp -r /data/data/com.termux/files/usr/etc/profile /$path/file
 printf $'                    \e[1;32m[\e[0m\e[0;36m*\e[0m\e[1;32m]\e[0m\e[1;33m Installing PHP\e[1;32m[\e[0m\e[0;36m*\e[0m\e[1;32m]\e[0m\n'
echo
sleep 4
pkg install php -y 
echo
printf $'                  \e[1;32m[\e[0m\e[0;36m*\e[0m\e[1;32m]\e[0m\e[1;33m Installing Alias \e[1;32m[\e[0m\e[0;36m*\e[0m\e[1;32m]\e[0m\n'
echo
sleep 4
pkg install alias -y
rm -rf install.sh 
