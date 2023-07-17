#!/usr/bin/env bash

# Loop For, trabalha com lista de variaveis

# Forma de Monta um Loop FOR
#
# for Variavel in "linha 1" "linhas 2" "linha 3" "linha 4"; do
#
#	BLOCO COMANDO
#
# Done

#-----------------------Testes------------------------------------------------#

#for fruta in "Tomate" "Jaca" "Maca" "Pera" "Laranja" "Melancia" "Banana"; do
#	echo "Lista de Frutas caras: $fruta"
#done


#for number in 1 2 3 4 5 6 7 8 9; do
#	echo "O Numero E : $number"
#done


#for number in {0..100..2}; do
#	echo "Pulando em 2 em 2 : $number"
#done

for fruta in  "$(cat lista.txt)"; do  # esta com aspas para proteger o nome "mamao papaia"
	echo "$fruta"
done














