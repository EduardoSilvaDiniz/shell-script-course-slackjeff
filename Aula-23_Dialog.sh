#!/usr/bin/env bash


dialog --title "Inicio" 			   \
 	   --msgbox "iniciado Programa..." \
	   0 0

# Usando Menu do Dialog.
text="
Oi, selecione uma das opcoes...
Voce pode usar, o DIRECIONAl e o ENTER para selecionar
uma opcao.
"
while true; do
		menu=$(
		dialog --stdout 				   \
		--title "MENU" 					   \
		--help-button					   \
	   	--menu  "$text"			   		   \
	   	0 0 0				  			   \
	   	"Internet" "Usando o Brave"		   \
	   	"Terminal" "Gnome Terminal"		   \
		"Spotify"  "ouvir musica"		   )

status="$?"
if [[ "$status" = "1" ]]; then
 		break
elif [[ "$status" = "2" ]]; then
		dialog --msgbox "chamada da ajuda. " 0 0
elif [[ "$menu" = "Internet" ]]; then
	brave-browser 1>/dev/null 2>&1 &
elif [[ "$menu" = "Terminal" ]]; then
		gnome-terminal &
elif [[ "$menu" = "spotify" ]]; then
		gnome-terminal ncspot &
 fi
done

