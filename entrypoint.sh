#!/bin/sh
set -e

# If runtime dir doesn't exist or is empty, copy pre-built one from image
if [ ! -d "/root/.9router/runtime/node_modules" ]; then
  echo "[entrypoint] Copying pre-built runtime into volume..."
  mkdir -p /root/.9router/runtime
  cp -r /opt/9router-runtime/node_modules /root/.9router/runtime/
fi

# Auto-press Enter to select Web UI (already highlighted by default)
sleep 1 && printf '\n' > /proc/1/fd/0 &

exec 9router --host 0.0.0.0
