#!/usr/bin/env bash

# TESTES INICIAIS DO PROGRAMA

# verificando se o leafpad existe no sistema

[[ $(type -P leafpad) ]] \
|| { echo "Necessita do software leafpad, para executar esse programa" ; exit 1 ;}

read -p "Nome? " nome

[[ "$nome" ]] && echo "TEM ALGUM CONTEUDO" || echo "nao tem nem um conteudo"
