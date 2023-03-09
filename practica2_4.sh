#!/bin/bash
#845097, Valle Morenilla, Juan, T, 1, A
#839757, Ye, Ming Tao, T, 1, A

echo -n "Introduzca una tecla: "
read tecla
tecla=${tecla:0:1}
if [[ $tecla =~ ^[A-Za-z] ]]
then
    echo "$tecla es una letra"
elif [[ $tecla =~ ^[0-9] ]]
then
    echo "$tecla es un numero"
else
    echo "$tecla es un caracter especial"
fi