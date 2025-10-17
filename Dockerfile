# Imagen oficial de n8n
FROM n8nio/n8n:latest

WORKDIR /home/node

# Exponer el puerto
EXPOSE 5678

# Variables recomendadas
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV DATABASE_PUBLIC_URL=postgresql://postgres:vJxAYmyTgpwmgpXkAppgShgoyjTctags@switchyard.proxy.rlwy.net:30512/railway

# Comando de inicio
ENTRYPOINT ["n8n", "start"]
