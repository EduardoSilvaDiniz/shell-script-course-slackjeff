#!/usr/bin/env ksh
# declarando arrays associativas em
# BASH, KSH, ZSH

# NAO PORTAVEL, KSH, NAO FUNCIONA:
#declare -A NOME_ARRAY
#NOME_ARRAY[idade]="29 anos"
#printf '%s\n' "${NOME_ARRAY[idade]}"

# FORMA MAIS PORTAVEL
typeset -A NOME_ARRAY
NOME_ARRAY[rua]="Rua Francisquinha"
printf '%s\n' "${NOME_ARRAY[rua]}"

