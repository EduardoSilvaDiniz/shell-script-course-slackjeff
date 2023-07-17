#!/usr/bin/env bash



# Trabalhando com o comando ping
# em um ciclo for.
# Loop For vai usando comando por comando
# entao ele comeca usando "google.com"
# na segunda volta ele usa o "Facebook.com"


for link in "google.com" "facebook.com" "gmail.com"; do
	if [[ "$link" = "google.com" ]]; then
		echo "O Link E: $link"
	elif [[ "$link" = "facebook.com" ]]; then
		echo "o Link E: $link"
	fi
done
