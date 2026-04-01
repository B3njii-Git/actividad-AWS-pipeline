# Utiliza la imagen oficial de nginx:alpine como base
FROM nginx:alpine

# Copia el archivo index.html al directorio de contenido estático de nginx
COPY index.html /usr/share/nginx/html/index.html