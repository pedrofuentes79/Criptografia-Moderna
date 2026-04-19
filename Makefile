LAST_HW := $(shell ls -d HW*/ 2>/dev/null | grep -oE '[0-9]+' | sort -n | tail -1)
HW_DIR   := HW$(LAST_HW)
TEX_FILE := $(HW_DIR)/Intro_Crypto_HW$(LAST_HW).tex

.PHONY: all clean

all:
	latexmk -pdf -cd -jobname=Fuentes_HW$(LAST_HW) $(TEX_FILE)

clean:
	latexmk -cd -C -jobname=Fuentes_HW$(LAST_HW) $(TEX_FILE)
