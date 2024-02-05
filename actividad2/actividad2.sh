#!/bin/bash
GITHUB_USER="HugoGG202004807"


URL="https://api.github.com/users/${GITHUB_USER}"
INFORMACION=$(curl -s $URL)

USER_ID=$(echo $INFORMACION | jq -r '.id')
CREATED_AT=$(echo $INFORMACION | jq -r '.created_at')

echo "Hola ${GITHUB_USER}.  ID: ${USER_ID}. La cuenta fue creada el: ${CREATED_AT}."

# Crear un log file en /tmp/<fecha>/saludos.log
RUTA="/tmp/$(date +'%Y%m%d')"
mkdir -p $RUTA
LOG_FILE="${RUTA}/saludos.log"
echo "Hola ${GITHUB_USER}. User ID: ${USER_ID}. Cuenta fue creada el: ${CREATED_AT}." >> "${LOG_FILE}"

# ruta del script
SCRIPT_PATH="$(realpath $0)"

# cronjob para ejecutar el script cada 5 minutos
CRON_CMD="*/5 * * * * $SCRIPT_PATH"
(crontab -l 2>/dev/null; echo "$CRON_CMD") | crontab -
