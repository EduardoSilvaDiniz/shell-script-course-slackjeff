#!/usr/bin/env bash



PS3="selecione algo : " # VARIAVEL ESPECIAL PARA LOOP SELECT ALMA GEMEA.

select nome in "edu" "asd" "fix" "fox"; do
	case "$REPLY" in 	# REPLY funciona atraves de numeros, em vez de nomes
	1) echo "vc selecionou $nome belo nome."    ;;

	asd) echo "vc selecinou $nome E rapido."      ;;

	fix) echo "voce selecinou $nome nsei."	    ;;

	fox) echo "vc selecinou $nome essa porra."	;;

	*) echo "esse nome nao existe"              ;;

 esac
done
