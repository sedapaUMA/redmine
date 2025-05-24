# Redmine con PostgreSQL en Render

Esta versión usa PostgreSQL en lugar de MySQL, para adaptarse a la base de datos disponible en el plan gratuito de Render.

## Configuración

1. Crea una base de datos PostgreSQL en Render.
2. Apunta las variables de entorno del servicio Redmine a los datos de conexión de esa base.
3. Monta un volumen persistente en /usr/src/redmine/files para guardar los adjuntos.
4. El puerto expuesto es 3000. Render lo detectará automáticamente.

Variables de entorno clave:
- REDMINE_DB_POSTGRES=1
- REDMINE_DB_DATABASE=redmine
- REDMINE_DB_USERNAME=usuario_render
- REDMINE_DB_PASSWORD=contraseña_render
- REDMINE_DB_POSTGRESQL=host_render (p. ej. dpg-xxxxxx.render.com)
