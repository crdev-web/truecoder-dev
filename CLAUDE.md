# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

Static portfolio/landing page for the freelance web developer "truecoder". No build tools, no framework, no dependencies — pure HTML, CSS, and vanilla JS. Content is in Italian.

## Running locally

```bash
python3 -m http.server 8000
# then open http://localhost:8000
```

## Architecture

Single-page site with one HTML file, one stylesheet, and one JS file (currently a placeholder).

- `index.html` — 7 semantic sections: hero, servizi, portfolio, stack, contatti. Imports Google Fonts (DM Sans, DM Mono).
- `css/style.css` — CSS custom properties, dark theme (`--bg: #111113`, `--accent: #8b9cf4`), container max-width 1200px, responsive nav breakpoint at 768px.
- `js/main.js` — empty placeholder; JS for nav toggle and interactions goes here.
- `assets/` — empty; images/media go here.

## Developer

Il developer si chiama Ciro.

## Metodo di lavoro

- Prima di scrivere qualsiasi codice, spiega sempre il *perché* della soluzione proposta.
- Fai domande di comprensione prima di ogni blocco di lavoro — mai assumere, mai procedere al buio.
- Niente vibe coding: ogni scelta deve avere una ragione tecnica esplicita.

## Conventions

- Mobile-first sempre: scrivi gli stili base per mobile, poi estendi con media query per schermi più grandi.
- Commit in italiano con prefissi `feat:`, `style:`, `fix:`.
- Dark color scheme con accent `#8b9cf4` — mantienilo coerente su ogni nuovo elemento UI.
- Nav breakpoint desktop a `768px`.
