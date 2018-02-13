#!/bin/bash

for archivo in *
do
    if [ -d $archivo ]; then
        echo "$archivo es un directorio"
    elif [ -L $archivo ]; then
        echo "$archivo es un enlace simbólico"
    elif [ -f $archivo ]; then
        echo "$archivo es un archivo"
    fi
done
