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

# Añadir configuración de base de datos
COPY config/database.yml /usr/src/redmine/config/database.yml

# Crear volumen para archivos persistentes
VOLUME /usr/src/redmine/files

# Exponer puerto y lanzar el servidor
EXPOSE 3000
CMD ["bash", "-c", "RAILS_ENV=production bundle exec rails server -b 0.0.0.0 -p 3000"]
