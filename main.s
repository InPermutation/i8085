    .org $0000

    di ; Disable Interrupts
loop:
    ;      V        Serial Output Data
    ;       V       SOD enable
    ;        V      don't care
    ;         V     RST 7.5 FF
    ;          V    Mask set enable
    ;           V   RST 7.5 mask
    ;            V  RST 6.5 mask
    ;             V RST 5.5 mask
    ld a, %11000000

    ; SIM (8085-only): set interrupt masks.
    .byte $30
    jp loop

    ; fill rest of ROM so minipro is happy
    .org $7FFF
    .byte 0
