# Imagen oficial de n8n
# Imagen oficial de n8n
FROM n8nio/n8n:latest

WORKDIR /home/node

# Exponer el puerto
EXPOSE 5678

# Variables recomendadas
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# Conexión a PostgreSQL (Railway)
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_CONNECTION_URL=postgresql://postgres:vJxAYmyTgpwmgpXkAppgShgoyjTctags@switchyard.proxy.rlwy.net:30512/railway

# Autenticación básica (opcional)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=tu_contraseña_segura

# Comando de inicio
ENTRYPOINT ["n8n", "start"]
