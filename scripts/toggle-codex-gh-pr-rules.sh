#!/usr/bin/env bash
set -euo pipefail

RULES_FILE="${HOME}/.codex/rules/default.rules"
RULE_DIR="$(dirname "${RULES_FILE}")"
RULE_1='prefix_rule(pattern=["gh", "pr", "diff"], decision="allow")'
RULE_2='prefix_rule(pattern=["gh", "pr", "view"], decision="allow")'

usage() {
  cat <<'EOF'
Usage: ./scripts/toggle-codex-gh-pr-rules.sh <enable|disable|status|toggle>

Commands:
  enable   Add allow rules for `gh pr diff` and `gh pr view`
  disable  Remove allow rules for `gh pr diff` and `gh pr view`
  status   Show whether each rule is currently present
  toggle   Enable if missing, otherwise disable
EOF
}

ensure_rules_file() {
  mkdir -p "${RULE_DIR}"
  touch "${RULES_FILE}"
}

has_rule() {
  local rule="$1"
  grep -Fqx "${rule}" "${RULES_FILE}"
}

enable_rules() {
  ensure_rules_file
  if ! has_rule "${RULE_1}"; then
    printf '%s\n' "${RULE_1}" >> "${RULES_FILE}"
  fi
  if ! has_rule "${RULE_2}"; then
    printf '%s\n' "${RULE_2}" >> "${RULES_FILE}"
  fi
  echo "Enabled: gh pr diff/view allow rules in ${RULES_FILE}"
}

disable_rules() {
  ensure_rules_file
  local tmp_file
  tmp_file="$(mktemp)"
  grep -Fvx "${RULE_1}" "${RULES_FILE}" | grep -Fvx "${RULE_2}" > "${tmp_file}" || true
  mv "${tmp_file}" "${RULES_FILE}"
  echo "Disabled: gh pr diff/view allow rules removed from ${RULES_FILE}"
}

status_rules() {
  ensure_rules_file
  if has_rule "${RULE_1}"; then
    echo "[present] ${RULE_1}"
  else
    echo "[missing] ${RULE_1}"
  fi

  if has_rule "${RULE_2}"; then
    echo "[present] ${RULE_2}"
  else
    echo "[missing] ${RULE_2}"
  fi
}

ACTION="${1:-status}"
case "${ACTION}" in
  enable)
    enable_rules
    ;;
  disable)
    disable_rules
    ;;
  status)
    status_rules
    ;;
  toggle)
    ensure_rules_file
    if has_rule "${RULE_1}" && has_rule "${RULE_2}"; then
      disable_rules
    else
      enable_rules
    fi
    ;;
  *)
    usage
    exit 1
    ;;
esac
