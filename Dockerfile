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

# Añade configuración de base de datos
COPY config/database.yml /usr/src/redmine/config/database.yml

# Ejecuta migraciones y finaliza
CMD ["bash", "-c", "RAILS_ENV=production bundle exec rails db:migrate"]
