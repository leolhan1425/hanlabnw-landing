#!/usr/bin/env bash
set -euo pipefail

VPS="root@89.167.19.159"
REMOTE_DIR="/opt/hanlabnw-landing"

echo "==> Deploying landing page to $VPS:$REMOTE_DIR"
ssh "$VPS" "mkdir -p $REMOTE_DIR"
rsync -avz --delete index.html "$VPS:$REMOTE_DIR/"
echo "==> Done. Site served by Caddy at hanlabnw.com"
