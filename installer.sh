#!/bin/bash
curl -s -o pyproject.toml https://raw.githubusercontent.com/gboeing/ppd534/refs/heads/2026/pyproject.toml
uv pip install -q -r pyproject.toml
uv pip check
