#!/usr/bin/env bash

#=============VARS====================|
nome="debugger"
versao="0.1-Alpha"
dir_home="/home/${USER}/"
#======CORES
vermelho="\e[31;1m"
fecha="\e[m"
#=============CONFIGURACOES DO USUARIO
DEBUG="1"	  # 0 DESLIGADO / 1 LIGADO
#=====================================|

function debug_ativado(){
if [[ "$DEBUG" -eq "1" ]]; then
	echo -e "${vermelho}debug ativado"
	set -x
fi

}
function debug_desativado(){
if [[ "$DEBUG" -eq "1" ]]; then
	set +x
	echo -e "debug Desativado${fecha}"
fi

}

debug_ativado

echo "test"

debug_desativado


echo "test"


