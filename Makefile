
PREFIX ?= /usr/local
JSCOV = deps/node-jscoverage/node-jscoverage

install: install-jscov 

uninstall:
	rm -f $(PREFIX)/bin/node-jscoverage

install-jscov: $(JSCOV)
	install $(JSCOV) $(PREFIX)/bin

$(JSCOV):
	cd deps/node-jscoverage && ./configure && make && mv jscoverage node-jscoverage

clean:
	@cd deps/node-jscoverage && git clean -fd

