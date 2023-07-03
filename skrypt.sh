#!/bin/bash

if [[ $1 == "--date" ]]; then
    current_date=$(date "+%Y-%m-%d")
    echo "Dzisiejsza data: $current_date"
else
    echo "Niepoprawne użycie skryptu. Aby wyświetlić dzisiejszą datę, wpisz: skrypt.sh --date"
fi