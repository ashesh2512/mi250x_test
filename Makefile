#!/bin/bash
ITER=64

SRC = ./kernel.cpp
OUT = ./kernel_mi250x

ARCH = gfx90a 

$(OUT): $(SRC)
	hipcc -std=c++17 -x hip --offload-arch=$(ARCH) -D ITER=$(ITER) -w -o $(OUT) $(SRC)

.PHONY: all
all: $(OUT)

clean:
	rm ${OUT}
