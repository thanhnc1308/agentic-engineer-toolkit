#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

ln -sfn "$REPO_ROOT/.workspace" "$REPO_ROOT/.claude"

echo "Claude Code workspace linked:"
echo "  .claude -> $REPO_ROOT/.workspace"
