#!/bin/bash
# Cài add-in HTEdu cho Word và PowerPoint trên macOS
set -e
URL="https://thnthynel-sketch.github.io/htedu/manifest.xml"
TMP="$(mktemp)"; curl -fsSL "$URL" -o "$TMP"
for APP in com.microsoft.Word com.microsoft.Powerpoint; do
  D="$HOME/Library/Containers/$APP/Data/Documents/wef"
  mkdir -p "$D" && cp "$TMP" "$D/htedu.manifest.xml"
done
rm -f "$TMP"
echo "Đã cài HTEdu. Thoát hẳn Word/PowerPoint (Cmd+Q) rồi mở lại: Chèn → Phần bổ trợ → Phần bổ trợ của tôi → HTEdu."
