#!/bin/bash

PROJECT_DIR="$HOME/Developer/truecoder-dev"

echo "🔒 Chiusura sessione truecoder.dev..."
cd "$PROJECT_DIR" || { echo "❌ Cartella non trovata: $PROJECT_DIR"; exit 1; }

echo ""
echo "📄 File modificati:"
git status --short

echo ""
read -p "Messaggio commit (invio per saltare commit): " MSG

if [ -n "$MSG" ]; then
  git add .
  git commit -m "$MSG"
  git push
  echo ""
  echo "✅ Push completato."
else
  echo "⚠️  Nessun commit eseguito."
fi

echo ""
read -p "Note per RIPRENDI-DA-QUI (invio per saltare): " NOTE

if [ -n "$NOTE" ]; then
  DATE=$(date "+%d/%m/%Y %H:%M")
  echo "" >> "$PROJECT_DIR/RIPRENDI-DA-QUI.md"
  echo "## Aggiornamento $DATE" >> "$PROJECT_DIR/RIPRENDI-DA-QUI.md"
  echo "$NOTE" >> "$PROJECT_DIR/RIPRENDI-DA-QUI.md"
  echo "✅ RIPRENDI-DA-QUI.md aggiornato."
fi

echo ""
echo "👋 Sessione chiusa."
