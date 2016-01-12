#!/bin/bash

file=$1

if [ ! -f "$file" ]; then
	echo "You must specify a valid file"
	exit 1
fi

words=$(wc -w "$file" | cut -d " " -f 1)
lines=$(wc -l "$file" | cut -d " " -f 1)

echo -e "This file has \033[1;34m$words\033[0m words and \033[1;34m$lines\033[0m lines"
