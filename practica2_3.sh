#!/bin/bash
#845097, Valle Morenilla, Juan, T, 1, A
#839757, Ye, Ming Tao, T, 1, A

if [ "$#" -ne "1" ]
then
    echo "Sintaxis: practica2_3.sh <nombre_archivo>"
elif [ ! -f "$1" ]
then
    echo "$1 no existe"
else
    chmod ug+x "$1"
    stat --format='%A' "$1"
fi
