# note-js.md — Teoria JavaScript truecoder.dev

Appunti dei concetti imparati, in ordine. Da rileggere quando serve — è normale non ricordarli a memoria.

---

## 1. ARRAY — la lista di cose

Una scatola che contiene più valori in ordine. Parentesi quadre `[ ]`, valori separati da virgola.

```javascript
const colori = ["rosso", "verde", "blu"];
```

- Ogni elemento ha una posizione (indice) che parte da **0**, non da 1.
- Per accedere a un elemento: `colori[0]` → "rosso", `colori[1]` → "verde", `colori[2]` → "blu".
- `querySelector` restituisce UN elemento. `querySelectorAll` restituisce una LISTA (array-like, tecnicamente NodeList).

---

## 2. forEach — ripeti per ogni elemento

Cicla un array ed esegue una funzione per ogni elemento.

```javascript
const colori = ["rosso", "verde", "blu"];

colori.forEach(function (colore) {
  console.log(colore);
});
// stampa: rosso, verde, blu (3 giri)
```

- `colore` è il NOME che scegli tu per "l'elemento del giro corrente". Lo riempie forEach in automatico, un valore diverso a ogni giro.
- Il nome dichiarato tra `function (...)` deve essere usato UGUALE dentro le graffe `{ }`.
- Convenzione: array al plurale (`colori`), elemento al singolare (`colore`). Solo leggibilità, non obbligo.
- Metafora: forEach è un distributore di caramelle. L'array è il sacchetto. Ti passa una caramella alla volta nella mano (`colore`). Finché il sacchetto non è vuoto.

---

## 3. CALLBACK — funzione passata dentro un'altra funzione

Una funzione che NON esegui tu direttamente, ma che consegni a qualcun altro (addEventListener, forEach) perché la esegua "al momento giusto".

```javascript
bottone.addEventListener("click", function () {
  // questa funzione è una CALLBACK: parte quando clicchi
});
```

- `addEventListener("click", callback)` → esegui la callback QUANDO clicco.
- `forEach(callback)` → esegui la callback PER OGNI elemento.
- Tu la passi e basta. Il "quando" lo decide chi la riceve.

---

## 4. getAttribute / textContent — leggere attributi, scrivere testo

```html
<h2 data-it="Servizi" data-en="Services">Servizi</h2>
```

```javascript
titolo.getAttribute("data-it");        // LEGGE l'attributo → "Servizi"
titolo.textContent;                     // LEGGE il testo visibile → "Servizi"
titolo.textContent = "Services";        // SCRIVE il testo visibile (nota: con =)
```

- `=` presente → stai SCRIVENDO (assegni). `=` assente → stai LEGGENDO.
- `textContent` tutto attaccato, C maiuscola. JS è case-sensitive: maiuscole/minuscole contano.
- La riga chiave del toggle:
```javascript
elemento.textContent = elemento.getAttribute("data-" + linguaAttuale);
```
"prendi il valore di data-it (o data-en) e mettilo come testo visibile".

---

## 5. CONCATENAZIONE con `+`

Unire (incollare) due pezzi di testo.

```javascript
"data-" + "it"     // "data-it"
"data-" + "en"     // "data-en"

let lingua = "en";
"data-" + lingua   // "data-en" (usa il valore della variabile)
```

- Con testo `+` incolla. Con numeri `+` somma.
- Il pezzo fisso `"data-"` resta sempre davanti, il valore si attacca dopo.

---

## 6. let vs const

- `const` → contenitore il cui valore NON cambia dopo l'assegnazione. (es. elementi della pagina)
- `let` → contenitore il cui valore PUÒ cambiare nel tempo. (es. linguaAttuale che passa da "it" a "en")
- Quando cambi il valore di un `let` esistente NON riscrivi `let`: solo `linguaAttuale = "en";`
- Vale per qualsiasi valore che cambia: stato, colore, contatore, punteggio, ecc.

---

## DA IMPARARE PROSSIMAMENTE
- if / else e operatore di confronto `===` (per invertire la lingua nel toggle)
