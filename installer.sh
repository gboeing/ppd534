#!/bin/bash
set -euo pipefail

URL="https://raw.githubusercontent.com/gboeing/ppd534/refs/heads/2026/pyproject.toml"

if [[ -n "$COLAB_RELEASE_TAG" ]]; then
    echo "Running in Google Colab"
    curl --fail --silent --show-error --output pyproject.toml "$URL"
    which uv
    uv version
    uv pip install -q -r pyproject.toml
    uv pip check
else
    echo "Not running in Google Colab"
fi
