#!/usr/bin/env bash

#
#
#
#
#

user="edu"
senha="123"
total="0"

while [[ "$total" -ne "5" ]]:; do
	read -p "login: " _login
	read -p "Senha: " _senha
	if [[ "$_login" = "$user" ]] && [[ "$_senha" = "$senha" ]]; then
		break
	else
		let total++
		echo "Tentativa $total/5"
	fi
done

echo "Continuando o Programa..."
