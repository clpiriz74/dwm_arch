def generar_tabla_ascii_completa(nombre_archivo="tabla_ascii.txt"):
    with open(nombre_archivo, "w", encoding="utf-8") as f:

        f.write("=== ASCII estándar (0–127) ===\n")
        f.write(f"{'DEC':>3}  {'HEX':>4}  CHAR\n")
        f.write("-" * 20 + "\n")
        for i in range(128):
            char = chr(i)
            visible = char if char.isprintable() else ''
            f.write(f"{i:>3}   {i:04X}   {repr(visible)}\n")

        f.write("\n=== Box Drawing Unicode (U+2500–U+257F) ===\n")
        f.write(f"{'HEX':>6}  CHAR  NAME\n")
        f.write("-" * 30 + "\n")
        for code in range(0x2500, 0x2580):
            char = chr(code)
            try:
                name = f"{char} - {unicodedata.name(char)}"
            except:
                name = "No name"
            f.write(f"U+{code:04X}   {char}    {name}\n")

        f.write("\n=== Block Elements Unicode (U+2580–U+259F) ===\n")
        f.write(f"{'HEX':>6}  CHAR  NAME\n")
        f.write("-" * 30 + "\n")
        for code in range(0x2580, 0x25A0):
            char = chr(code)
            try:
                name = f"{char} - {unicodedata.name(char)}"
            except:
                name = "No name"
            f.write(f"U+{code:04X}   {char}    {name}\n")

    print(f"✅ Archivo generado: {nombre_archivo}")

# Requiere este import para nombres Unicode:
import unicodedata

generar_tabla_ascii_completa()

