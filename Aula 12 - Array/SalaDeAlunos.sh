#!/usr/bin/env bash



#nome01="Francisco"
#nome02="jefferson"
#nome03="Paulo"
#nome04="pietra"
#nome05="Joaquim"

# Arrays Comuns
#nome[0]="Francisco"
#nome[1]="jefferson"
#nome[2]="Fernando"
#nome[3]="Paulo"
#nome[4]="Pietra"

#echo "${nome[0]}" "${nome[2]}"

# Lista de nomes
nome=("Francisco" "Jefferson" "Fernando")

echo "${nome[0]}"

echo "chamando todos ${nome[*]}"
