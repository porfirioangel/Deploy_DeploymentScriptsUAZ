#!/bin/bash

echo "Clonando el repo $1..."
cd /tmp
git clone $1
echo "Hecho..."


echo "Copiando el archivp $2.war al directorio de aplicaciones de tomcat"
cd $2

cp $2.war /usr/local/tomcat/webapps/

echo "Hecho..."

echo "Deploy terminado"