#!/usr/bin/env bash

# Glob/Curingas em Shell.
# LEMBRADO que em SHELL NAO existe
# Expressao REGULAR (ER), existem apenas em
# utilitarios do shell.
# o Que estamos vendo sao Curingas/glob

# qualquer coisa.
# Para isto utilizamos o glob *
echo '*.txt'				   # qualquer coisa com final .txt
echo 'brave-brow*'     # brave-browser ou brave-browSFGar

# Um Caractere qualquer...
# E utilizado o ? para indicar.
echo '?ato.txt'        # rato.txt gato.txt tato.txt pato.txt

# Lista negada
# qualquer caractere menos os listados.
echo '[^A-Za-z]*.jp?n' # NEGANDO A-Z ou a-z. e pode ser, .jpig ou .jpeg

# List com ou, qualquer um dos textos
# separador por ",".

echo '{A-Z,a-z,0-9}*.{jpg,bmp,png,html,txt}'
# 'ABACATE, abacate, 12 01' 'QUALQUER COISA' '.' 'jpg ou bmp...'

echo '[^A-Za-z]{-,_}[^0-9]{1,2}.{bmp.png}'
# 		123-jeffe-1.bmp
# 		36-abc@@2.png
