#!/usr/bin/env bash

vermelho="\033[31;1m"
verde="\033[32;1m"
fecha_cor="\033[m"



(($#==0)) && { echo "Necessario um nome de software" ; exit 1 ;}

while [[ -n "$1" ]]; do    					# Nulo ? Nao Continua
	if type -P "$1" >/dev/null; then		# Programa Existe ?
		echo -e "${verde}O Programa $1 existe${fecha_cor}"
	else
		echo -e "${vermelho}O Programa $1 nao existe${fecha_cor}"
	fi
	 shift
done
