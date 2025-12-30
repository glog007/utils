#!/usr/bin/env bash
set -euo pipefail

# Usage: ./serve.sh [PORT] [DIRECTORY]
# Example: ./serve.sh 8000 .
PORT=${1:-8000}
DIR=${2:-.}

echo "Serving ${DIR} on 0.0.0.0:${PORT} (binds to all interfaces)"
python3 -m http.server "${PORT}" --bind 0.0.0.0 --directory "${DIR}"