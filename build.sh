#!/usr/bin/env bash
set -euo pipefail

BASE_URL="${1:-/}"

export GEM_HOME="$HOME/.gems"
export PATH="$GEM_HOME/bin:$PATH"

if ! command -v jekyll >/dev/null; then
  echo "==> Installing Jekyll"
  gem install --no-document jekyll >/dev/null 2>&1
fi

echo "==> Building Jekyll site (baseurl=${BASE_URL})"
JEKYLL_ENV=production jekyll build --baseurl "$BASE_URL" --quiet
