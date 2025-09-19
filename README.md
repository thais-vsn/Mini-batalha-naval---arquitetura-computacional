# 🚢 Mini Batalha Naval – NeanderWin

## 📖 Descrição
Este projeto implementa uma versão simplificada do jogo **Batalha Naval** no **NeanderWin**.  
O jogo utiliza **3 posições fixas de tabuleiro** na memória e permite que o jogador dê um **tiro** escolhendo uma posição. O programa então verifica se houve **acerto** ou **erro** e grava o resultado em memória.

---

## ⚙️ Especificações
- Tabuleiro de **3 posições** (endereços fixos na memória: 00, 04 e 08).  
- Cada posição pode conter:
  - `1` → navio presente.  
  - `0` → água.  
- O jogador fornece a posição que deseja atacar.  
- O programa verifica e salva o resultado em memória:
  - `1` → acerto.  
  - `0` → erro.  

---

## 🗂 Estrutura de Memória
| Endereço | Conteúdo | Descrição |
|----------|----------|-----------|
| `0x10`   | 0 ou 1   | Posição 00 do tabuleiro |
| `0x11`   | 0 ou 1   | Posição 02 do tabuleiro |
| `0x12`   | 0 ou 1   | Posição 08 do tabuleiro |
| `0x20`   | posição escolhida pelo jogador |
| `0x21`   | resultado do tiro (`1` = acerto, `0` = erro) |

---

## 🔄 Funcionamento
1. Jogador escolhe a posição do tiro.  
2. Programa carrega o valor do tabuleiro naquela posição.  
3. Se for `1`, registra **acerto**.  
4. Se for `0`, registra **erro**.  

---

## 🧩 Fluxo Lógico
```text
INÍCIO
  LER posição escolhida
  VERIFICAR tabuleiro
  SE posição = 1 → resultado = 1 (acerto)
  SENÃO → resultado = 0 (erro)
  SALVAR resultado em memória
FIM
```
- Expandir o tabuleiro para mais posições.  
README.md
Exibindo README.md.
