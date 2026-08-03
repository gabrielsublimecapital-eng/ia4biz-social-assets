#!/bin/bash
# render.sh — renderiza todos os slides HTML de um diretório em PNG 1080×1350 (carrossel IG 4:5)
# Uso: qa-lock.sh run bash carrossel/template/render.sh <dir-do-carrossel>
set -euo pipefail

DIR="${1:?uso: render.sh <dir com os slides .html>}"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
[ -x "$CHROME" ] || CHROME="/Applications/Chromium.app/Contents/MacOS/Chromium"

for f in "$DIR"/*.html; do
  out="${f%.html}.png"
  "$CHROME" --headless=new --disable-gpu --hide-scrollbars \
    --window-size=1080,1350 --screenshot="$out" "file://$(cd "$(dirname "$f")" && pwd)/$(basename "$f")" 2>/dev/null
  echo "ok: $(basename "$out")"
done
