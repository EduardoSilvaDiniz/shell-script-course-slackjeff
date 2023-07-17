#!/usr/bin/env bash

# Cera no carro.
# Verificando se a sujeira saiu.

# comandos
# break = Parar o loop.
# continue = volta para o inicio do loop

while :; do
	read -p "sujeira saiu ? [s/N] " sujeira
	[[ "$sujeira" = "s" ]] && break
	echo "esfrega mais um pouco."
	echo "esfrega..."
	echo "esfrega mais..."
done

echo "Opa Verifiquei que a sujeira saiu do capo...."
