#!/bin/bash

REPO="http://148.217.200.108:89/amgdark/CalculadoraMac.git"
FOLDER="CalculadoraMac"

echo "Clonando el repositorio $REPO..."
echo ""

sudo rm -rf /tmp/$FOLDER
cd /tmp
git clone $REPO

echo "Terminado"
echo ""

echo "Copiando el archivo $FOLDER.war al directorio de aplicaciones de Tomcat..."
echo ""

cd $FOLDER
sudo cp $FOLDER.war /usr/local/tomcat/webapps/

echo "Terminado"
echo ""

echo "Corriendo Tomcat..."
echo ""

sudo /usr/local/tomcat/bin/catalina.sh start

echo "Terminado"
echo ""
