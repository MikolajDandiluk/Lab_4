#!/bin/bash

if [[ $1 == "--date" ]]; then
    current_date=$(date "+%Y-%m-%d")
    echo "Dzisiejsza data: $current_date"
elif [[ $1 == "--logs" ]]; then
    if [ -n "$2" ]; then
        zmienna=$2
    else
        zmienna=100
    fi
    for ((i=1; i<=$2; i++)) 
    do
        echo "Nazwa pliku: log$i.txt" > log$i.txt
        echo "Nazwa skryptu: skrypt.sh" >> log$i.txt
        echo "Data: $(date "+%Y-%m-%d")" >> log$i.txt
    done
elif [[ $1 == "--help" ]]; then  
    echo "HELP"
    echo "--date - wypisuje date"
    echo "--logs liczba - tworzy podaną ilość plików z logami"
else
    echo "HELP"
    echo "--date - wypisuje date"
    echo "--logs liczba - tworzy podaną ilość plików z logami"
fi