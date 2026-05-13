# Use a lightweight Node.js base image
FROM node:20-alpine

# Install 9router globally
RUN npm install -g 9router

# 9Router default port
EXPOSE 20128

# Start the router
# We use --host 0.0.0.0 to ensure it's reachable outside the container
CMD ["9router", "--host", "0.0.0.0"]