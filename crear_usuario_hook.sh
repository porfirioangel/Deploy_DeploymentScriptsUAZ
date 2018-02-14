#!/bin/bash

# Ver información de los usuarios
# cat /etc/passwd
# Eliminar usuario
# sudo userdel -r porfirioads
# sudo rm -r /var/mail/porfirioads

echo "+-------------------------------------+"
echo "| Crear usuario para establecer hooks |"
echo "+-------------------------------------+"
echo ""

if [ $UID -ne 0 ]; then
    echo "Se requieren permisos de administrador"
    exit
fi

read -p "Ingresa el nombre de usuario: " USUARIO
read -p "Ingresa la contraseña: " PASSWORD

echo "Creando el usuario $USUARIO..."
useradd -m -s /bin/bash $USUARIO
echo $USUARIO:$PASSWORD | chpasswd

USER_HTML=/var/www/html/$USUARIO
echo "Creando directorio $USER_HTML"
mkdir $USER_HTML
chown $USUARIO:$USUARIO $USER_HTML

USER_PUBLIC_HTML=/home/$USUARIO/public_html
echo "Creando enlace simbólico de $USER_PUBLIC_HTML en $USER_HTML"
ln -s $USER_HTML $USER_PUBLIC_HTML

echo "Proceso terminado"