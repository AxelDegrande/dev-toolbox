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
	python3-setuptools
	swig
)


echo "Installing basic development tools"
sudo apt install "${PACKAGES[@]}"

echo "Installing Git"
add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install git

echo "Configuring Git"
echo "Enter GitHub Username:"
read gitHubUserName

echo " "
echo "Enter GitHub email:"
read gitHubEmail


git config --global user.name $gitHubUserName
git config --global user.email $gitHubEmail

echo "Installation complete"

