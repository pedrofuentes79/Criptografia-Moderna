LAST_HW := $(shell ls -d HW*/ 2>/dev/null | grep -oP '\d+' | sort -n | tail -1)
HW_DIR   := HW$(LAST_HW)
TEX_FILE := $(HW_DIR)/Intro_Crypto_HW$(LAST_HW).tex
OUT_PDF  := Fuentes_HW$(LAST_HW).pdf

.PHONY: all clean

all:
	latexmk -pdf -cd $(TEX_FILE)
	cp $(HW_DIR)/Intro_Crypto_HW$(LAST_HW).pdf $(OUT_PDF)
	@echo "Guardado como $(OUT_PDF)"

clean:
	latexmk -cd -C $(TEX_FILE)
