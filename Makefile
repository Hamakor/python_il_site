htmls = index_en.html index_he.html
styles = html4css1.css pyil.css 
helpers = rst2html_hibidi.py hibidi.py

RST2HTML = ./rst2html_hibidi.py
RST2HTML_OPTS = --stylesheet-path=pyil.css --link-stylesheet

all: $(helpers) $(styles) $(htmls)

hibidi.py:
	wget http://cben-hacks.sourceforge.net/bidi/$@
	chmod +x $@

rst2html_hibidi.py:
	wget http://cben-hacks.sourceforge.net/bidi/$@
	chmod +x $@

html4css1.css:
	cp `python docutils_css_path.py` .

$(htmls): %.html: %.rst
	$(RST2HTML) $(RST2HTML_OPTS) $< > $@
