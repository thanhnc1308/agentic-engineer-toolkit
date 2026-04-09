#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

CODEX_HOME="${HOME}/.codex"
WORKSPACE_DIR="${REPO_ROOT}/.workspace"
SKILLS_DIR="${WORKSPACE_DIR}/skills"
COMMANDS_DIR="${WORKSPACE_DIR}/commands"
AGENTS_DIR="${WORKSPACE_DIR}/agents"

mkdir -p "$CODEX_HOME"
ln -sfn "$AGENTS_DIR" "$CODEX_HOME/agents"

mkdir -p "$CODEX_HOME/skills"

for dir in "$SKILLS_DIR"/*/; do
  [ -d "$dir" ] || continue
  ln -sfn "$dir" "$CODEX_HOME/skills/$(basename "${dir%/}")"
done

for dir in "$COMMANDS_DIR"/*/; do
  [ -d "$dir" ] || continue
  ln -sfn "$dir" "$CODEX_HOME/skills/$(basename "${dir%/}")"
done

echo "Codex workspace linked:"
echo "  agents -> $AGENTS_DIR"
echo "  skills -> $SKILLS_DIR (+ command skill directories)"
