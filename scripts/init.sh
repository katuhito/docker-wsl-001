#!/usr/bin/env bash
set -euo pipefail

echo "[init] Checking Docker..."
docker compose version >/dev/null

echo "[init] Building image..."
docker compose build

echo "[init] Applying migrations..."
docker compose run --rm web python manage.py migrate

echo "[init] Done."
echo "Next: make up  (open http://localhost:8000/)"
