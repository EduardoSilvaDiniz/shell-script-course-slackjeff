#!/usr/bin/env bash

# -->> raciocinio
# Preciso criar um menu com os seguintes comandos
# chrome
# leafpad
# Terminal

echo "#==============#"
echo "1) chrome"
echo "2) leafpad"
echo "3) terminal"
echo "4) sair"
echo "#==============#"
read -p "Selecione uma das opcoes: " opcao

if [[ "$opcao" -eq "1" ]]; then
	google-chrome &
	./menu.sh
elif [[ "$opcao" -eq "2" ]]; then
	leafpad &
	./menu.sh
elif [[ "$opcao" -eq "3" ]]; then
	gedit &
	./menu.sh
elif [[ "$opcao" = =eq "4" ]]; then ; exit 0
else
	echo "Poww nao existe essa opcao"
fi
