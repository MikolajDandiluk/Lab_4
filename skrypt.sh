#!/bin/bash

if [[ $1 == "--date" ]]; then
    current_date=$(date "+%Y-%m-%d")
    echo "Dzisiejsza data: $current_date"
elif [[ $1 == "--logs" ]]; then
    for i in {1..100}; do
        echo "Nazwa pliku: log$i.txt" > log$i.txt
        echo "Nazwa skryptu: skrypt.sh" >> log$i.txt
        echo "Data: $(date)" >> log$i.txt
    done
else
    echo "Bledny argument"
fi