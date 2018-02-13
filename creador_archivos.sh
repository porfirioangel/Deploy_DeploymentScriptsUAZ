#!/bin/bash

rm -rf archivos
mkdir archivos
cd archivos

for i in {1..1000}; do
    echo "hola mundo $i" > archivo_$i.txt
done
