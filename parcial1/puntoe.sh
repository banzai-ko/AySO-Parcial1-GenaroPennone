#!/bin/bash
cat /proc/meminfo | grep MemTotal > Filtro_Básico.txt
sudo dmidecode -t chassis | grep -E 'Chassis Information|Manufacturer' >> Filtro_Básico.txt
