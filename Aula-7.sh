#!/usr/bin/env bash

[[ "$UID" -eq "0" ]] && { echo "Esse programa so funciona com Super User"; exit 1 ;}

dir1="/home/$USER/NEW/"
dir2="/home/$USER/BACKUP/"
compactar="backup"

case "$1" in
	-b|--backup) mkdir -p "$dir1" "$dir2"
			tar -cvf "$compactar" "$dir1"
				mv "$compactar" "$dir2"
			;;

	-h|--help) echo "Use -b, --backup para fazer seu backup, o script criar 2 pastas (NEW|BACKUP) no seu Home, coloque seus arquivos no diretorio NEW, O backup sera criado e mandado para o diretorio BACKUP da sua Home. " ;;

	*) echo "Nem Um comando Encontrando, Tente -h --help [ERROR]"
	;;
esac







