FROM nginx:latest

# Copia los archivos de ./paginaweb al directorio raíz de nginx
COPY ./paginaweb /usr/share/nginx/html

# Expone el puerto 80
EXPOSE 80