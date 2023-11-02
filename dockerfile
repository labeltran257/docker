# Utiliza la imagen oficial de Apache HTTP Server con una versión específica
FROM httpd:2.4

# Copia tus archivos estáticos desde tu sistema host a la carpeta de trabajo de Apache en el contenedor
COPY ./2/template2/index.html /usr/local/apache2/htdocs

# Crea una carpeta personal en la raíz del sistema
RUN mkdir -p /luis-2672501

# Asigne permisos necesarios para la carpeta
RUN chmod 777 /luis-2672501

# Copie una de las imágenes de la carpeta "recursos" a la carpeta personal en el contenedor
COPY recursos/img2.jpg /luis-2672501/img2.jpg

# Copie el script "main.sh" al directorio personal en el contenedor
COPY main.sh /luis-2672501/main.sh

# Dar permisos de ejecución al script
RUN chmod +x /luis-2672501/main.sh

# Exponer el puerto
EXPOSE 8052

# Inicie el servidor Apache HTTP en primer plano al ejecutar el contenedor
CMD ["httpd-foreground"]
