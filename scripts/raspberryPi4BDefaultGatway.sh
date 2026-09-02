#!/usr/bin/env bash

echo "================================="
echo " Raspberry Pi 4B: Add default gateway "
echo "================================="

sudo ip route add default via 192.168.137.1

echo "Done"
