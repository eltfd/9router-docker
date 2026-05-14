# Use a lightweight Node.js base image
FROM node:20-alpine

# Install build tools needed for native addons (better-sqlite3)
RUN apk add --no-cache python3 make g++

# Install 9router globally
RUN npm install -g 9router

# Pre-install better-sqlite3 into the runtime dir 9router expects
RUN mkdir -p /root/.9router/runtime && \
    cd /root/.9router/runtime && \
    npm install better-sqlite3@12.6.2 --no-audit --no-fund --prefer-online

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# 9Router default port
EXPOSE 20128

# Start the router
# We use --host 0.0.0.0 to ensure it's reachable outside the container
# CMD ["9router", "--host", "0.0.0.0"]

ENTRYPOINT ["/entrypoint.sh"]
