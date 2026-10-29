#!/bin/bash
# Publish edited skills to GitHub.
# Rebuilds the .skill file of every changed skill, bumps the plugin version,
# then commits and uploads everything. Safe to run when nothing changed.
set -e
cd "$(dirname "$0")"
SKILLS=plugins/econ-theory/skills
PLUGIN=plugins/econ-theory/.claude-plugin/plugin.json

if [ -z "$(git status --porcelain)" ]; then
  echo "Nothing to publish: no changes since the last upload."
  exit 0
fi

# Rebuild the .skill file for each skill that changed or has no .skill file yet
changed=()
for dir in "$SKILLS"/*/; do
  name=$(basename "$dir")
  if [ ! -f "skill-files/$name.skill" ] || [ -n "$(git status --porcelain -- "$SKILLS/$name")" ]; then
    rm -f "skill-files/$name.skill"
    (cd "$SKILLS" && zip -qrX "../../../skill-files/$name.skill" "$name" -x "*.DS_Store")
    changed+=("$name")
  fi
done

# Bump the patch version (1.0.0 -> 1.0.1) so installed copies see an update
version=$(sed -n 's/.*"version": "\([0-9.]*\)".*/\1/p' "$PLUGIN")
new_version=$(echo "$version" | awk -F. '{print $1"."$2"."$3+1}')
sed -i '' "s/\"version\": \"$version\"/\"version\": \"$new_version\"/" "$PLUGIN"

message="Update skills to $new_version"
[ ${#changed[@]} -gt 0 ] && message="$message: ${changed[*]}"

git add -A
git commit -q -m "$message"
git push -q
echo "Published version $new_version to GitHub."
[ ${#changed[@]} -gt 0 ] && echo "Updated skills: ${changed[*]}"
