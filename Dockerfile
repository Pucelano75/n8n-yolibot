# Usa la imagen oficial de n8n
FROM n8nio/n8n:latest

# Variables de entorno básicas (puedes agregarlas en Render también)
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV N8N_HOST=0.0.0.0
ENV GENERIC_TIMEZONE=Europe/Madrid

# Instala dependencias adicionales si necesitas nodos extra
# RUN npm install --global @n8n/nodes-base @n8n/nodes-langchain

# Expone el puerto de n8n
EXPOSE 5678

# Arranca n8n
CMD ["n8n", "start", "--tunnel"]

