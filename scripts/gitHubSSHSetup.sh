#!/usr/bin/env bash

echo "================================="
echo " GITHUB SSH CONNECTION SETUP "
echo "================================="
echo " "

echo "Enter GitHub email:"
read gitHubEmail

ssh-keygen -t ed25519 -C "$gitHubEmail"

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_ed25519

echo "================================================================================"
echo " FOLLOWING CODE IS YOUR SSH KEY: (copy from ssh-ed25519 AAAA... till @mail.com "
echo "================================================================================"
echo " "

echo "================================================================================"
cat ~/.ssh/id_ed25519.pub
echo "================================================================================"

echo "Add your ssh key into you GitHub account"
echo " "

while true; do
    read -p "Want to change the origing of this repo from HTTPS to SSH? [y/n] " yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo "Past the origin link here: (git@github.com:USERNAME/dev-toolbox.git)"
read gitHubSSHOrigin

git remote set-url origin "$gitHubSSHOrigin"

echo "DONE. Check correct origin with: git remote -v"