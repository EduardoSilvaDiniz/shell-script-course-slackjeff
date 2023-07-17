#!/usr/bin/env bash

echo "O nome do programa E \$0 : $0"
echo "O primeiro \$1 parametro passado foi: $1"
echo "o segundo \$2 parametro passado foi: $2"
echo "O terceiro \$3 parametro passado foi: $3"
echo "O quarto \$4 parametro passado foi: $4"
echo "O decimo \$16 sexto parametro foi: ${16}"

echo "O numero total de parametros passados para o programa foram: $#"

echo "Todos os parametros com \$* : $*"
echo "Todos os parametros com \$@ : $@"

# {} para proteger numero com mais de Um digito (10>>)
# sem chaves o shell vai entende apenas um numero

# exemplos das variaveis
# $* = "a b c d e"
# $@ = "a" "b" "c" "e"

echo "Numero do PID do processo atual ou do Proprio programa: $$"
echo "Numero do PID do ultimo JOB em Segundo plano: $!"
echo "Ultimo argumento do ultimo comando executado: $_"
echo "Mostra o codigo de retor do ultimo comando executado: $?"



