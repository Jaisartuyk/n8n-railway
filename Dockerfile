# Imagen oficial de n8n
FROM n8nio/n8n:1.121.0

WORKDIR /home/node

# Exponer el puerto
EXPOSE 5678

# Variables recomendadas
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROXY_HOPS=1

# Conexión a PostgreSQL (Railway)
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_SSL=true
ENV DATABASE_URL=$DATABASE_URL
ENV DATABASE_PUBLIC_URL=$DATABASE_PUBLIC_URL

# Autenticación básica (opcional)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=tu_contraseña_segura

# Copiar y ejecutar script de inicio
COPY --chmod=755 entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
