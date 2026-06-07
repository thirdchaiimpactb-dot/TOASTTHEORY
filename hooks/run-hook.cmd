#!/usr/bin/env bash
# Dispatch to the named hook script
HOOK_NAME="$1"
HOOKS_DIR="$(cd "$(dirname "$0")" && pwd)"
HOOK_SCRIPT="$HOOKS_DIR/$HOOK_NAME"

if [ -f "$HOOK_SCRIPT" ]; then
  exec "$HOOK_SCRIPT" "${@:2}"
fi
