# targets that aren't filenames
.PHONY: all clean deploy build serve

SERVE_HOST ?= 127.0.0.1
SERVE_PORT ?= 5000

all: build

BIBBLE = bibble

_includes/quant.html: bib/quant.bib bib/publications.tmpl
	mkdir -p _includes
	$(BIBBLE) $+ > $@

_includes/aut.html: bib/aut.bib bib/publications.tmpl
	mkdir -p _includes
	$(BIBBLE) $+ > $@

_includes/llm.html: bib/llm.bib bib/publications.tmpl
	mkdir -p _includes
	$(BIBBLE) $+ > $@

_includes/pubs.html: bib/bib.bib bib/publications.tmpl
	mkdir -p _includes
	$(BIBBLE) $+ > $@

_includes/recent.html: bib/bib.bib bib/recent.tmpl
	mkdir -p _includes
	$(BIBBLE) $+ > $@

build: _includes/recent.html _includes/pubs.html _includes/aut.html _includes/quant.html _includes/llm.html
	jekyll build

serve: build
	jekyll serve --port $(SERVE_PORT) --host $(SERVE_HOST)

debug: build
	jekyll serve --verbose --port $(SERVE_PORT) --host $(SERVE_HOST)

clean:
	$(RM) -r _site _includes/pubs.html _includes/recent.html _includes/mrag.html  _includes/mm.html _includes/pixel.html
