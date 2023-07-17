#!/usr/bin/env bash

variavel_qualquer="oi oi oi tudo bem?"
variavel_bixo="vaca peixe gato rato cachorro"
variavel_numeros="1 2 3 4 5 6 7 8 9 10"

# Retorna o Tamanho da string
# o Numero de caracteres presentes.

echo "${#variavel_qualquer}"

# Corta o inicio da string, e somente O INICIO.

echo "${variavel_qualquer#oi }"

# Retornar o texto a partir da posicao
# desejada.

echo "${variavel_qualquer:3}"

# Retornar o texto a partir da posicao
# X e retorna tamanho.

echo "${variavel_qualquer:5:4}"

# para SUBSTITUIR todas as ocorrencias
# que ser encontradas.
# "${variavel//porco/galinha}"
# Neste exemplo substitui porco por galinha, em todas
# as ocorrencias.

echo "${variavel_qualquer//oi/xau}"

# Para SUBSTITUIR a primeira ocorrencia
# que encontrar usasse uma unica barra.
# "${variavel/porca/galo}"
# Entao vou substituir a primeira ocorrencia
# que encontrar, no caso porca.

echo "${variavel_qualquer/oi/xau}"

# se a string comecar com vaca, substitua
# por passarinho.
echo "${variavel_bixo/#vaca/passarinho}"

# se a string termina com cachorro, subsititua
# por gado.
echo "${variavel_bixo/%cachorro/gado}"


# GULOSO, corta o texto do inicio da string
echo "${variavel_numeros##1*6}"

# GULOSO, corta o texto FINAL da string
echo "${variavel_numeros%%8*10}"
