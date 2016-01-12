#!/bin/bash

if [ "$1" = "" ] || [ "$2" = "" ] || [ "$3" = "" ]; then
	echo -e "Usage: $0 \033[1;32mdirectory old_extension new_extension\033[0m"
	exit 1
fi

directory=$1
old_extension=$2
new_extension=$3

if [ ! -d $directory ]; then
	echo "Entre com um diretório válido"
	exit 1
fi

if ! ls ${directory}/*.${old_extension} 2> /dev/null > /dev/null; then
	echo "Nenhum arquivo para alterar"
	exit 0
fi

for file in ${directory}/*.${old_extension}; do
	new_name=$(echo $file | sed "s/${old_extension}/${new_extension}/")
	mv "$file" "$new_name"
done
