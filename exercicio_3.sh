#!/bin/bash

directory="/tmp"

if ! ls ${directory}/*.mpeg3 2> /dev/null > /dev/null; then
	echo "Nenhum arquivo para alterar"
	exit 0
fi

for file in ${directory}/*.mpeg3; do
	new_name=$(echo $file | sed 's/mpeg3/mp3/')
	mv "$file" "$new_name"
done
