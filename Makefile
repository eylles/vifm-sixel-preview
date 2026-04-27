.PHONY: install uninstall
PREFIX = ${HOME}/.local
BIN_LOC = $(DESTDIR)$(PREFIX)/bin

install:
	@echo installing
	mkdir -p $(BIN_LOC)
	cp vifmrun $(BIN_LOC)/vifmrun
	cp vifmimg $(BIN_LOC)/vifmimg

uninstall:
	@echo uninstalling
	rm -f $(BIN_LOC)/vifmrun
	rm -f $(BIN_LOC)/vifmimg
