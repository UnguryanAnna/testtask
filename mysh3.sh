#!/bin/bash

echo "Output of information about RAM:"
free -m

echo "Information output which TCP ports are being listened to:"
sudo lsof -i -P -n | grep LISTEN

echo "Information output which UDP ports are open:"
netstat -tulpn | grep ": "

echo "creating a dir directory"
mkdir dir

echo "Measuring the execution time of the file creation command"
time for (( i=1; i<=99; i++ )); do mkdir dir/"sub_dir$i"; done

echo "Dir directory size:"
du -sh dir

echo "Removing dir"
rm -r dir
