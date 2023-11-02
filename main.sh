#!/bin/bash

# Ruta a la carpeta personal
personal_folder="/luis-2672501"

# Cambia al directorio personal
cd "$personal_folder"

# Crea 100 archivos con el formato [sunombre]-archivoX.txt
for ((i=1; i<=100; i++)); do
  touch "luis-2672501$i.txt"
done

# Otorga permisos de ejecución al script si es necesario
chmod +x "$personal_folder/main.sh"

# Ejecuta Apache HTTP Server en primer plano
apache2-foreground
