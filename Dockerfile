# Utilizar la imagen base de Nginx
FROM nginx:alpine

# Establecer el directorio de trabajo en /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copiar los archivos HTML al directorio de trabajo
COPY . .

# Exponer el puerto 80 para el servidor Nginx
EXPOSE 80

# Comando por defecto para ejecutar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
