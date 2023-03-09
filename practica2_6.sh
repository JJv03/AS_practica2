#!/bin/bash
#845097, Valle Morenilla, Juan, T, 1, A
#839757, Ye, Ming Tao, T, 1, A

# Comprueba cual ha sido la última modificada y obtiene su nombre
dir=$(stat -c %n,%Y ~/bin??? 2> /dev/null | sort -t ',' -k 2 | head -n 1 | cut -d ',' -f 1)
if [ "$dir" = "" ]
then 
	# Crea directorio temporal
	dir=$(mktemp -d ~/binXXX)
	echo "Se ha creado el directorio $dir"
fi
cont=0
echo "Directorio destino de copia: $dir"
for i in $(ls)
do
	# Copia y cuenta los archivos
	if [ -f $i -a -x  $i ]
	then
		cp $i $dir
		echo "./$i ha sido copiado a $dir"
		cont=$((cont+1))
	fi
done
if [ $cont -eq 0 ]
then
	echo "No se ha copiado ningun archivo"
else
	echo "Se han copiado $cont archivos"
fi