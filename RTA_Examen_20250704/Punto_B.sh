#!/bin/bash

LISTA=$2
USUARIO_PASS=$1

CLAVE=$(sudo grep "^$USUARIO_PASS:" /etc/shadow | awk -F ':' '{print $2}')

ANT_IFS=$IFS
IFS=$'\n'

for LINEA in $(cat "$LISTA" | grep -v '^#'); do
    USUARIO=$(echo "$LINEA" | awk -F ',' '{print $1}')
    GRUPO=$(echo "$LINEA" | awk -F ',' '{print $2}')
    HOMEUSUARIO=$(echo "$LINEA" | awk -F ',' '{print $3}')
    
    sudo groupadd "$GRUPO"
    sudo useradd -m -s /bin/bash -d "$HOMEUSUARIO" -g "$GRUPO" -p "$CLAVE" "$USUARIO"
done

IFS=$ANT_IFS

