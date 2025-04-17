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
if [[ $1 == "--init" ]]; then
  git clone https://github.com/twoja_nazwa/Lab4-Git-Tools.git $PWD/repo
  export PATH=$PATH:$PWD/repo
fi
