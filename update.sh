#!/bin/bash
REPO="kdabir/has"
FORMULA_PATH="has.rb"

# Get latest tag from GitHub API
LATEST_TAG=$(curl -s "https://api.github.com/repos/$REPO/releases/latest" | jq -r .tag_name)

# Download tarball and get sha256
TARBALL_URL="https://github.com/$REPO/archive/$LATEST_TAG.tar.gz"
SHA256=$(curl -L "$TARBALL_URL" | shasum -a 256 | awk '{print $1}')


# Detect OS and set sed options
if [[ "$OSTYPE" == "darwin"* ]]; then
  SED_INPLACE=(-i "")
else
  SED_INPLACE=(-i)
fi

# Update formula file
sed "${SED_INPLACE[@]}" "s|url \".*\"|url \"$TARBALL_URL\"|" "$FORMULA_PATH"
sed "${SED_INPLACE[@]}" "s|sha256 \".*\"|sha256 \"$SHA256\"|" "$FORMULA_PATH"