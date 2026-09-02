#!/usr/bin/env bash

echo "================================="
echo " DEBIAN BASIC SETUP "
echo "================================="

echo "Updating package list..."
sudo apt update

PACKAGES=(
	build-essential
	curl
	wget
	zip
	unzip
	tree
	python3
	python3-pip
	python3-venv
	python3-dev
)


echo "Installing basic development tools"
sudo apt install -y "${PACKAGES[@]}"

echo "Installing Git"
add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install git

echo "Configuring Git"
git config --global user.name "AxelDegrande"
git config --global user.email "axeldegrande@gmail.com"

echo "Installation complete"

