#!/usr/bin/env bash
# Baixa videos do youtube
# E conferte para um formato
# Especifico de audio

#parametros do programa
# 64k, 128, 256k, 320K.
qualidade="320K"

# BEST, aac, vorbis, m4a, opus, wav.
#formato_audio="vorbis"

#Testes Iniciais====================#
[[ "$UID" -eq "0" ]] && { echo "root? NAO" ; exit 1 ;}

youtube-dl --embed-thumbnail --audio-quality "$qualidade" "$@"
