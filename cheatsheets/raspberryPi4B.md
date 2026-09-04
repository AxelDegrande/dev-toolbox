# Cheatsheet Raspberry Pi 4B

## Changeing baudrate of I2C bus
Change the standard baudrate of 100KHz to 400KHz

Go to:

```
sudo nano /boot/firmware/config.txt
```

Add under: dtparam=i2c_arm=on

```
i2c_baudrate=400000
```


