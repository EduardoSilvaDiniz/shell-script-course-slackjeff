#!/usr/bin/env bash

# Trabalhando com loop while.
# While: Enquanto status de saida for 0 faça algo.....

#Loop Infinito
#while [[ "1" = "1" ]]; do
#	echo "olha so, entou infinito!"
#	echo "Aperte CTRL + C para parar"
#	sleep 1s
#done

val="0"

while [[ "$val" -ne "5" ]]; do
	val=$(("$val"+1))
	echo "O valor E: $val"
done
