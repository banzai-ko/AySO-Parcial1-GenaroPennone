#!/bin/bash

# Respuesta con error
#mkdir -p Estructura_Asimetrica/{correo,clientes}/{cartas_{1..100}} Estructura_Asimetrica/correo/{carteros_{1..10}}

# Respuesta Correcta Corregido 2/11/24
 mkdir -p Estructura_Asimetrica/{{correo,clientes}/cartas_{1..100},correo/carteros_{1..10}}
