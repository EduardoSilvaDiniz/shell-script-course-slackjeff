#!/usr/bin/env bash



function parametros(){
	[[ -z "$1" ]] && echo "variavel nula" || echo "variavel n nula"

}

parametros "$@"
