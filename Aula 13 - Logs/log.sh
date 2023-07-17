#!/usr/bin/env bash

# REDIRECIONA, SOBRE ESCREVE.
# >
# 2>

# ACRECENTA
# >>
# 2>>

arquivo_log="/tmp/log.txt"

# HERE DOCUMENT

cat <<-FECHA
Aqui E onde fica o manual de ajuda....
escreva tudo sem passa do fecha
...
	FECHA

#======================Test====================#
[[ ! -e "$arquivo_log" ]] && > "$arquivo_log"

# Passando Diretorio que NAO existe
# Para o comando ls, e enviando a saida
# de erro para o arquivo de log.

if ls /homeeee >/dev/null 2>"$arquivo_log"; then
	echo "O comando LS funcionou."
else
	echo "HORA: |============$(date +%H:%M)==============|" >> "$arquivo_log"
	echo "Opa Houve um erro, Verfique em: $arquivo_log"
fi

# segundo exemplo, mais simples..
# usando "-", faz o mesmo que /dev/null

if ! ls /homeee >&- 2>&-; then
	echo "Opss deu algum erro..."
fi









