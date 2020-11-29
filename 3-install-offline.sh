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

echo ""
echo "Packages to be installed"
echo "========================"
PACKAGES=$(<packages-to-install.txt)
echo $PACKAGES
echo ""
echo ""


apt clean
dpkg -i archives/*.deb


echo ""
cd "$ORIGINAL_WORKING_DIR"
echo "*** DONE ***"
