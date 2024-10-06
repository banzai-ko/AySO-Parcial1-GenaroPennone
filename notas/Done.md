# Notas Parcial


## Comandos
```bash
$ mkdir parcial1
# agergar encabezados bash: 
$ echo '#!/bin/bash' | cat - script.sh > temp && mv temp script.sh

 
 $ for letra in {a..f}; do
     touch "punto${letra}.sh"
  done
$ mv *.sh parcial1
$ git clone https://github.com/banzai-ko/AySO-Parcial1-GenaroPennone
$ mv parcial1/ AySO-Parcial1-GenaroPennone  
$ cd AySO-Parcial1-GenaroPennone
# Punto A. Asumo que la carpeta debe estar en la raiz por la imagen 
$ sudo mkdir -p /EXAMENES-UTN/alumno_{1,2,3}//parcial_{1,2,3} /EXAMENES-UTN/profesores
$ echo "mkdir -p /EXAMENES-UTN/alumno_{1,2,3}//parcial_{1,2,3} /EXAMENES-UTN/profesores" >> /parcial1/puntoa.sh

#Punto B. Formatear SDB 4 part: 3 primarias y una extendida y montar en /mnt
#Parted en lugar de fdisk para automatizar
sudo parted /dev/sdc --script mklabel msdos
sudo parted /dev/sdc --script mkpart primary ext4 0% 25%
sudo parted /dev/sdc --script mkpart primary ext4 25% 50%
sudo parted /dev/sdc --script mkpart primary ext4 50% 75%
sudo parted /dev/sdc --script mkpart extended 75% 100%
sudo parted /dev/sdc --script mkpart logical ext4 75% 100%
# Formato

sudo mkfs.ext4 /dev/sdc1  
sudo mkfs.ext4 /dev/sdc2  
sudo mkfs.ext4 /dev/sdc3
sudo mkfs.ext4 /dev/sdc5


# Montaje
# crear directorios
sudo mkdir -p /mnt/disco{1,2,3,4}

#Montar
sudo mount /dev/sdc1 /mnt/disco1  
sudo mount /dev/sdc2 /mnt/disco2  
sudo mount /dev/sdc3 /mnt/disco3  
sudo mount /dev/sdc5 /mnt/disco4 

#Punto C. Usuarios y permisos
$ for user in developer tester devops diseñador; do
    sudo useradd -m "$user"
done
$ sudo groupadd grupodevops
$ sudo usermod -aG grupodevops developer

$ sudo groupadd grupodiseño
$ sudo usermod -aG grupodiseño tester

$ sudo groupadd grupodeveloper
$ sudo usermod -aG grupodeveloper devops

#Propiedad y permisos

sudo chown -R developer:developer /EXAMENES-UTN/alumno_1
sudo chmod -R 750 /EXAMENES-UTN/alumno_1
sudo chown -R tester:tester /EXAMENES-UTN/alumno_2
sudo chmod -R 760 /EXAMENES-UTN/alumno_2
sudo chown -R devops:devops /EXAMENES-UTN/alumno_3
sudo chmod -R 700 /EXAMENES-UTN/alumno_3
sudo chown -R diseñador:diseñador /EXAMENES-UTN/profesores
sudo chmod -R 755 /EXAMENES-UTN/profesores

# Validar
$ sudo su <usuario> # developer, tester, devops, diseñador
$ cd <carpeta> # usuario_1, usuario_2, usuario_3, profesores
$ whoami > validar.txt
$ exit
#
$ sudo apt upadte; sudo apt install tree
$ tree

# punto D

mkdir -p Estructura_Asimetrica/{correo,clientes}/{cartas_{1..100},carteros_{1..10}}
mkdir -p Estructura_Asimetrica/{correo,clientes}/{cartas_{1..100}} Estructura_Asimetrica/correo/{carteros_{1..10}}

mkdir -p /EXAMENES-UTN/alumno_{1,2,3}//parcial_{1,2,3} /EXAMENES-UTN/profesores

#Punto E Filtro basico
$ cat /proc/meminfo | grep MemTotal > Filtro_Básico.txt
$ echo "cat /proc/meminfo | grep MemTotal > Filtro_Básico.txt" > parcial1/puntoe.sh
$ sudo dmidecode -t chassis | grep -E 'Chassis Information|Manufacturer' >> Filtro_Básico.txt
$ echo "sudo dmidecode -t chassis | grep -E 'Chassis Information|Manufacturer' >> Filtro_Básico.txt" >> parcial1/puntoe.sh$ 


# Punto D Filtro Avanzado

echo "Mi IP Publica es: $(curl -s ifconfig.me)" > Filtro_avanzado.txt
echo "Mi usuario es: $(whoami)" >> Filtro_avanzado.txt 
echo "El hash de mi usuario es: $(sudo cat /etc/shadow | grep vagrant | awk -F ':' '{print $2}')" >> Filtro_avanzado.txt
```
