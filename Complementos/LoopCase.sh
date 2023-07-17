#!/usr/bin/env bash

read -p "qual seu nome? " nome

case "$nome" in
	edu|eduardo|Eduardo) echo "nome E edu" ;;
	fer) echo "Nome E Fernanda" ;;
	andre) echo "Nome E andre" ;;
	ricardo) echo "ricardo eletro" ;;
	*) echo "error" exit 1
esac
