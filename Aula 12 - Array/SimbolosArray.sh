#!/usr/bin/env bash


carros=("palio" "corsa" "opala" "mercedes" "bmw")

# * Como uma unica string... "UMA COISA SO"
# @ Como varias strings protegidas, OU SEJA LINHA A LINnha "UMA" "DUAS"

for lista in "${carros[@]}"; do

	case $lista in
	palio) echo "E palio" ;;

	opala) echo "E opala" ;;

	esac

	echo "$lista"
done





