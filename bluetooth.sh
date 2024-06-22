#!/bin/bash
## Bash script to solve problems with Bluetooth on Ubuntu 20xx ( 20.04.4 ) LTS ( long time support )
## see more https://github.com/atorresbr
## contact: https://www.facebook.com/profile.php?id=100007143210386

#function to confirm or do sudo
if [ "$(whoami)" != "root" ]
	then
		echo
			echo -e " 🔴 use sudo to run this script "
		echo		
	exit 1
fi		

echo
echo


on_yellow='\033[43m'  # Yellow
on_green='\033[42m'   # Green
b_black='\033[1;30m'  # black
b_green='\033[1;32m'  # Bold Green
green='\033[0;32m'    # Light Green
red='\033[0;31m'      # Red
nc='\033[0m'          # No Color


#  * ================================================== * 
# * =        Executando os Comandos de Shell             *
#  * ================================================== *

# 

# Exclui os arquivos do firefov DEv da pasta bin
echo -e " This script will run all commands to fix you Bluetooth drivers"

echo
sleep 1

echo  -e " 🔴 ${b_green} sudo systemctl status bluetooth.service " #1

echo
sleep 1
echo -ne ${b_green}'🟩🟩🟩🟩🟩    (25%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (76%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (100%)\r ' ${nc} 
echo -ne '\n'
sleep 2

echo
echo 

sudo systemctl status bluetooth.service

echo
echo -e " Sucess ! "
echo

echo
sleep 1


echo  -e " 🔴 ${b_green}sudo systemctl unmask bluetooth.service " #2

echo
sleep 1
echo -ne ${b_green}'🟩🟩🟩🟩🟩    (25%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (76%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (100%)\r ' ${nc}
echo -ne '\n'
sleep 2

#echo
#echo

systemctl unmask bluetooth.service

echo
echo -e " Sucess ! "
echo

echo
sleep 1

echo
echo

echo  -e " 🔴 ${b_green}sudo systemctl start bluetooth.service " #3

echo
sleep 1
echo -ne ${b_green}'🟩🟩🟩🟩🟩    (25%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (76%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (100%)\r ' ${nc}
echo -ne '\n'
sleep 2

#echo
#echo

sudo systemctl start bluetooth.service

echo
sleep 1


echo
echo -e " Sucess ! "
echo

echo
echo

echo  -e " 🔴 ${b_green}sudo rmmod btusb " #4

echo
sleep 1
echo -ne ${b_green}'🟩🟩🟩🟩🟩    (25%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (76%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (100%)\r ' ${nc}
echo -ne '\n'
sleep 2

echo
echo

sudo rmmod btusb && \

echo
echo

echo -e " 🟡 it's not a error 👆 🤡 "

echo
echo -e " Sucess ! "
echo

echo
sleep 1

echo
echo

echo  -e " 🔴 ${b_green}sudo systemctl enable bluetooth " #5

echo
sleep 1
echo -ne ${b_green}'🟩🟩🟩🟩🟩    (25%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (76%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (100%)\r ' ${nc}
echo -ne '\n'
sleep 2

#echo
#echo

sudo systemctl enable bluetooth && \

echo
sleep 1


echo
echo -e " Sucess ! "
echo

echo
echo

echo  -e " 🔴 ${b_green}sudo apt-get remove bluez" #6

echo
sleep 1
echo -ne ${b_green}'🟩🟩🟩🟩🟩    (25%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (76%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (100%)\r ' ${nc}
echo -ne '\n'
sleep 2

#echo
#echo

sudo apt-get remove bluez && \

echo
sleep 1

echo
echo -e " Sucess ! "
echo


echo
echo

echo  -e " 🔴 ${b_green}sudo apt install bluez " 

echo
sleep 1
echo -ne ${b_green}'🟩🟩🟩🟩🟩    (25%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (76%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (100%)\r ' ${nc}
echo -ne '\n'
sleep 2

#echo
#echo

sudo apt install bluez && \

echo
sleep 1


echo
echo -e " Sucess ! "
echo

echo
echo

echo  -e " 🔴 ${b_green}sudo systemctl start bluetooth" 

echo
sleep 1
echo -ne ${b_green}'🟩🟩🟩🟩🟩    (25%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (76%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (100%)\r ' ${nc}
echo -ne '\n'
sleep 2

#echo
#echo

sudo systemctl start bluetooth && \


echo
sleep 1


echo
echo -e " Sucess ! "
echo

echo
echo

echo  -e " 🔴 ${b_green}sudo systemctl status bluetooth.service" 

echo
sleep 1
echo -ne ${b_green}'🟩🟩🟩🟩🟩    (25%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (76%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (100%)\r ' ${nc}
echo -ne '\n'
sleep 2

#echo
#echo

sudo systemctl status bluetooth.service && \

echo
sleep 1

echo
echo -e " Sucess ! "
echo

echo
echo

echo  -e " 🔴 ${b_green}sudo apt-get install pulseaudio-module-bluetooth" 

echo
sleep 1
echo -ne ${b_green}'🟩🟩🟩🟩🟩    (25%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (76%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (100%)\r ' ${nc}
echo -ne '\n'
sleep 2

#echo
#echo

sudo apt-get install pulseaudio-module-bluetooth && \


echo
sleep 1


echo
echo -e " Sucess ! "
echo

echo
echo

echo  -e " 🔴 ${b_green}killall pulseaudio && reboot " 

echo
sleep 1
echo -ne ${b_green}'🟩🟩🟩🟩🟩    (25%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (76%)\r '
sleep 1
echo -ne '🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩    (100%)\r ' ${nc}
echo -ne '\n'
sleep 2


echo
sleep 1


echo
echo -e " The system now will reboot ! "
echo

killall pulseaudio && reboot


echo
echo
echo
echo





