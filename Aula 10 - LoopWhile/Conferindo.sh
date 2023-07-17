#!/usr/bin/env bash

while true; do
	read -p "qual seu nome ? " nome
	[[ -z "$nome" ]] && echo "Entre com algum valor" || break
done

echo "continunando"
