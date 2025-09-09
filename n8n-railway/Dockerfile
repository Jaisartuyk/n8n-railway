# Imagen base oficial de n8n
FROM n8nio/n8n:latest

# Establecer directorio de trabajo
WORKDIR /home/node

# Crear volumen para persistencia de datos
VOLUME ["/home/node/.n8n"]

# Exponer el puerto por defecto
EXPOSE 5678

# Comando de inicio
CMD ["n8n"]
