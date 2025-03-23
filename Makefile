#!/bin/bash
ITER=64

SRC = ./kernel.cpp
OUT = ./kernel_mi250x

$(OUT): $(SRC)
	hipcc -std=c++17 -D ITER=$(ITER) -w -o $(OUT) $(SRC)

.PHONY: all
all: $(OUT)

clean:
	rm ${OUT}