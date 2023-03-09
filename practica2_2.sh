#!/bin/bash
#845097, Valle Morenilla, Juan, T, 1, A
#839757, Ye, Ming Tao, T, 1, A

for i in "$@" #Se podría poner SIN COMILLAS $*
do
    if [ ! -f "$i" ]
    then
        echo "$i no es un fichero"
    else
        more "$i"
    fi
    shift 1
done