#!/bin/bash

script=$1

if [ -z $script ]
then
	echo "Debe darle nombre al script"
	exit 1
fi
#Si el nombre ya existe, te dice que ya existe y sale.
if [ -f $script -o -d $script ]
then 
	echo "Este script ya existe"
	exit 1
else
	echo "#!/bin/bash" > $script
	chmod +x $script
	nano $script
fi
