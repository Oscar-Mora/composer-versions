FROM composer:2.2
# Aquí copio lo que tengo en los composer.json en  local al container en caso de haber cambios 
COPY ["/app/composer.json","/app/composer.lock" "/app"]
# me paro en el container en la carpeta donde está el composer .json
WORKDIR /app
# ejecuto la instalacion de vendors desde un composer version" 2.2"
RUN composer install
# Entonces despues del manejo de independecias copiamos los demás archivos al container, si no hay diferencia en los composer.json no los va a copiar
COPY [".", "/app"]