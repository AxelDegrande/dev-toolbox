# Cheatsheet Raspberry Pi 4B

## Changeing baudrate of I2C bus
Change the standard baudrate of 100KHz to 400KHz

Go to:

```
$ sudo nano /boot/firmware/config.txt
```

Add under: dtparam=i2c_arm=on

```
i2c_baudrate=400000
```

## USB-Power controll
Install uhubctl for USB- and ethernet port controll

```
$ sudo apt install uhubctl
```

To turn off USBs:

```
$ sudo uhubctl -l 1-1 -a 0
```

To turn on USBs:

```
$ sudo uhubctl -l 1-1 -a 1
```

To cyle USBs:

```
sudo uhubctl -l 1-1 -a 2
```

It is not possible to turn on/off individual ports.
