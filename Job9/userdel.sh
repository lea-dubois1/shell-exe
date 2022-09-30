#!/bin/bash

my_csv=/home/lea/Documents/shell.exe/Job9/Shell_Userlist.csv

while IFS="," read Id Prenom Nom Mdp Role;

	do
		userdel -f $Prenom

	done < $my_csv
