#!/usr/bin/env bash

#===================================================
# TRABALANDO COM EXPANSÃO CONDICIONAL DE VARIAVEIS!
#===================================================

# se variavel NAO estiver definida ou nula
# RETORNE com o que eu passa de argumento!
# echo "${nome:-Edu}"

# Se variavel NÂO estiver definida ou Nula
# DEFINIDA/ARMAZENE o Argumento/Text que eu passar.
# echo "${nome:=EDU!}"

# se variavel NAO estiver Definida ou nula
# RETORNE com o seguinte ERRO:
# echo "${nome:?Error}"

# se variavel ESTIVER definida, retorne
# o argumento, Se NAO deixa NULA.
# echo "${nome:+alguma coisa}"


# read -p "Qual sua cor favoria? " cor_favorita
# echo "${cor_favorita:+QUE COR LEGAL}"


# read -p "Qual Seu Nome: " nome
# echo "${nome:?Erro... Entrada Nula, entre com algum Dado\!}"

# read -p "Dejesa Sair [S/n] " escolha
# escolha="${escolha:=s}"
# [[ "$escolha" = "s" ]] && echo "SAII"
