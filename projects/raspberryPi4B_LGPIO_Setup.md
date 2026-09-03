# Raspberry Pi 4B - LGPIO

## Resource
[LGPIO Install](https://pimylifeup.com/raspberry-pi-install-lgpio/)

## Install
1. Go to home directory:

```
cd ~
```

2. Get code

```
wget https://github.com/joan2937/lg/archive/master.zip
```

3. Unzip

```
unzip master.zip
```

4. Go into folder

```
cd lg-master
```

5. Compile code

```
make
```

6. Install compiled code

```
sudo make install
```

7. Clean up

```
cd ~
rm master.zip
sudo rm -r -f lg-master/
```

