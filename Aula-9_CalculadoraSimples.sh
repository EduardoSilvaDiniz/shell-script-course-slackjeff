#!/usr/bin/env bash
# calculadora

# Teste de ROOT
(("$UID" == 0)) && { Echo "Nao Use Root" ; exit 1 ; }


function menu(){
	clear
	echo "-------------------"
	echo "1) Soma        (+)"
	echo "2) subtracao   (-)"
	echo "3) Dividir     (/)"
	echo "4) Multiplicar (*)"
	echo "-------------------"
	read -p "Escolha a opcao : " opcao

	case "$opcao" in
		"1") soma 		 ;;
		"2") subtracao   ;;
		"3") divisao 	 ;;
		"4") multiplicar ;;
		"5") exit 0 	 ;;
	esac
}

function soma(){
	read -p "Valor 1: " val_um
	read -p "Valor 2: " val_dois
	if [[ -z "$val_um" ]] || [[ -z "$val_dois" ]]; then
		echo "Favor Entra com um numero"
		menu # Chamado funcao principal
	fi

	total="$(($val_um + $val_dois))" # Fazendo calculo e armazenando
	echo "Resultado E: $total"
	sleep 1.2s
	menu
}

function subtracao(){
	read -p "Valor 1 : " val_um
	read -p "Valor 2 : " val_dois
	if [[ -z "$val_um" ]] || [[ -z "$val_dois" ]]; then
		echo "Favor entra com um numero": sleep 0.5s
		subtracao
	fi
	total="$(($val_um - $val_dois))" # Fazendo o calculo e armazenando
	echo "Resultado E: $total"
	sleep 1.2s
	menu		# Chamado Funcao Menu
}
function divisao(){
	read -p "Valor 1 : " val_um
	read -p "Valor 2 : " val_dois
	if [[ -z "$val_um" ]] || [[ -z "$val_dois" ]]; then
		echo "Favor entra com um numero": sleep 0.5s
		subtracao
	fi
	total="$(($val_um / $val_dois))" # Fazendo o calculo e armazenando
	echo "Resultado E: $total"
	sleep 1.2s
	menu		# Chamado Funcao Menu
}
function multiplicar(){
	read -p "Valor 1 : " val_um
	read -p "Valor 2 : " val_dois
	if [[ -z "$val_um" ]] || [[ -z "$val_dois" ]]; then
		echo "Favor entra com um numero": sleep 0.5s
		subtracao
	fi
	total="$(($val_um * $val_dois))" # Fazendo o calculo e armazenando
	echo "Resultado E: $total"
	sleep 1.2s
	menu		# Chamado Funcao Menu
}

menu
