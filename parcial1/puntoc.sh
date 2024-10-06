#!/bin/bash
for user in developer tester devops diseñador; do     sudo useradd -m diseñador; done
sudo groupadd grupodevops
sudo usermod -aG grupodevops developer
sudo groupadd grupodiseño
sudo usermod -aG grupodiseño tester
sudo groupadd grupodeveloper
sudo usermod -aG grupodeveloper devops
sudo chown developer:developer /EXAMENES-UTN/alumno_1
sudo chmod 750 /EXAMENES-UTN/alumno_1
sudo chown tester:tester /EXAMENES-UTN/alumno_2
sudo chmod 760 /EXAMENES-UTN/alumno_2
sudo chown devops:devops /EXAMENES-UTN/alumno_3
sudo chmod 700 /EXAMENES-UTN/alumno_3
sudo chown diseñador:diseñador /EXAMENES-UTN/profesores
sudo chmod 755 /EXAMENES-UTN/profesores
