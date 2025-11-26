FROM node:18-alpine

# Install n8n globally
RUN npm install -g n8n

# n8n stores data here by default
WORKDIR /data

# Render sets PORT (default 10000). We tell n8n to listen on that. :contentReference[oaicite:0]{index=0}
EXPOSE 10000

# Start n8n on the port Render gives us
CMD ["sh", "-c", "n8n start --port $PORT --host 0.0.0.0"]
