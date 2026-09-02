# Bash Cheatsheet
## Navigation
```
pwd				/ Show current directory
ls 				/ List files
ls -al				/ List all files (and hidden) with details
cd <folder>			/ Enter a directory
cd ..				/ Go up one directory
cd ~ 				/ Go to home directory
```

## Files
```
touch <file.txt>		/ Create a file.txt
mkdir <folder>			/ Create a directory
cp <file.txt> <copy.txt>	/ Copy a file to a new file
mv <file.txt> <newFile.txt>	/ Revame a file to a new file
mv <file.txt> <folder/file.txt> / Move a file to a directroy
rm <file.txt>			/ Remove a file
rmdir <folder/>			/ Remove a directory
ncdu				/ Consuming diskspace in directory
```

## Searching
```
grep <"Hello"> <file.txt>	/ Searches "Hello" in file
```

## Processes
```
top				/ System usage
kill PID			/ Kill a process ID
```

## Permissions
```
chmod +x <script.sh> 		/ Make it executable
```

## Package managment - Debian
```
sudo apt update			/ Update apt repository list of available packages
sudo apt upgrade		/ Upgrade the system by installing/ upgrading packages
sudo apt full-upgrade		/ Upgrade the system by removing/ installing/ upgrading packages
sudo apt install <package>	/ Install <package>
sudo apt remove <package>	/ Remove <package>
apt search <package>		/ Search <package>
```

## File execution
```
bash <folder/bashScript.sh>
```
