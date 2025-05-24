FROM redmine:5.1

# Instala dependencias necesarias para PostgreSQL
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

# Crea volumen para archivos persistentes
VOLUME /usr/src/redmine/files

# Expone el puerto que usará el servidor
EXPOSE 3000

# Arranca el servidor de Redmine
CMD ["rails", "server", "-b", "0.0.0.0"]
