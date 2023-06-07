ORG 0x5D6
STR: WORD 0x05F3
POINTER: WORD ?
START: CLA
LD STR
ST POINTER

S1: IN 0x07
AND #0x40
BEQ S1
LD (STR)
OUT 0x06
SXTB
CMP #0x000A
BEQ PHLT

S2: IN 0x07
AND #0x40
BEQ S2
LD (STR)+
SWAB
OUT 0x06
SXTB
CMP #0x000A
BEQ PHLT
JUMP S1

PHLT: HLT
ORG 0x5F3
WORD 0xD0F3 ; Сп
WORD 0xD3C1 ; ас
WORD 0xD4C9 ; ит
WORD 0x9AC5 ; е 
WORD 0xD4D3 ; ст
WORD 0xC4D5 ; уд
WORD 0xCEC5 ; ен
WORD 0xCFD4 ; то
WORD 0x9AD7 ; в 
WORD 0xC6E1 ; Аф
WORD 0xCEC1 ; ан
WORD 0xD3C1 ; ас
WORD 0xC5D8 ; ье
WORD 0xC1D7 ; ва
WORD 0x0A21 ; !NL