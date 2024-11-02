#!/bin/bash

# Respuesta con error:
#sudo mkdir -p /EXAMENES-UTN/alumno_{1,2,3}//parcial_{1,2,3} /EXAMENES-UTN/profesores

# Corregido 2/11/24
sudo mkdir -p /EXAMENES-UTN/{{alumno_{1..3},profesores},alumno_{1..3}/parcial_{1..3}}
