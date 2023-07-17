#!/usr/bin/env bash

# chamada configuracao==================#
source LoginSenha.conf
source Biblioteca
# Funcoes===============================#

function _login(){
  total="0"			#Valor de tentativas
  while true; do
	read -p "LOGIN: "	 	 _login
	read -t 5 -sp "SENHA: "  _passwd
	read -sp $'\nCPF: '	 	 _cpf

	# Conferindo login senha e CPF Batem!
	# Se alguma opcao nao bater cai no bloco else.
	if [[ "$_login" = "$user" ]] && [[ "$_passwd" -eq "$passwd" ]] && [[ "$_cpf" = "$cpf" ]]; then
 		echo -e "\nUSUARIO correto... logando..."
 		sleep 0.5s
		clear
    	break
	else
	  	echo "Login ou Senha Errado [ERRO]"
	  	let total++
		echo "Tentativas $total/3"
		if [[ "$total" -eq "3" ]]; then
			exit 1
	  	fi
	fi
done

	#Menu
  PS3="Selecione Algo : "
  select menu in "Abrir Firefox" "Abrir Lutris" "Abrir Spotify" "Sair"; do
	case "$REPLY" in
	1) [[ $(type -P firefox) ]] \
	   || { echo "Firefox nao esta instalado" ; exit 1 ;}
	   firefox & ;;
	2) [[ $(type -P lutris) ]] \
	   || { echo "lutris nao esta instalado" ; exit 1 ;}
	   lutris & ;;
	3) [[ $(type -P spotify) ]] \
	   || { echo "spotify nao esta instalado" ; exit 1 ;}
	   spotify & ;;
	4) exit 0 ;;
	*) echo "NAO EXISTE ESSA OPCAO [ERRO]" ;;
    esac
done
}

# Chamada em linha======================#

case "$1" in
  -l|--login)
			_login # chamando a funcao Login
			;;
  -h|--help)
			_help # chamando a funcao Help
			;;
   *)	echo "comando nao encontrado tente -h, --help" ;;
esac

#------------------------------Fim do programa----------------------------
