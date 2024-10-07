#!/bin/bash
echo "Mi IP Publica es: $(curl -s ifconfig.me)" > Filtro_avanzado.txt
echo "Mi usuario es: $(whoami)" >> Filtro_avanzado.txt
echo "El hash de mi usuario es: $(sudo cat /etc/shadow | grep vagrant | awk -F ':' '{print $2}')" >> Filtro_avanzado.txt

