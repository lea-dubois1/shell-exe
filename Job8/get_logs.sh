#!/bin/bash

a=$(date +"%d-%m-%Y-%H-%M")

last | wc -l > /home/lea/Documents/shell.exe/Job8/Backup/number_connection-$a

cd /home/lea/Documents/shell.exe/Job8/Backup

tar -cf number_connection-$a.tar.gz number_connection-$a

rm number_connection-$a
