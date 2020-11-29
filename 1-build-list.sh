#!/usr/bin/env bash
echo ""

cat << "EOF"
  _____           _           _          _      _ _   
 |_   _|   _ _ __| |__   ___ | |    __ _| |__  (_) |_ 
   | || | | | '__| '_ \ / _ \| |   / _` | '_ \ | | __|
   | || |_| | |  | |_) | (_) | |__| (_| | |_) || | |_ 
   |_| \__,_|_|  |_.__/ \___/|_____\__,_|_.__(_)_|\__|
EOF
echo
echo "-> Install packages offline https://turbolab.it/2279"
sleep 5

ORIGINAL_WORKING_DIR=$(pwd)
SCRIPT_FULLPATH=$(readlink -f "$0")
SCRIPT_DIR=$(dirname "$SCRIPT_FULLPATH")/
cd "${SCRIPT_DIR}"


if ! [ $(id -u) = 0 ]; then

    echo "This script must run as ROOT"
    exit
fi


if [ -z "$1" ]; then

    echo "Please tell me the name of the package(s) you want to download"
    exit
fi


apt clean
apt --print-uris --yes install $1 | grep ^\' | cut -d\' -f2 >packages-to-download.txt

echo ""
echo "Package(s) to be downloaded"
echo "==========================="
cat packages-to-download.txt

echo -n "$1" >packages-to-install.txt

echo ""
echo "Package(s) to be installed"
echo "=========================="
cat packages-to-install.txt
echo ""
echo ""


cd "$ORIGINAL_WORKING_DIR"
echo "*** DONE ***"
