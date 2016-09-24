DOTS := $(shell echo *.dot)
PNGS := $(patsubst %.dot, %.png, $(DOTS))
SVGS := $(patsubst %.dot, %.svg, $(DOTS))

default: all

all: $(PNGS) $(SVGS)

%.png: %.dot
	dot -Tpng -o$@.tmp $< && mv $@.tmp $@

%.svg: %.dot
	dot -Tsvg -o$@.tmp $< && mv $@.tmp $@

delete:
	rm -f $(PNGS) $(SVGS)

clean:
	rm -f *.png *.svg
	$(MAKE) all

