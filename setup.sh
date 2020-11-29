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

## Script name
SCRIPT_NAME=apt-install-offline

##
ORIGINAL_WORKING_DIR="$(pwd)"
INSTALL_DIR_PARENT="$(pwd)"
INSTALL_DIR=${INSTALL_DIR_PARENT}${SCRIPT_NAME}/

## Pre-requisites
apt update
apt install git unzip -y

echo ""
if [ ! -d "$INSTALL_DIR" ]; then
	echo "Installing..."
	echo "-------------"
	git clone https://github.com/TurboLabIt/${SCRIPT_NAME}.git
else
	echo "Updating..."
	echo "----------"
fi

## Fetch & pull new code
cd "$INSTALL_DIR"
git pull --no-rebase

cd "$ORIGINAL_WORKING_DIR"
echo "*** DONE ***"
