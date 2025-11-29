# Base Node.js
FROM node:20-bullseye

# Instala n8n globalmente
RUN npm install -g n8n

# Variables de entorno
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV N8N_HOST=0.0.0.0
ENV GENERIC_TIMEZONE=Europe/Madrid
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Puerto expuesto
EXPOSE 5678

# Arranque
CMD ["n8n", "start"]
