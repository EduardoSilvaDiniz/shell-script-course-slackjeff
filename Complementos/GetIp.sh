#!/usr/bin/env bash

# variaveis do progerma ===============

servidor1="icanhazip.com"
servidor2="v4.ifconfig.co"

#=======================================

# TESTES INICIAIS ============
echo "Verficiando se ah conexao"
if ! wget -q --spider www.google.com; then
 echo "NECESSITA DE INTERNET"
	exit 1
fi

#==============================

exec_=$(if ! curl -s "$servidor1"; then curl -s "$servidor2"; fi)

echo "o seu IP externo E: $exec_ "
