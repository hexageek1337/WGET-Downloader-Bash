#!/bin/bash

# WGET Downloader with Bash / Shell Script
# Coded by H3xagon / Hexageek
red="\e[0;31m"
green="\e[0;32m"
off="\e[0m"

banner() {
	echo -e "\n        \033[96m0000000000000000\033[0m  \033[92m000000000000000000+\033[0m \033[31m____ ↘\033[0m \n        \033[96m000000000000000\033[0m  \033[92m0000000000000000000+\033[0m \033[31m¯¯¯¯ ↗\033[0m \n        \033[96m000       0000\033[0m  \033[92m00      0+\033[0m\n                 \033[96m0000\033[0m   \033[92m00      0+\033[0m\n                \033[96m0000\033[0m     \033[92m0     0+\033[0m\n               \033[96m0000\033[0m           \033[92m0+\033[0m\n              \033[96m000\033[0m   \033[92m0000000000+\033[0m\n             \033[96m0000+\033[0m\n            \033[96m0000+\033[0m        \033[92m########################\033[0m\n          \033[96m00000+\033[0m         \033[92m#\033[0m \033[97mWGET Downloader Bash\033[0m \033[92m#\033[0m\n         \033[96m0000000+\033[0m        \033[92m########################\033[0m\n        \033[96m000000007;\033[0m               \033[92mCoded by H3xagon\033[0m\n"
}

testConnection() {
	testkoneksi=`wget -q https://pastebin.com/raw/QKH8tHNv`
	if [[ $? -ne 0 ]]; then
		echo -e "[!] KONEKSI > $red OFF $off"
		exit
	else
		echo -e "[!] KONEKSI > $green OK $off"
		rm -rf QKH8tHNv
	fi
}

checkWget() {
	if ! [ -x "$(command -v wget)" ]; then
  		echo -e "[!] WGET > $red OFF $off" >&2
  		exit
  	else
  		echo -e "[!] WGET > $green OK $off"
	fi
}

banner
echo "=================================================="
echo "=*         Checking Connection and WGET         *="
echo "=================================================="
checkWget
testConnection
echo "=================================================="
echo -n "[+] Sites : "
read urlsites
echo -n "[+} Output: "
read ouputfile
echo "=================================================="
download=$(wget -q $urlsites -O $ouputfile)
if [[ $? -ne 0 ]]; then
	echo -e "[-] Download : $red Failed $off"
	echo "=================================================="
else
	echo -e "[-] Download : $green OK $off"
	echo "=================================================="
	exit
fi