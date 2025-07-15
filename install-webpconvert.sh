#!/bin/bash

# URL del file webpconvert
SCRIPT_URL="https://raw.githubusercontent.com/2mcreations/WebpConverter/refs/heads/main/webpconvert"

# Destinazione
TEMP="/tmp/webpconvert"
DEST="/usr/local/bin/webpconvert"

echo "🔽 Scaricamento di webpconvert da:"
echo "$SCRIPT_URL"

# Scarica con curl o wget
if command -v curl >/dev/null 2>&1; then
  sudo curl -fsSL "$SCRIPT_URL" -o "$TEMP"
elif command -v wget >/dev/null 2>&1; then
  sudo wget -q "$SCRIPT_URL" -O "$TEMP"
else
  echo "❌ Né curl né wget trovati. Installane uno per continuare."
  exit 1
fi

sudo mv "$TEMP" "$DEST"
sudo chmod +x "$DEST"

echo "✅ Installato con successo in: $DEST"
echo "ℹ️  Ora puoi usare il comando:"
echo "   webpconvert ."
