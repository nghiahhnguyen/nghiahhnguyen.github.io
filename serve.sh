#!/bin/bash
# Local development server for al-folio site
# Usage: ./serve.sh [port]

PORT="${1:-4000}"
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
SITE_LINK="/tmp/al-folio-site"

# Symlink to avoid OneDrive path issues with native gem compilation
ln -sfn "$REPO_DIR" "$SITE_LINK"

cd "$SITE_LINK" || exit 1
PATH="/opt/homebrew/opt/ruby@3.3/bin:/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH

echo "Serving at http://localhost:$PORT/"
bundle exec jekyll serve --port "$PORT"
