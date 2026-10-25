FROM nginx:alpine

# Elimina la página por defecto de nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia tu configuración
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copia el build (ajusta la ruta a la carpeta que tiene el index.html)
COPY / /usr/share/nginx/html/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]