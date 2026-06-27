#!/bin/bash
# sync-disclaimer.sh
# Sync the disclaimer from docs/includes/ into README.md
# The disclaimer in README.md must be placed between the markers:
#   <!-- BEGIN shared-disclaimer -->
#   ... (replaced)
#   <!-- END shared-disclaimer -->
#
# Usage: bash sync-disclaimer.sh [language-code]
# Default: en (README.md is English-primary)
#
# Adding a new language:
#   1. Create docs/includes/disclaimer.<code>.md
#   2. Create docs/<code>/safety-legal.md
#   3. Add the link text to LINK_TEXTS below

set -euo pipefail

LANG="${1:-en}"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
README="$PROJECT_DIR/README.md"
INCLUDES_DIR="$PROJECT_DIR/docs/includes"

# ----- Language configuration ------------------------------------------------
# Map language codes to the display text of the safety-legal link.
# Add each new language here.
declare -A LINK_TEXTS
LINK_TEXTS[en]="Safety & Legal"
LINK_TEXTS[de]="Sicherheit & Rechtliche Hinweise"

# ----- Auto-detect available languages from disclaimer files -----------------
available_languages() {
  local langs=()
  for f in "$INCLUDES_DIR"/disclaimer.*.md; do
    [ -f "$f" ] || continue
    local base
    base="$(basename "$f")"
    base="${base#disclaimer.}"
    base="${base%.md}"
    langs+=("$base")
  done
  echo "${langs[@]}"
}

AVAILABLE=($(available_languages))

# ----- Resolve disclaimer file -----------------------------------------------
DISCLAIMER_SRC="$INCLUDES_DIR/disclaimer.${LANG}.md"

if [ ! -f "$DISCLAIMER_SRC" ]; then
  echo "❌ Error: disclaimer.${LANG}.md not found in docs/includes/"
  if [ ${#AVAILABLE[@]} -gt 0 ]; then
    echo "   Available languages: ${AVAILABLE[*]}"
  else
    echo "   No disclaimer files found. Create docs/includes/disclaimer.<code>.md"
  fi
  exit 1
fi

# ----- Resolve safety-legal link text ----------------------------------------
LINK_TEXT="${LINK_TEXTS[$LANG]:-}"
if [ -z "$LINK_TEXT" ]; then
  LINK_TEXT="Safety & Legal ($LANG)"
fi
LINK_README="→ [$LINK_TEXT](docs/$LANG/safety-legal.md)"

# ----- Sync ------------------------------------------------------------------
DISCLAIMER_CONTENT=$(cat "$DISCLAIMER_SRC")
TMPFILE=$(mktemp)

awk -v content="$DISCLAIMER_CONTENT" -v link="$LINK_README" '
  /^<!-- BEGIN shared-disclaimer/ {
    print
    print ""
    print content
    print ""
    print link
    in_block = 1
    next
  }
  /^<!-- END shared-disclaimer/ {
    print
    in_block = 0
    next
  }
  !in_block { print }
' "$README" > "$TMPFILE"

mv "$TMPFILE" "$README"
echo "✅ Disclaimer (${LANG}) synced to README.md"