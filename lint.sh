#!/bin/sh

set -e

echo "Formatting..."
echo "--- Ruff ---"
ruff format textfeatures
echo "--- isort ---"
isort textfeatures

echo "Checking..."
echo "--- Flake8 ---"
flake8 textfeatures
echo "--- pylint ---"
pylint textfeatures
echo "--- mypy ---"
mypy textfeatures
echo "--- Ruff ---"
ruff check textfeatures
echo "--- pyright ---"
pyright textfeatures
