.PHONY: install uninstall
install:
	@echo installing
	mkdir -p ~/.config/vifm/scripts
	cp ./vifm-sixel ~/.config/vifm/scripts/vifm-sixel
	chmod +x ~/.config/vifm/scripts/vifm-sixel

uninstall:
	@echo uninstalling
	rm ~/.config/vifm/vifm-sixel
