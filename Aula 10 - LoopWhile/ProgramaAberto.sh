#!/usr/bin/env bash


# until, So para quando a condicao for verdadeira (0)

until ps -e | grep "nautilus"; do
  echo "nautilos Nao esta em execucao..."
  sleep 1s
done
