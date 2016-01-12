#!/bin/bash

directory=$1

if [ ! -d "$directory" ]; then
	echo -e "Usage: $0 \033[1;32mdirectory\033[0m"
	exit 1
fi

if [ "$(ls "$directory")" = "" ]; then
	echo "This directory is empty"
	exit 0
fi

counter=1
for file in $directory/*; do
	echo "$counter: $(basename "$file")"
	counter=$(($counter+1))
done
