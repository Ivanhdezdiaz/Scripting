#!/bin/bash
minimo=$1
maximo=$2
valor=$3

#comprueba si el valor es mayor o igual que el minimo y 
#menor o igual que el maximo
if [ $valor -ge $minimo -a $valor -le $maximo ]
then
	echo El valor esta en el rango de $minimo a $maximo
else
	echo el valor esta fuera del rango de $minimo a $maximo
fi
