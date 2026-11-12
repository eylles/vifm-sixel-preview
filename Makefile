.PHONY: install uninstall
PREFIX = ${HOME}/.local
BIN_LOC = $(DESTDIR)$(PREFIX)/bin
XDG_CONFIG_HOME ?= $(HOME)/.config
VIFM_CONFIG_DIR = ${XDG_CONFIG_HOME}/vifm

install:
	@echo installing
	mkdir -p $(BIN_LOC)
	cp vifmrun $(BIN_LOC)/vifmrun
	cp vifmimg $(BIN_LOC)/vifmimg
	mkdir -p $(VIFM_CONFIG_DIR)/preview
	cp use_sixel_previews.vifm $(VIFM_CONFIG_DIR)/use_sixel_previews.vifm
	cp sixel_previews_regular.vifm $(VIFM_CONFIG_DIR)/preview/sixel_previews_regular.vifm
	cp sixel_previews_uncached.vifm $(VIFM_CONFIG_DIR)/preview/sixel_previews_uncached.vifm

uninstall:
	@echo uninstalling
	rm -f $(BIN_LOC)/vifmrun
	rm -f $(BIN_LOC)/vifmimg
	rm -f $(VIFM_CONFIG_DIR)/use_sixel_previews.vifm
	rm -f $(VIFM_CONFIG_DIR)/preview/sixel_previews_regular.vifm
	rm -f $(VIFM_CONFIG_DIR)/preview/sixel_previews_uncached.vifm
