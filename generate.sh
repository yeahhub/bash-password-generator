#!/bin/bash

#Password Generator
#Author: Yeahhub.com
#Date: 24th September 2018

printf "\033c"
COUNTER=01

echo -e "\e[32m"
echo "====================== Powered By Yeahhub.com ====================="
echo ""
echo "__     __        _     _           _                               "
echo "\ \   / /       | |   | |         | |                              "
echo " \ \_/ /__  __ _| |__ | |__  _   _| |__         ___ ___  _ __ ___  "
echo "  \   / _ \/ _| | |_ \| |_ \| | | | |_ \       / __/ _ \| |_ \ _ \ "
echo "   | |  __/ (_| | | | | | | | |_| | |_) |  _  | (_| (_) | | | | | |"
echo "   |_|\___|\__,_|_| |_|_| |_|\__,_|_.__/  (_)  \___\___/|_| |_| |_|"
echo ""	                                                                  
echo ""
echo "====================== Powered By Yeahhub.com ====================="
echo -e "\e[0m"

read -p "[#] Enter the length of Password (e.g. 10): " length
echo ""
for p in $(seq 1 8);
do
	echo -n "[$[COUNTER++]] " && openssl rand -base64 48 | cut -c1-$length
done
echo ""
