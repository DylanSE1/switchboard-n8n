# Use a modern Node that n8n is happy with
FROM node:20-alpine

# Install n8n globally
RUN npm install -g n8n

# Default working directory for n8n data
WORKDIR /data

# Render will inject PORT; we’ll pass it through to n8n as N8N_PORT
EXPOSE 10000

# Start n8n, binding to the Render PORT
CMD ["sh", "-c", "N8N_PORT=$PORT n8n"]
