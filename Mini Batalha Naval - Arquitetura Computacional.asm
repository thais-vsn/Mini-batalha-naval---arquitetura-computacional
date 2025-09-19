; Mini Batalha Naval - Neander
; Memória:
; SHOT   = 20h (entrada da jogada)
; RESULT = 21h (resultado: 00 = erro, 01 = acerto)
; NAVIO1 = 30h
; NAVIO2 = 31h
; NAVIO3 = 32h

        ORG 00h

START:  LDA SHOT       ; carrega a posição do tiro
        STA AUX        ; salva em AUX para comparar

        ; --- Testa com NAVIO1
        LDA AUX
        SUB NAVIO1
        JZ ACERTO

        ; --- Testa com NAVIO2
        LDA AUX
        SUB NAVIO2
        JZ ACERTO

        ; --- Testa com NAVIO3
        LDA AUX
        SUB NAVIO3
        JZ ACERTO

        ; --- Se não acertou nenhum
ERRO:   LDA ZERO
        STA RESULT
        HLT

ACERTO: LDA UM
        STA RESULT
        HLT


;Dados
SHOT:   DB 00h      ; Jogada do jogador
RESULT: DB 00h      ; Resultado (00=erro, 01=acerto)
AUX:    DB 00h

ZERO:   DB 00h
UM:     DB 01h

NAVIO1: DB 00h      ; Posição do primeiro navio
NAVIO2: DB 04h      ; Posição do segundo navio
NAVIO3: DB 08h      ; Posição do terceiro navio
