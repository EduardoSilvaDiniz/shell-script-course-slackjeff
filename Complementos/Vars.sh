#!/usr/bin/env bash

listagem1="$(ls /home/edu/Documentos/)"
listagem2="$(ls /home/edu)"
listagem3="$(ls /home/aaaa)"

echo -e "\n"

echo -e "listando 'Documentos do User Edu'  \n$listagem1 \n"
echo -e "listando 'Home do User Edu'        \n$listagem2 \n"
echo -e "listando 'Home do User Test'       \n$listagem3 \n"
