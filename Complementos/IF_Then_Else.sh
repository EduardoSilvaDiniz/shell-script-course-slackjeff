#!/usr/bin/env bash

# comando if/then

read -p "Esta vindo carro da direita? [S/n] " rep1
if [[ "$rep1" = "sim" ]]; then
	echo "ok nao vamos atravessar!"
	exit 1
fi

read -p "esta vindo carro da esquerda? [S/n] " rep2
if [[ "$rep1" = "sim" ]]; then
	echo "ok nao vamos atravessar!"
	exit 1
fi

read -p "podemos atravessar? [S/n] " rep3
if [[ "$rep3" = "sim" ]]; then
	echo "atravesando a rua ... vamos la mano!"
else
	echo "ok.. fica ai cara!"
fi

echo "Continuei o trajeto."
