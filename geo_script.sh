#!/bin/bash

#creamos una lista con las opciones del menú
opciones="LLamar_a_shp2pgsql Repetir_inicio Salir"

#esta función es la de ensamblar las imágenes con apngasm
function LLamar_a_shp2pgsql {
	#toma el resultado del directorio en la función anterior y lo verifica de la misma forma
	#C:..Tarea3/Panama/PAN_adm/adm0.shp
  echo "Ingrese ruta de acceso a los archivos .shp"
  read directorio
  srid=4326
  file_name_sql="db_PAN"
  echo "Hola! Ahora trabajaremos con shp2pgsql"
  #toma el resultado del directorio en la función anterior y lo verifica de la misma forma
	if [[ -d $directorio ]]; then
		echo "La ruta es: $directorio"
    #entramos a la ruta con el comando cd
		cd $directorio
		echo "ingrese el nombre del archivo de referencia sin la extension .shp"
		read file_name_shp
		echo "ingrese el nombre de la tabla a crear"
		read table_name
    #ingresamos los .shp en un .sql
		shp2pgsql -i -s srid $file_name_shp.shp $table_name > $file_name_sql.sql
    #imprimimos la ruta donde estamos trabajando
    	chmod 751 $file_name_sql.sql
    	cd ..
    	cd ..
		a=$(pwd)
    echo "Se ha insertado en $a/ARCHIVO_DB el $file_name_shp"
    #creamos un directorio o verificamos si existe
		if [ -d "$a/Archivo_DB" ]; then
			echo "La carpeta Archivo_DB existe"
		else
			mkdir $a/Archivo_DB
			echo "se ha creado la ruta $a/Archivo_DB"
		fi
    #detenemos para que se cree tanto el archivo como la carpeta
    sleep 10
    #movemos el archivo dentro del nuevo directorio creado
		mv $directorio/$file_name_sql.sql $a/Archivo_DB
	elif [[ -f $directorio ]]; then
		echo "Es una ruta...pero de un archivo"
	fi
}

function Menu {
  echo "Selecciona una opción de nuestro menu"
  #invocamos la lista y la pasamos como opciones dentro de un select
  select opcion in $opciones;
  do
	  if [ $opcion = "LLamar_a_shp2pgsql" ]; then
		  LLamar_a_shp2pgsql
    elif [ $opcion = "Repetir_inicio" ]; then
      Menu
	  elif [ $opcion = "Salir" ]; then
		  echo "Bye!"
		  exit
	  else
		  echo "Opcion no válida!"
	  fi
  done
}
#Desde aquí empieza el menú
echo "Manejo de Shapefiles en BASH"
Menu