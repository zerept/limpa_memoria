#!/bin/sh
PATH="/bin:/usr/bin:/usr/local/bin"

# Porcentagem maxima.
percent=85

# Total da memoria:
ramtotal=`grep -F "MemTotal:" < /proc/meminfo | awk '{print $2}'`
# Memoria livre:
ramlivre=`grep -F "MemFree:" < /proc/meminfo | awk '{print $2}'`

# RAM utilizada:
ramusada=`expr $ramtotal - $ramlivre`

# Porcentagem de RAM utilizada:
putil=`expr $ramusada \* 100 / $ramtotal`

echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
date
echo


   	date=`date`
	echo $date >> /var/log/memoria.log
   	echo 1 > /proc/sys/vm/drop_caches
	sync; echo 2 > /proc/sys/vm/drop_caches
	sync; echo 3 > /proc/sys/vm/drop_caches
	echo "Cache e Buffer , Dentries e Inodes LIMPO"
	sudo swapoff -a
	sudo swapon -a
	echo "Memória Swap LIMPA"
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	echo
    		free -m
  	 echo
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
