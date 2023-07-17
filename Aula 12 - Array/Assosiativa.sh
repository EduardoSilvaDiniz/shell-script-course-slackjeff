#!/usr/bin/env bash

# Trabalhando com array associativa

declare -A dados
dados[nome]="Jefferson"
dados[sobrenome]="Rocha"
dados[idade]="30 Anos"
dados[cpf]="xxx-xxx-xxx"


echo -e "O nome E: ${dados[nome]}\nO Sobrenome E: ${dados[sobrenome]}\nO CPF E:${dados[cpf]} "





