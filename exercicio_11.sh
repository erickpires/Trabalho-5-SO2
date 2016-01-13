#!/bin/bash

users=$(cut -d: -f1,3 /etc/passwd)

for user in $users; do
    uid=$(echo $user | cut -d: -f2)
    if [ $uid -gt 100 ]; then
        username=$(echo $user | cut -d: -f1)
        echo "$username ($uid)"
    fi
done
