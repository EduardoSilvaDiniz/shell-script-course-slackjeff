#!/usr/bin/env bash

vermelho="\033[31;1m"
fecha="\033[m"

clear
echo -e "\tDOS - EmuWins"
while true; do
	read -p $'\033[31;1m>\033[m ' entrada
	  if [[ "$entrada" = "cls" ]]; then
	   clear
	  elif [[ "$entrada" = "edit" ]]; then
	   gedit
	  elif [[ "$entrada" = "game" ]]; then
	   lutris
	  elif [[ "$entrada" = "" ]]; then
		echo -e "\033[33;1mComando Nao Encontrado\033[m"
	fi
done










