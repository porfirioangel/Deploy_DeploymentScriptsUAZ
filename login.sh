#!/bin/bash

echo "-------------------------------------------------------------------------"
echo "Login del sistema"
echo "-------------------------------------------------------------------------"
echo ""

read -p "Inserta tu usuario: " USUARIO
read -sp "Inserta tu password: " PASSWORD

if [[ $USUARIO == "admin" && $PASSWORD == "admin" ]]; then
    echo "Bienvenido al sistema $USUARIO"
else
    echo "Datos incorrectos"
fi

for (( i = 0; i < 10; i++ )); do
    echo $i
done

for archivo in /vagrant/*; do
    echo $archivo
done
