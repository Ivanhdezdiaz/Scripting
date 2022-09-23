#!/bin/bash

#comprobar si un fichero existe


fichero=$1
if [ -f $fichero]
then 
	echo El fichero $fichero  Existe.
else
	echo El fichero $fichero NO existe.
fi
