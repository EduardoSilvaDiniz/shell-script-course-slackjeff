#!/usr/bin/env bash
# Criando um programa
# estilo lombada eletronica

# LIMITE 80
# LIMITE DE 5KM, que da 85
# Entre 80 a 85, exibe uma mensagem
# Passou de 85km, vai da o flash, multa!

read -p "Digite a sua velocidade: " vel

[[ "$vel" -ge "80" ]]  	 \
&& [[ "$vel" -le "85" ]] \
&& echo "Voce esta no limite, Cuidado" 

[[ "$vel" -ge "86" ]]  \
&& echo "FLASH, MULTA" \
&& { gnome-screenshot ;}
