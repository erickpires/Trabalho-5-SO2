#!/bin/bash

filenames=$(grep -lr "bash" $HOME)

for file in $filenames; do
    wc -l $file
done
