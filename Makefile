htmls = index_en.html index_he.html
RST2HTML = ./rst2html_hibidi.py
helpers = rst2html_hibidi.py hibidi.py

all: $(helpers) $(htmls)

hibidi.py:
	wget http://cben-hacks.sourceforge.net/bidi/$@
	chmod +x $@

rst2html_hibidi.py:
	wget http://cben-hacks.sourceforge.net/bidi/$@
	chmod +x $@

$(htmls): %.html: %.rst
	$(RST2HTML) $< > $@
