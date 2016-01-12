#!/bin/bash

directory="/tmp"

for file in ${directory}/*.mpeg3; do
	new_name=$(echo $file | sed 's/mpeg3/mp3/')
	mv "$file" "$new_name"
done
