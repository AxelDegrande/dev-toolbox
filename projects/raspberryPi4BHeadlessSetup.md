# Raspberry Pi Headless setup

## 1. Setup Raspberry OS
- Device: Raspberry Pi 4B
- OS: Raspberry Pi OS (64bit)
- Hostname: raspberrypi
- Username: pi
- Password: 
- Remote Access:
	- Enable SSH: True
	- Use password: True

Write boot to drive.

## 2. Network sharing
- Go to Network Connections
- Make sure the ethernet adapter is set to ipv4 automatically where the raspberry is connected to
- Share wifi adapter to the raspberry pi adapter. It will ask if the ethernet adapter may be changed, yes.
- Now the ethernet adapter has internet
- Open Advanced IP scanner and scan on range: 192.168.137.1-254
- You have found the raspberry pi ip address

## 3. Connect to Pi with SSH
Create a SSH key to Pi:

```
ssh-keygen -R 192.168.137.2
```

Connect to Pi

```
ssh pi@192.168.137.2
```


## 4. Enable VNC
Run im Pi terminal:

```
sudo raspi-config
```

- Enable VNC
- Enable desktop (these values can change)
	- 1: System options
	- S5: Boot
	- B3: Desktop
- Reboot

## 5. Connect with VNC
- RealVNC Viewer
- 192.168.137.2
- Change resoltuion of Pi in Preferences

## 6. Enable internet through ethernet cable
Run in Pi terminal:

```
sudo ip route add default via 192.168.137.1
```

To show all default gateways:

```
sudo route -n
```

If it does not work. Reboot

## 7. Connect to campus wifi
- Authentication: Protected EAP (PEAP)
- No CA certificate is required: Check
- Username: ...@ad.ua.ac.be
- Password: 


