#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

echo "Removing contents of docs folder..."
rm -rf docs/*

echo "Removing contents of docs folder..."
rm -rf _build/*

echo "Building the Jupyter Book..."
jb build --all .

echo "Copying built HTML to docs folder..."
cp -r _build/html/* docs/

echo "Adding .nojekyll file to docs folder..."
touch docs/.nojekyll

echo "Opening the book in the browser..."
open docs/index.html