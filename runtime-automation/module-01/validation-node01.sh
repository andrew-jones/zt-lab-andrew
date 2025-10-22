#!/bin/bash

echo "[runtime-automation][module-01][validation] node01" >> /tmp/progress.log

if [ ! -f /tmp/file.txt ]; then
fail_validation - <<'EOF'
**Critical**: File does not exist.

Details:
- Expected file: `/tmp/file.txt` to exist
EOF
fi