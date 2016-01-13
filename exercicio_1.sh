#!/bin/bash

filename=$1

stat --format=%s $filename > /dev/null 2>&1
return=$?

if [ $return -eq 1 ]; then
    echo "File \"$filename\" does not exist."
    exit
fi

size=$(stat --format=%s $filename)

if [ $size -gt 100 ]; then
    echo "File \"$filename\" has more than 100 bytes ($size bytes)"
else
    echo "File \"$filename\" has less than 100 bytes ($size bytes)"
fi
