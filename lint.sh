#!/bin/sh

set -e

echo "Formatting..."
echo "--- Ruff ---"
ruff format textfeats
echo "--- isort ---"
isort textfeats

echo "Checking..."
echo "--- Flake8 ---"
flake8 textfeats
echo "--- pylint ---"
pylint textfeats
echo "--- mypy ---"
mypy textfeats
echo "--- Ruff ---"
ruff check textfeats
echo "--- pyright ---"
pyright textfeats
