# ==========================
# Dockerfile n8n optimizado para Render
# ==========================

# Imagen base fija de n8n
FROM n8nio/n8n:stable

# --------------------------
# Variables de entorno básicas
# --------------------------
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV N8N_HOST=0.0.0.0
ENV GENERIC_TIMEZONE=Europe/Madrid
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# --------------------------
# Instalar nodos extra opcionales
# --------------------------
# Descomenta esta línea si quieres usar nodos LangChain
 RUN npm install --global @n8n/nodes-langchain --no-fund --no-audit --unsafe-perm

# --------------------------
# Exponer puerto
# --------------------------
EXPOSE 5678

# --------------------------
# Arranque de n8n en producción
# --------------------------
CMD ["n8n", "start"]
