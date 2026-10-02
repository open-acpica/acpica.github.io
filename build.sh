#!/bin/bash
#
# Render the markdown pages into a static site.
#
# Usage: ./build.sh [output directory]   (default: _site)
#
# Requires pandoc 3.1.10 or later (GitHub alert support).
#

set -e

OUT_DIR=${1:-_site}
cd "$(dirname "$0")"

rm -rf "$OUT_DIR"
mkdir -p "$OUT_DIR/assets"
cp assets/*.css "$OUT_DIR/assets"

for md in *.md; do
	[ "$md" = "README.md" ] && continue

	html="$OUT_DIR/${md%.md}.html"
	title=$(sed -n 's/^# //p' "$md" | head -n 1)

	pandoc "$md" \
		--from gfm \
		--to html5 \
		--standalone \
		--template assets/template.html \
		--lua-filter assets/filter.lua \
		--metadata pagetitle="${title:-ACPICA}" \
		--output "$html"
	echo "$md -> $html"
done
