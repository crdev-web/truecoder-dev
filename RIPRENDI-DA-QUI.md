# RIPRENDI DA QUI — truecoder.dev — aggiornato 15/05/2026 (sera)

Incolla questo file all'inizio della nuova chat (o caricalo nel Project) per ripartire senza perdere il filo.

---

## DOVE SIAMO ESATTAMENTE

Toggle lingua IT/EN in `js/main.js`: **codice COMPLETO**, manca solo il TEST in browser e una rifinitura.
Metodo: Claude spiega UN concetto alla volta, Ciro scrive a mano e ragiona. NON scrivere blocchi completi al posto suo.

HTML completo (tutti i data-it/data-en). CSS completo.

### Stato attuale di `js/main.js` (COMPLETO, con UNA correzione da verificare)

```javascript
const bottoneMenu = document.querySelector(".nav-toggle");
const listaLink = document.querySelector(".nav-links");
bottoneMenu.addEventListener("click", function () {
  listaLink.classList.toggle("active");
});

// === TOGGLE LINGUA ===
const elementiTraducibili = document.querySelectorAll("[data-it]");
const bottoniLingua = document.querySelectorAll(".nav-lang, .footer-lang");
let linguaAttuale = "it";

function cambiaLingua() {
  elementiTraducibili.forEach(function (elemento) {
    elemento.textContent = elemento.getAttribute("data-" + linguaAttuale);
  });
}

bottoniLingua.forEach(function (bottone) {
  bottone.addEventListener("click", function () {
    if (linguaAttuale === "it") {
      linguaAttuale = "en";
    } else {
      linguaAttuale = "it";
    }
    cambiaLingua();
  });
});
```

ATTENZIONE: Ciro aveva scritto `"clik"` (manca una c) nell'addEventListener. Verificare che abbia corretto in `"click"`. Quel typo NON dà errore in console ma rende il bottone muto.

---

## PROSSIMO STEP IMMEDIATO

1. **TEST in browser**: aprire con Live Server, F12, cliccare il bottone lingua, verificare che TUTTI i testi cambino IT->EN->IT. Testare sia bottone nav (visibile da desktop) sia footer (visibile mobile). Ricorda: .nav-lang ha display:none su mobile, .footer-lang sempre visibile.

2. **RIFINITURA — testo del bottone**: il bottone lingua mostra sempre lo stesso testo. Sarebbe meglio che indicasse la lingua. Da decidere con Ciro come gestirlo (es. il bottone mostra la lingua verso cui switcha, o quella attiva). Concetto: dentro la callback del click si può aggiornare anche bottone.textContent. Ragionare con lui, non imporre.

3. Commit: `feat: completa toggle lingua IT/EN`
4. Poi: refining visivo (vedi TODO sotto) -> deploy Netlify/Vercel

### TODO visivi rimasti (dal vecchio CLAUDE.md)

- #contatti padding-bottom 48px
- LinkedIn href="#" da aggiornare
- Cookie/Privacy href="#" da collegare a Iubenda
- creare email hello@truecoder.dev su Namecheap

---

## INFRASTRUTTURA DA COMPLETARE (rimandata, era l'obiettivo dei "2 giorni")

Non ancora fatta perché il toggle ha preso tutto il tempo. Da fare:

- Creare Project Claude "truecoder.dev" con Instructions + files
- Spezzare il CLAUDE.md monolitico in: Instructions (regole/stile/ruolo) + file separati (stato, errori, convenzioni-css, codice)
- Script close-session.sh / open-session.sh (commit+push+update contesto semi-automatico)
- Cowork: NON usare ora, ROI basso, rimandato

---

## METODO DIDATTICO — REGOLE (non derogare)

1. UN concetto nuovo alla volta. Mai 4 insieme.
2. Concetto nuovo -> mini-esempio FUORI dal progetto -> controllo comprensione -> applicazione.
3. Prima SPIEGA, poi chiedi. Niente domande socratiche su cose mai mostrate.
4. Esempi sempre COMPLETI, mai frammenti con "..." monchi.
5. Ciro scrive a mano, ma ha sempre un riferimento chiaro.
6. "Non ho capito" -> si ricomincia senza farlo sentire indietro.
7. Verificare SEMPRE codice incollato: typo nei nomi metodi/eventi, chiusure annidate.

## CONCETTI JS PADRONEGGIATI DA CIRO (15/05/2026)

array, forEach, callback, getAttribute/textContent, concatenazione con +, let vs const,
if/else, operatore di confronto === (vs = che assegna).
Nota: == (due uguali) NON ancora introdotto - usare sempre === per ora.

## ERRORE STORICO DA NON RIFARE

La sessione in VSCode bruciò Ciro buttandogli 4 concetti insieme senza basi -> "mi sento stupido". Mai più.

## Aggiornamento 28/05/2026 13:55

Project Claude creato, script open/close-session funzionanti, prossimo: Project Mac e automazioni

## Aggiornamento 29/05/2026 — Setup Mac completato

### Fatto oggi (Progetto Mac & Automazioni):

- Audit macchina: macOS 26.5, zsh 5.9, Homebrew 4.4.6, Git 2.50.1, Node v23.2.0
- .gitignore globale configurato (~/.gitignore_global) — blocca .DS_Store su tutti i repo
- .DS_Store rimosso dal repo truecoder-dev e pushato
- GitHub Desktop disinstallato — workflow solo da terminale VS Code
- .zshrc configurato con alias git:
  - gs = git status
  - ga = git add .
  - gp = git push
  - gl = git log --oneline --graph --decorate -10
  - gc "messaggio" = git add . + git commit -m

### Prossimo step Mac:

- Creare RIPRENDI-DA-QUI.md nel progetto Mac & Automazioni
- Valutare altre automazioni utili (da decidere)

## Aggiornamento 29/05/2026 — Sessione pomeriggio

### Fatto oggi (Project truecoder.dev):

- Project Claude "truecoder.dev" configurato con Instructions + 3 file caricati
- Struttura definitiva dei Project stabilita (truecoder / cliente / Mac)
- Brand confermato: truecoder.dev ovunque
- Standard definitivi per ogni progetto: SEO tecnico base, GEO base, ratio aureo 1.618

### Prossimo step immediato:

Brief Da Raffaele — primo progetto/cliente ufficiale.

- Sito gratuito (portfolio) ma rapporto professionale a tutti gli effetti
- Proposta manutenzione mensile a pagamento
- Preventivo formale, email dedicata, separato dall'amicizia
- Brief nella prossima chat qui nel Project truecoder.dev
- Poi si apre Project Da Raffaele per l'esecuzione

### Regola sessione confermata:

Fine sessione = aggiorna RIPRENDI-DA-QUI.md + sostituisci file nel Project.
