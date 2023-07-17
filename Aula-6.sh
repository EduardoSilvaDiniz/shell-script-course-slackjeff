#!/usr/bin/env bash

[[ $UID = "0" ]] || { echo "NECESSARIO ROOT" ; exit 1 ;}

echo \
"===========================
1) adicionar um Usuario
2) Remover um Usuario
3) Troca Senha de Um Usuario
4) Qual E minha Ditro?
5) sair
============================
"

read -p "Escolha uma opcao : " opcao

case "$opcao" in
	1) read -p "Qual nome do usuario ? : " user && $(useradd "$user") && echo "Usuario criado com Sucesso." ;;

	2) read -p "Qual Nome do Usuario ? : " user && $(userdel -r "$user") && echo "Usuario removido com Sucesso" ;;

	3) read -p "Qual Nome do Usuario ? : " user && passwd "$user" ;;

	4) lsb_release -a ;;

	5) exit 0 ;;

	*) echo "opcao incorreta [ERROR]" ;;
esac
