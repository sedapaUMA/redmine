# Redmine en Render

Este proyecto contiene los archivos necesarios para desplegar una instancia básica de Redmine usando Docker en la plataforma Render.

## Despliegue

1. Crea un nuevo Web Service en https://render.com
2. Selecciona este repositorio desde GitHub.
3. Render detectará el Dockerfile automáticamente.
4. Añade las variables de entorno desde `.env.example`.
5. Añade una base de datos (MySQL).
6. Añade un volumen persistente montado en `/usr/src/redmine/files`.

El Redmine estará disponible en la URL pública que Render te proporcione.
