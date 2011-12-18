
PREFIX ?= /usr/local
JSCOV = deps/jscoverage/node-jscoverage

install: install-jscov 

uninstall:
	rm -f $(PREFIX)/bin/node-jscoverage

install-jscov: $(JSCOV)
	install $(JSCOV) $(PREFIX)/bin

$(JSCOV):
	cd deps/jscoverage && ./configure && make && mv jscoverage node-jscoverage

clean:
	@cd deps/jscoverage && git clean -fd

