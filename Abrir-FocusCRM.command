#!/bin/bash
# Doble clic en Finder: abre index.html en el navegador predeterminado (Safari, Chrome, etc.)
cd "$(dirname "$0")"
open "$(pwd)/index.html"
