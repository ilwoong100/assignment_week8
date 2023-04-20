#!/bin/bash
cd files 

for file in *; do
    if [[ -f "$file" ]]; then
        first_char=$(echo "$file" | head -c 1 | tr '[:upper:]' '[:lower:]')

        if [[ $first_char == [a-z] ]]; then
            mv "$file" "../${first_char}/"
        fi
    fi
done