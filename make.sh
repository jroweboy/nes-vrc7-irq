#!/bin/env sh
set -e

mkdir -p bin
rm -f bin/*

tools/cc65/bin/ca65 -g src/audio.s    -o bin/audio.o
tools/cc65/bin/ca65 -g src/drawing.s  -o bin/drawing.o
tools/cc65/bin/ca65 -g src/driver.s   -o bin/driver.o
tools/cc65/bin/ca65 -g src/game.s     -o bin/game.o
tools/cc65/bin/ca65 -g src/irq.s      -o bin/irq.o
tools/cc65/bin/ld65 --dbgfile bin/vrc7_demo.dbg -C map.cfg \
    bin/audio.o \
    bin/driver.o \
    bin/drawing.o \
    bin/game.o \
    bin/irq.o \
    -o bin/vrc7_demo.nes -m bin/vrc7_demo_map.txt

