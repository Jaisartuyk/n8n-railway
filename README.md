# 🚀 n8n en Railway (Gratis)

Este repo permite desplegar **n8n** en Railway usando Docker.

## ⚡ Pasos

1. Clona este repositorio o haz un fork.
2. Conecta el repo en [Railway.app](https://railway.app).
3. Railway detectará el `Dockerfile` y desplegará automáticamente.

## 🔑 Variables de Entorno (Railway → Variables)

```
N8N_HOST=0.0.0.0
N8N_PORT=5678
N8N_PROTOCOL=https
WEBHOOK_URL=https://<tu-subdominio>.up.railway.app/
```

> Cambia `<tu-subdominio>` por el dominio que te da Railway.

## 🌍 Acceso

Cuando termine el deploy, abre:

```
https://<tu-subdominio>.up.railway.app
```

Y ya tendrás n8n corriendo gratis 🚀
