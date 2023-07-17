#!/usr/bin/env bash

dir1="/home/edu/Download"
dir2="/home/edu/Imagens"
if [[ -d "$dir1" ]] || [[ -d "$dir2" ]]; then
  echo "Diretorio(S) encontrados(S)."
else
  echo "os diretorio(s) nao existem."
fi
