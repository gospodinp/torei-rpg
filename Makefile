MARKDOWNS=$(wildcard *.md)
LESS=$(wildcard *.less)
CSS=$(patsubst %.less,%.css,$(LESS))


all: $(patsubst %.md,%.html,$(MARKDOWNS)) ${CSS} 

clean: 
	rm -f *.html *.pdf *.epub *.rtf

%.html: %.md Makefile panstrap.html5 header.html5 panstrap.css
	pandoc -t html5 --ascii --toc --toc-depth=2 -c panstrap.css --template=panstrap.html5 --include-in-header=header.html5 --section-divs --standalone --self-contained --smart -o $@ $<

%.css: %.less Makefile
	lessc $< > $@
	#lessc $< | csstidy - --silent=true | yui-compressor --type css > $@
