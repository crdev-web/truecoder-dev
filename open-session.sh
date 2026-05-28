#!/bin/bash

PROJECT_DIR="$HOME/Developer/truecoder-dev"

echo "🚀 Apertura sessione truecoder.dev..."
cd "$PROJECT_DIR" || { echo "❌ Cartella non trovata: $PROJECT_DIR"; exit 1; }

echo ""
echo "📥 Sync con GitHub..."
git pull

echo ""
echo "📌 Ultimo commit:"
git log --oneline -3

echo ""
echo "📄 Stato file modificati:"
git status --short

echo ""
echo "✅ Pronto. Buona sessione."
code .
