#!/bin/sh
# Sync submodule URLs from .gitmodules and track latest origin/master (_menus_ttms)
git submodule sync --recursive
git submodule update --init --remote --recursive

# Build the Hugo site with optimization
echo "Running Hugo build with minification..."
hugo --gc --minify

echo "✅ Build completed successfully!"
