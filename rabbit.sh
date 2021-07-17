#!/bin/bash
#Author : SoeZayZay
#Github : https://github.com/soezayzay 
#Description:These codes aren't allowed to copy and edit.If you want to change the  codes and redistribute this tool please contact the Author.Please respect the Author.
clear
function banner(){
printf $'\e[1;32m    ____       _     _     _ _      ____               _  \e[0m\n'
printf $'\e[1;32m   |  _ \ __ _| |__ | |__ (_) |_   / ___|_ __ ___   __| | \e[0m\n'
printf $'\e[1;32m   | |_) / _` |  _ \|  _ \| | __| | |   | _ ` _  \ / _` | \e[0m\n'
printf $'\e[1;32m   |  _ < (_| | |_) | |_) | | |_  | |___| | | | | | (_| | \e[0m\n'
printf $'\e[1;32m   |_| \_\__,_|_.__/|_.__/|_|\__|  \____|_| |_| |_|\__,_| \e[0m\n'
echo
printf "   \e[101m\e[1;77m Author:SoeZayZay Github: https://github.com/soezayzay\e[0m\n"
echo
printf $'\e[1;36m   ┌─────────────────────────────────────────────────────┐\e[0m\n'
printf $'\e[1;36m   │                                                     │\e[0m\n'
printf $'\e[1;36m   │   \e[1;32m[\e[0m\e[0;36m1\e[0m\e[1;32m]\e[0m\e[1;33m RABBIT COMMAND\e[0m    \e[1;32m[\e[0m\e[0;36m2\e[0m\e[1;32m]\e[0m\e[1;33m SHOW ALL COMMANDS\e[0m \e[1;36m      │\e[0m\n'
printf $'\e[1;36m   │                                                     │\e[0m\n'
printf $'\e[1;36m   │   \e[1;32m[\e[0m\e[0;36m3\e[0m\e[1;32m]\e[0m\e[1;33m HIDE COMMANDS\e[0m   \e[1;32m[\e[0m\e[0;36m4\e[0m\e[1;32m]\e[0m\e[1;33m DELETE ALL RABBIT COMMADS\e[0m \e[1;36m│ \e[0m\n'
printf $'\e[1;36m   │                                                     │\e[0m\n'
printf $'\e[1;36m   │   \e[1;32m[\e[0m\e[0;36m5\e[0m\e[1;32m]\e[0m\e[1;33m EXIT\e[0m                                       \e[1;36m   │\e[0m\n'
printf $'\e[1;36m   │                                                     │\e[0m\n'
printf $'\e[1;36m   └─────────────────────────────────────────────────────┘\e[0m\n'
echo
}
function menu(){
read -p $'   \e[1;32m[\e[0m\e[0;36m*\e[0m\e[1;32m]\e[0m\e[1;33m Choose an option          \e[1;32m:\e[0m\e[1;37m ' option
echo
if [ $option == "1" ];
then
read -p $'   \e[1;32m[\e[0m\e[0;36m*\e[0m\e[1;32m]\e[0m\e[1;33m Enter Full Command        \e[1;32m:\e[0m\e[1;37m ' full_command
echo
read -p $'   \e[1;32m[\e[0m\e[0;36m*\e[0m\e[1;32m]\e[0m\e[1;33m Enter Your Custom Command \e[1;32m:\e[0m\e[1;37m ' custom_command
echo
echo $'   \e[1;32m[\e[0m\e[0;36m*\e[0m\e[1;32m]\e[0m\e[1;33m Command \e[1;32m      : ' $custom_command '=>' $full_command >> cmd.txt
php main_2.php $custom_command > /dev/null 2>&1 &
sleep 2
php main.php $full_command > /dev/null 2>&1 &
printf $'                 \e[1;32m[\e[0m\e[0;36m*\e[0m\e[1;32m]\e[0m\e[1;33m Command has been added \e[1;32m[\e[0m\e[0;36m*\e[0m\e[1;32m]\e[0m\n' 
elif [ $option == "2" ];
then
clear
banner
echo
printf $'                       \e[1;32m[\e[0m\e[0;36m*\e[0m\e[1;32m]\e[0m\e[1;33m Commands \e[1;32m[\e[0m\e[0;36m*\e[0m\e[1;32m]\e[0m\n' 
echo
cat cmd.txt
echo
menu
elif [ $option == "3" ];
then
clear
banner
menu
elif [ $option == "4" ];
then
rm -rf cmd.txt
touch cmd.txt
rm -rf /data/data/com.termux/files/usr/etc/profile
cp -r file/profile /data/data/com.termux/files/usr/etc
sleep 2
printf $'           \e[1;32m[\e[0m\e[0;36m*\e[0m\e[1;32m]\e[0m\e[1;33m All Commands have been deleted \e[1;32m[\e[0m\e[0;36m*\e[0m\e[1;32m]\e[0m\n' 
sleep 2 
clear
banner 
menu
elif [ $option == "5" ];
then
printf $'                       \e[1;32m[\e[0m\e[0;36m*\e[0m\e[1;32m]\e[0m\e[1;33m Exiting \e[1;32m[\e[0m\e[0;36m*\e[0m\e[1;32m]\e[0m\n' 
echo
echo
sleep 2 
exit 
else 
printf $'                      \e[1;32m[\e[0m\e[0;36m*\e[0m\e[1;32m]\e[0m\e[1;33m Invalid Option \e[1;32m[\e[0m\e[0;36m*\e[0m\e[1;32m]\e[0m\n' 
sleep 2 
clear
banner
menu
fi
sleep 2
clear
banner
menu
}
banner
menu
