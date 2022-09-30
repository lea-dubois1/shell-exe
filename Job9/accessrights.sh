#!/bin/bash

my_input=/home/lea/Documents/shell.exe/Job9/Shell_Userlist.csv

while IFS="," read Id Prenom Nom Mdp Role;
do 
      if [ "$Id" -eq "$Id" ] 2>/dev/null;
            then
            sudo useradd -u $Id -p $Mdp $Prenom      

            if [ ${Role:0:5} = "Admin" ];
            then
                  sudo usermod -aG sudo $Prenom
            fi

      fi

done < $my_input
