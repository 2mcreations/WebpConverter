# 🖼️ webpconvert

Strumento Python e CLI per convertire immagini (`.jpg`, `.jpeg`, `.png`, `.webp`) in formato WebP, con funzionalità avanzate AI per **rimozione sfondo** e **generazione automatica di metadati SEO e rinominazione file**.

> ✅ Compatibile con macOS e Linux  
> 🚀 Salva tutti i file elaborati in una cartella `webp/`  
> 🤖 Integrazione AI Vision per rinominazione file SEO (titolo max 50 caratteri) e descrizione sintetica SEO/ALT text (max 160 caratteri) in metadati EXIF/XMP  
> 🪄 Rimozione sfondo automatica tramite AI locale (`rembg`)  

---

## 🛠️ Requisiti

- **Python 3**
- **cwebp** (`brew install webp` - installato automaticamente se mancante)
- **exiftool** (`brew install exiftool` - necessario per i metadati con l'opzione `-a`)

### Dipendenze opzionali per funzionalità AI

1. **Per la rimozione dello sfondo (`-b / --bg`):**

   ```bash
   pipx install "rembg[cpu,cli]"
   ```

2. **Per l'analisi AI SEO e rinominazione (`-a / --ai`):**

   Sfrutta un endpoint VLM compatibile OpenAI/Anthropic (es. OmniRoute o OpenRouter locale su `http://localhost:20128`).
   Se l'endpoint richiede autenticazione:

   ```bash
   export OPENAI_API_KEY="sk-tua-chiave-api"
   ```

---

## 💡 Utilizzo

Esegui il comando dalla cartella contenente le immagini (o specifica il percorso della cartella):

```bash
webpconvert [directory] [opzioni]
```

### Opzioni disponibili

| Flag | Descrizione |
| --- | --- |
| `-a`, `--ai` | Analizza l'immagine con AI: genera titolo SEO (max 50 caratteri per il nome file) e descrizione sintetica SEO (max 160 caratteri inseriti nei metadati EXIF/XMP `Title` e `Description`). |
| `-b`, `--bg` | Rimuove lo sfondo dell'immagine prima della conversione in WebP tramite AI locale. |

---

## 🚀 Esempi di comando

### 1. Conversione standard in WebP

```bash
webpconvert
```

Converte tutte le immagini `.jpg`, `.jpeg`, `.png` presenti nella cartella corrente salvandole in `webp/`.

### 2. Conversione con rimozione sfondo

```bash
webpconvert -b
```

### 3. Conversione con analisi AI SEO (Rinominazione + Metadati EXIF)

```bash
webpconvert -a
```

### 4. Sequenza completa: Sfondo + AI SEO + WebP

```bash
webpconvert -a -b
```

---

## 🤝 Licenza

MIT – Puoi usarlo, modificarlo e distribuirlo liberamente.
