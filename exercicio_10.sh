#!/bin/bash

find / -type f -user $USERNAME > arq.txt 2> /dev/null

find / -type d -user $USERNAME > dir.txt 2> /dev/null

cat arq.txt > lista.txt
cat dir.txt >> lista.txt

rm arq.txt dir.txt
