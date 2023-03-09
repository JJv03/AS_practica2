#!/bin/bash
#845097, Valle Morenilla, Juan, T, 1, A
#839757, Ye, Ming Tao, T, 1, A

echo -n "Introduzca el nombre del fichero: "
read fichero
if [ ! -f "$fichero" ]
then
    echo "$fichero no existe"
else
    #echo "Los permisos del archivo $fichero son: "$(ls -l | grep "$fichero" | cut -b 2,3,4)
    aux=$(stat -c %A "$fichero" | cut -b 2,3,4)
    echo "Los permisos del archivo $fichero son: $aux"
fi
