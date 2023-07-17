#!/usr/bin/env bash

function status_saida(){
	local dir="$HOME"
	ls "$dir"
	return 0 A 255
}

status_saida
echo "----$?"
