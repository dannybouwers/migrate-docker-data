#!/bin/ash
for f in $(ls /source/); do
    if [ -d "/source/$f/" ]
    then
        if [ -d "/destination/$f/" ]
        then
            echo n | cp -ir "/source/$f/." "/destination/$f" 2>/dev/null;
        else
            echo "/destination/$f/ not found. Use -v <host location>:/destination/$f to mount it"
        fi
    fi
done