#!/usr/bin/env bash

echo "================================="
echo " GITHUB SSH CONNECTION SETUP "
echo "================================="
echo " "

echo "Enter GitHub email:"
read gitHubEmail

ssh-keygen -t ed25519 -C gitHubEmail

eval "(ssh-agent -s)"

ssh-add ~/.ssh/id_ed25519

echo "================================================================================"
echo " FOLLOWING CODE IS YOUR SSH KEY: (copy from ssh-ed25519 AAAA... till @gmail.com "
echo "================================================================================"
echo " "

echo "================================================================================"
cat ~/.ssh/id_ed25519.pub
echo "================================================================================"
