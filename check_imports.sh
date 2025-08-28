#!/bin/bash
set -e

echo "🔍 Checking for case-sensitive filename issues in Dart files..."

# 1. دور على أي ملفات Dart فيها Capital letters
CAPITAL_FILES=$(git ls-files | grep '\.dart' | grep '[A-Z]' || true)

if [ ! -z "$CAPITAL_FILES" ]; then
  echo "❌ Found Dart files with uppercase letters:"
  echo "$CAPITAL_FILES"
  echo "👉 Rename them using: git mv OldName.dart old_name.dart"
  exit 1
else
  echo "✅ No Dart files with uppercase letters."
fi

# 2. دور على كل import وتأكد إن الملف موجود
echo "🔍 Checking for broken imports..."

ERRORS=0
for FILE in $(git ls-files '*.dart'); do
  IMPORTS=$(grep -oP "(?<=import 'package:note_app/).*\.dart" "$FILE" || true)
  for IMPORT in $IMPORTS; do
    if [ ! -f "lib/$IMPORT" ]; then
      echo "❌ Broken import in $FILE → lib/$IMPORT not found"
      ERRORS=1
    fi
  done
done

if [ $ERRORS -eq 0 ]; then
  echo "✅ All imports are valid."
else
  echo "⚠️ Found broken imports. Please fix them."
  exit 1
fi

echo "🎉 Checks passed successfully!"
