#!/usr/bin/env bash

#=====================================================
# Programa Simples para mostra o clima da sua regiao |
# criador por "Eduardo Silva Diniz"                  |
# aluno da academia Slackjeff                        |
#=====================================================

#variaveis Site e a cidade
site="wttr.in/"
cidaede=" "

#verificacao se existe curl instalando
echo "verificando depedencias"
[[ $(type -p curl) ]] && echo "tudo OK" || { echo "Necessario o Software Curl" ; exit 1; }

#Verificando se ah internet"
echo
echo "Testando sua internet"
if ! wget -q --spider www.google.com; then
    echo "NECESSARIO INTERNET"
 exit 1
fi
echo "Tudo OK"

#Pergutando qual E sua Cidade, E dando a dica de usar - no lugar do espaco
echo
echo 'por favor use (-) no lugar do espaco'
read -p "Qual E sua cidade? " cidade

#testando a resposta
[[ "$cidade" = " " ]] && { echo "Escreva o nome da sua cidade" ; exit 1 ;}

#juntando a variavel do site com a resposta do user
pesquisa="$site$cidade"

#executando curl no site wttr.in
curl -s "$pesquisa"

#-------------------------Fim do Programa----------------------------------
