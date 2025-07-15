#!/bin/bash

# URL del file webpconvert
SCRIPT_URL="https://raw.githubusercontent.com/2mcreations/WebpConverter/refs/heads/main/webpconvert"

# Destinazione
DEST="/usr/local/bin/webpconvert"

echo "🔽 Scaricamento di webpconvert da:"
echo "$SCRIPT_URL"

# Scarica con curl o wget
if command -v curl >/dev/null 2>&1; then
  curl -fsSL "$SCRIPT_URL" -o "$DEST"
elif command -v wget >/dev/null 2>&1; then
  wget -q "$SCRIPT_URL" -O "$DEST"
else
  echo "❌ Né curl né wget trovati. Installane uno per continuare."
  exit 1
fi

# Rende eseguibile
chmod +x "$DEST"

echo "✅ Installato con successo in: $DEST"
echo "ℹ️  Ora puoi usare il comando:"
echo "   webpconvert ."
