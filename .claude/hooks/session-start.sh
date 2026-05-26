#!/bin/bash
set -euo pipefail

# Only run in remote Claude Code on the web environments
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# No package manifests in this repo — extend this script when dependencies are added.
# Example: npm install, pip install -r requirements.txt, etc.

echo "Session environment ready."
