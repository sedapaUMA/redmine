FROM redmine:5.1

# Instala dependencias adicionales si hiciera falta
# RUN apt-get update && apt-get install -y <dependencias>

# Crea directorio de datos persistentes (Render montará aquí el volumen)
VOLUME /usr/src/redmine/files

# Puerto por defecto
EXPOSE 3000
