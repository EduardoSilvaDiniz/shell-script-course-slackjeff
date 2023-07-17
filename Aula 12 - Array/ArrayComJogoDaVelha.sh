#!/usr/bin/env bash


# ! (EXCLAMACAO)
# # (JOGO DA VELHA)


apelidos=(jeffe papa fafa fefe fifi)

for i in "${!apelidos[@]}"; do
	echo "vetor $i: ${apelidos[$i]}"
done

echo "Quatidade de indices na array 'apelidos': ${#apelidos[@]}"
