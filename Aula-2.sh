#!/usr/bin/env bash
#
echo "boas-vindas ao meu script da aula 2, estamos buscando informacoes do seu pc,  por favor aguarde" && sleep 10
echo
echo -e "use        :  $USER"
echo -e "sua Home   :  $HOME"
echo -e "seu Shell  :  $SHELL"

echo

echo "por favor, resposta essas questoes" && sleep 5

echo

read -p "seu nome completo     : " nome
read -p "sua idade             : " idade
read -p "seu endereco completo : " ender
read -p "seu telefone          : " tele
read -p "sua escolaridade      : " escola
read -p "sua profissao atual   : " profi

echo

echo -e "nome         : $nome"
echo -e "idade        : $idade"
echo -e "endereco     : $ender"
echo -e "telefone     : $tele"
echo -e "escolaridade : $escola"
echo -e "profissao    : $profi"

echo

read -p "seus dados estao corretos? [S/n] "
echo "fechando o programa..."
