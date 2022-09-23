#!/bin/bash

directorio=$1

#Comprueba si el $directorio está vacio

if [ -z "$directorio" ]
then
	echo "Debe especificar un directorio"
	exit 1
fi

#Comprobar si $directorio exixte y es un directorio

if [ -f $directorio ]
then
	 echo "$directorio no es un directorio"
        exit 1

elif [ ! -d $directorio ]
then
	  echo "Creando el directorio $directorio"
        mkdir $directorio

else
	echo "$directrio ya existe"
fi 

#Le asigna los permisos 700 (rwx ------)

chmod 700 $directorio
