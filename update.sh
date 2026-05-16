#!/bin/bash
cd "$(dirname "$0")"

# Build image baru dulu tanpa matikan yang lama
sudo docker compose build --no-cache

# Recreate container dengan image baru (downtime sangat singkat ~1 detik)
sudo docker compose up -d --force-recreate

echo "✅ 9router updated!"
sudo docker exec -it 9router cat /root/.9router/package.json | grep '"version"'
