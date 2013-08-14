JADE = ./node_modules/.bin/jade

HTML = index.html \
			 404.html

docs: $(HTML)

%.html: %.jade
		$(JADE) < $< > $@

clean:
		rm -f *.html

.PHONY: docs clean
