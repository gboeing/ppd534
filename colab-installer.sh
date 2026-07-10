#!/bin/bash
set -euo pipefail

URL="https://raw.githubusercontent.com/gboeing/ppd534/refs/heads/2026/pyproject.toml"

if [[ -n "${COLAB_RELEASE_TAG:-}" ]]; then
    echo "Running in Google Colab."
    curl -LsSf --output pyproject.toml "$URL"
    which uv
    uv self version
    uv pip install -q -r pyproject.toml
    uv pip check
    python -c "import osmnx"
    echo "Finished."
else
    echo "Not running in Google Colab. No action taken."
fi
