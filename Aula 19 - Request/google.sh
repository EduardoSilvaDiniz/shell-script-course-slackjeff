#!/usr/bin/env bash

if [[ "$1" = "-e" ]]; then
	shift
	pesquisa="$@"
	pesquisa="${pesquisa// /%20}"
	brave-browser https://www.google.com/search?q="$pesquisa"
fi
