#!/usr/bin/env bash

dir="/home/URGENTE"

#==========funcoes===============#
function versao_linux(){
	local versao=$(cat /etc/os-release)
	local echo "A versao do Linux E : "
	local dir="/home/edu"        #variavel Local para nao deixa a variavel virar global, nao sair da funcao.
}

versao_linux  #chamando funcao

echo "$dir"
