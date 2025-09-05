# Sales Mood MVP — on‑device (RO)

Acesta este un demo local care estimează „mood” (good/neutral/bad) și sugerează un **tip scurt** pentru vânzare, folosind:

- **MediaPipe Face Landmarker (blendshapes)** pentru expresii (ex: zâmbet).
- **WebAudio** pentru energie vocală (RMS).
- **Late fusion**: `0.7 × zâmbet + 0.3 × energie` → scor [0..1].

> Totul rulează **on-device** (în browser). Nu trimitem video/audio la server.


## Cum rulezi local (Windows/Mac/Linux)

1. Descarcă arhiva și extrage într-un folder.
2. Deschide un terminal în acel folder.
3. Pornește un mic server local (necesar pentru permisiunile cam/mic):
   - Cu Python 3:  
     ```bash
     python -m http.server 8080
     ```
   - sau cu Node (dacă ai `npx`):  
     ```bash
     npx http-server -p 8080
     ```
4. Deschide `http://localhost:8080` în **Google Chrome** (recomandat) și acordă permisiuni pentru cameră și microfon.
5. Apasă **„Sunt de acord și pornesc demo-ul”** și apoi **„Pornește analiză”**.


## Ce vezi în UI
- **Semafor** (roșu/galben/verde) = bad/neutral/good.
- **Bară scor** = intensitatea „mood”-ului (0..100%).
- **Tip** = recomandare scurtă de acțiune.

## Limitări
- Estimările sunt **probabilistice** și depind de context/iluminare/poziție.
- Modelul nu face diagnostic medical sau profilare; este un **asistent**.


## Tehnic
- MediaPipe Tasks (Face Landmarker) se încarcă din CDN-ul oficial; modelul `.task` este servit de Google Cloud Storage.
- Nu se stochează fața/vocea; doar scoruri în memorie (se pierd la refresh).
- Codul este într-un singur fișier `index.html` pentru simplitate (MVP).

## Următori pași (opțional)
- Adaugă **Whisper (WASM)** pentru transcriere română on‑device.
- Calibrare pe sesiune (baseline de expresie și energie).
- Bibliotecă de **tips** configurabile per industrie (json).

