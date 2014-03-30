MARKDOWNS=$(wildcard *.md)
LESS=$(wildcard *.less)
CSS=$(patsubst %.less,%.css,$(LESS))


all: $(patsubst %.md,%.html,$(MARKDOWNS)) ${CSS} 

clean: 
	rm -f *.html *.pdf *.epub *.rtf

%.html: %.md Makefile panstrap.css panstrap.html5
	pandoc -t html5 --ascii --toc --toc-depth=1 -c panstrap.css --template=panstrap.html5 --section-divs --standalone --smart -o $@ $<

%.css: %.less
	lessc $< > $@
	#lessc $< | csstidy - --silent=true | yui-compressor --type css > $@
