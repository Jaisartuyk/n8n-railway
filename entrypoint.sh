#!/bin/sh

# Extraer los componentes de DATABASE_URL
if [ -n "$DATABASE_URL" ]; then
    # Extraer usuario y contraseña
    DB_USER=$(echo $DATABASE_URL | awk -F[:/@] '{print $4}')
    DB_PASSWORD=$(echo $DATABASE_URL | awk -F[:/@] '{print $5}')
    
    # Extraer host y puerto
    DB_HOST=$(echo $DATABASE_URL | awk -F[:/@] '{print $6}')
    DB_PORT=$(echo $DATABASE_URL | awk -F[:/@] '{print $7}' | awk -F[?] '{print $1}')
    
    # Extraer nombre de la base de datos
    DB_NAME=$(echo $DATABASE_URL | awk -F[/] '{print $4}' | awk -F[?] '{print $1}')

    # Exportar variables para n8n
    export DB_POSTGRESDB_HOST=$DB_HOST
    export DB_POSTGRESDB_PORT=$DB_PORT
    export DB_POSTGRESDB_USER=$DB_USER
    export DB_POSTGRESDB_PASSWORD=$DB_PASSWORD
    export DB_POSTGRESDB_DATABASE=$DB_NAME
fi

exec n8n start
