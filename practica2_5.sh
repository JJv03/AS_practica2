#!/bin/bash
#845097, Valle Morenilla, Juan, T, 1, A
#839757, Ye, Ming Tao, T, 1, A

echo -n "Introduzca el nombre de un directorio: "
read dir
if [ ! -d "$dir" ]
then
    echo "$dir no es un directorio"
else
    fics=$(ls -l "$dir" | grep ^- | wc -l)
    dirs=$(ls -l "$dir" | grep ^d | wc -l)
    echo "El numero de ficheros y directorios en $dir es de $fics y $dirs, respectivamente"
fi