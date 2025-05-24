FROM redmine:5.1

# Instala herramientas de compilación + librerías PostgreSQL
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        pkg-config \
        libpq-dev && \
    gem install pg && \
    apt-get remove -y build-essential pkg-config && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Crea volumen para persistencia de archivos
VOLUME /usr/src/redmine/files

EXPOSE 3000
