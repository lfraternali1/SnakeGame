# SnakeGame in Processing

Snake realizzato in **Processing**.  
Include gestione del punteggio, livelli e high score, con possibilità di ripartire premendo 'R'.

## Caratteristiche

- Movimento del serpente  con le frecce
- Cibo che appare in posizioni casuali evitando il serpente
- Aumento della velocità ogni 5 cibi mangiati fino al livello 10
- High Score salvato durante la sessione
- Possibilità di resettare il gioco premendo 'R'

## Struttura del progetto

- `Snake.pde` → classe Snake che gestisce movimento e crescita
- `Food.pde` → classe Food che gestisce il cibo
- `GameStats.pde` → classe per punteggio, livello e high score
- `SnakeGame.pde` → file principale con `setup()` e `draw()`

## Come giocare

- Frecce ↑↓→← per muovere il serpente
- Mangia il cibo rosso per crescere e aumentare il punteggio
- Evita di scontrarti con il corpo del serpente
- Premi 'R' per resettare il gioco

## Installazione

1. Scarica Processing da [processing.org](https://processing.org/)
2. Clona il repository:
   ```bash
   git clone https://github.com/TUOUSERNAME/SnakeGame.git

![snake](https://github.com/user-attachments/assets/136d1b8e-fcc9-4b16-8ed1-c1a5ac794096)

