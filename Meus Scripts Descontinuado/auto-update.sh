#!/usr/bin/env bash

# Teste do Programa ==========================================
# Teste ah Internet
if ! wget -q --spider www.google.com: then
	echo "Erro na conexao a internet"
	exit 1
fi
# Teste SUPER USER
[[ "$UID" -ne "0" ]] && { echo "Necessita de root!" ; exit 1 ;}
#=============================================================

# dnf update falhou? bye
if dnf update; then # atualizado pacotes
  echo "pacotes foram atualizados. [OK]"
else
  echo "dnf update falhou! saindo da atualizacao! [ERRO]"
  exit 1
fi





