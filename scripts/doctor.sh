#!/usr/bin/env bash
set -euo pipefail

echo "=== Host ==="
pwd
ls -la | sed -n '1,30p'

echo
echo "=== Docker ==="
docker version
docker compose version

echo
echo "=== Docker info (head) ==="
docker info | sed -n '1,80p' || true

echo
echo "=== Container /app check ==="
docker compose run --rm web sh -lc 'pwd; ls -la /app | sed -n "1,60p"'

echo
echo "=== Django check ==="
docker compose run --rm web python -c "import django; print('Django', django.get_version())"
