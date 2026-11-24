# Laboratorio Lex/Flex – Compiladores y Lenguajes

**Escuela Politécnica Nacional** · Facultad de Ingeniería de Sistemas
**Periodo:** 2026-B · **GR:** GR1CD · **Equipo # 7**
**Docente:** Rodrigo Fabian Changusic Chuquilla

**Integrantes:**
- Guido Fidel Quilumba Diaz
- Aitana Raquel Gómez Guaman
- Adrián Mauricio Trujillo Salazar

**Entrega:** 24 de noviembre de 2026, 12:00

## Contenido

Este repositorio reúne los **13 ejercicios** del laboratorio de Lex/Flex, desarrollados en grupo. Cada ejercicio tiene su propia carpeta y su informe.

```
COMP2026B/1B/
├── UNO/      uno.l     ...
├── DOS/      dos.l     ...
├── ...
└── TRECE/    trece.l   ...
```

Dentro de cada carpeta:

| Archivo | Descripción |
|---|---|
| `X.l` | Especificación Lex del ejercicio |
| `lex.yy.c` | Código C generado por `flex` |
| `X` y `a.out` | Ejecutables generados con `gcc` |
| `entrada.txt` | Texto de prueba |
| `salida.txt` | Resultado de la ejecución |

## Cómo ejecutar

Se trabajó en Ubuntu (VirtualBox) con `flex` y `gcc`. Dentro de la carpeta del ejercicio, con `X` igual al nombre del archivo `.l`:

```bash
flex X.l
gcc lex.yy.c -o X -lfl
gcc lex.yy.c -o a.out -lfl
./X <entrada.txt> salida.txt
```
