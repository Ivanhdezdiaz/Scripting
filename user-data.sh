#!/bin/bash

user=$1

if [ -z $user ]
then
	read -p "Indica el nombre:" $user
	exit 1
fi

if id "$user" >/dev/null 2>&1;
then	
	user=$(grep $user /etc/passwd | cut -d ':' -f 1)
	id1=$(grep $user /etc/passwd | cut -d ':' -f 3)
	id2=$(grep $user /etc/passwd | cut -d ':' -f 4)
	home=$(grep $user /etc/passwd | cut -d ':' -f 6)
	shell=$(grep $user /etc/passwd | cut -d ':' -f 7)
	
	echo "Nombre: $user"
	echo "UID: $id1"
	echo "GID: $id2"
	echo "Home: $home"
	echo "Shell: $shell"

else
	echo "$user no existe"
	exit 1
fi

