    .org $0000

    di ; Disable Interrupts
    ;      V        Serial Output Data
    ;       V       SOD enable
    ;        V      don't care
    ;         V     RST 7.5 FF
    ;          V    Mask set enable
    ;           V   RST 7.5 mask
    ;            V  RST 6.5 mask
    ;             V RST 5.5 mask
    ld a, %11000000

loop:
    ; SIM (8085-only): set interrupt masks.
    .byte $30

    ; toggle SOD bit in A
    xor   %10000000

delay:
    dec b
    jp nz, delay
    dec c
    jp nz, delay
    jp loop
