#!/bin/bash
if [[ $1 == "--date" || $1 == "-d" ]]; then
  date
fi
if [[ $1 == "--logs" || $1 == "-l" ]]; then
  count=${2:-100}
  for i in $(seq 1 $count); do
    echo "Nazwa pliku: log$i.txt" > log$i.txt
    echo "Skrypt: skrypt.sh" >> log$i.txt
    date >> log$i.txt
  done
fi
if [[ $1 == "--help" || $1 == "-h" ]]; then
  echo "Dostępne opcje:"
  echo "--date (-d)    - wyświetla datę"
  echo "--logs (-l)    - tworzy pliki log"
  echo "--help (-h)    - wyświetla pomoc"
fi
