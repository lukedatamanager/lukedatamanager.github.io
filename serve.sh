#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

HOST="${HOST:-127.0.0.1}"
PORT="${PORT:-4000}"
WATCH="${WATCH:-0}"
LIVERELOAD="${LIVERELOAD:-0}"

if ! command -v bundle >/dev/null 2>&1; then
  echo "Error: Bundler is not installed. Install it with: gem install bundler" >&2
  exit 1
fi

if [[ ! -d "vendor/bundle" ]]; then
  echo "Installing Ruby gems (first run only)..."
  bundle config set --local path 'vendor/bundle'
  bundle install
fi

SERVE_ARGS=(--host "$HOST" --port "$PORT")

# Jekyll 3.9 + current Ruby can fail in watch mode on Linux; keep it off by default.
if [[ "$WATCH" == "1" ]]; then
  if [[ "$LIVERELOAD" == "1" ]]; then
    SERVE_ARGS+=(--livereload)
  fi
else
  SERVE_ARGS+=(--no-watch)
fi

echo "Launching site at http://${HOST}:${PORT}"
exec bundle exec jekyll serve "${SERVE_ARGS[@]}"