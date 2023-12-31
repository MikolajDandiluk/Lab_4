#!/bin/bash

if [[ $1 == "--date"  || "$1" == "-d" ]]; then
    current_date=$(date "+%Y-%m-%d")
    echo "Dzisiejsza data: $current_date"
elif [[ $1 == "--logs"  || "$1" == "-l" ]]; then
    if [ -n "$2" ]; then
        zmienna=$2
    else
        zmienna=100
    fi
    for ((i=1; i<=$zmienna; i++)) 
    do
        echo "Nazwa pliku: log$i.txt" > log$i.txt
        echo "Nazwa skryptu: skrypt.sh" >> log$i.txt
        echo "Data: $(date "+%Y-%m-%d")" >> log$i.txt
    done
elif [[ $1 == "--error"  || "$1" == "-e" ]]; then
    if [ -n "$2" ]; then
        zmienna=$2
    else
        zmienna=100
    fi
    for ((i=1; i<=$zmienna; i++)) 
    do
        mkdir error$i
        echo "Nazwa pliku: error$i.txt" > error$i/error$i.txt
        echo "Nazwa skryptu: skrypt.sh" >> error$i/error$i.txt
        echo "Data: $(date "+%Y-%m-%d")" >> error$i/error$i.txt
    done
elif [[ $1 == "--init" ]]; then
    # Klonowanie repozytorium
    git clone git@github.com:MikolajDandiluk/Lab_4.git ./

    # Pobranie bieżącej ścieżki
    current_path=$(pwd)

    # Dodanie ścieżki do zmiennej środowiskowej PATH
    echo "export PATH=\$PATH:$current_path" >> ~/.bashrc
    source ~/.bashrc
    echo "Inicjalizacja zakończona."
elif [[ $1 == "--help"  || "$1" == "-h" ]]; then  
    echo "HELP"
    echo "--date -d - wypisuje date"
    echo "--logs -d [liczba] - tworzy podaną ilość plików z logami"
    echo "--error -e [liczba] - tworzy pliki z błędami"
    echo "--init pobiera repozytorium ze skryptem"
else
    echo "HELP"
    echo "--date -d - wypisuje date"
    echo "--logs -d [liczba] - tworzy podaną ilość plików z logami"
    echo "--error -e [liczba] - tworzy pliki z błędami"
    echo "--init pobiera repozytorium ze skryptem"
fi