#!/bin/bash
# Regenera js/focuscrm.js a partir de js/storage.js + js/app.js (un solo <script> en index.html para file://).
set -e
ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT/js"
{
  printf '%s\n' '/**' ' * FocusCRM — bundle (generado con merge-focuscrm.sh tras editar storage.js o app.js).' ' * Secciones: persistencia · UI.' ' */' ''
  cat storage.js
  printf '\n%s\n' '/* ----- UI ----- */'
  cat app.js
} > focuscrm.js
echo "Listo: js/focuscrm.js actualizado ($(wc -l < focuscrm.js | tr -d ' ') líneas)."
