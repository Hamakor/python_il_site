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

html4css1.css:
	cp `python -c 'import sys;print "%s/lib/python%d.%d/site-packages/docutils/writers/html4css1/html4css1.css"%((sys.prefix,)+sys.version_info[:2])'` .

$(htmls): %.html: %.rst
	$(RST2HTML) $< > $@
