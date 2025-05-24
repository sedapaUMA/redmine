FROM redmine:5.1

# Instala adaptador PostgreSQL
RUN apt-get update && apt-get install -y libpq-dev \
    && gem install pg

# Crea volumen para archivos persistentes
VOLUME /usr/src/redmine/files

EXPOSE 3000
