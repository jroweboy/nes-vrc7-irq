
def transpose(table):
    table = table.strip()
    out = [[x for x in y.strip().lstrip(".byte ").split(",")] for y in table.splitlines()]
    transpose = [*zip(*out)]
    for y in transpose:
        print(f"  .byte {','.join(y)}")


if __name__ == "__main__":
    transpose("""
    .byte $00,$01,$02,$03,$04,$00,$00
    .byte $00,$06,$07,$08,$09,$0a,$00
    .byte $00,$0b,$0c,$0d,$0e,$0f,$00
    .byte $10,$11,$12,$13,$14,$15,$16
    .byte $17,$18,$19,$1a,$1b,$1c,$1d
    .byte $1e,$1f,$20,$21,$22,$23,$24
    .byte $00,$25,$26,$27,$28,$29,$00
    .byte $00,$2a,$2b,$2c,$2d,$2e,$00
    .byte $2f,$30,$31,$32,$33,$34,$35
""")
