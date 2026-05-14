#!/bin/bash
cd "$(dirname "$0")"
sudo docker compose pull
sudo docker compose up -d
echo "✅ 9router updated and running!"
