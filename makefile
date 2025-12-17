DEFAULT_PREFIX = /usr/local
PREFIX ?= $(DEFAULT_PREFIX)
BINDIR = $(PREFIX)/bin
TARGET = usd2rub

MANIFEST = install_manifest.txt

all: $(TARGET)

$(TARGET):

install: $(TARGET)
	install -d $(DESTDIR)$(BINDIR)
	install -m 0755 $(TARGET) $(DESTDIR)$(BINDIR)/$(TARGET)
	@echo "$(DESTDIR)$(BINDIR)/$(TARGET)" >> $(MANIFEST)

uninstall:
	@if [ -f $(MANIFEST) ]; then \
		while IFS= read -r f; do \
			$(RM) "$$f"; \
		done < $(MANIFEST); \
		$(RM) $(MANIFEST); \
	else \
		$(RM) $(DESTDIR)$(BINDIR)/$(TARGET); \
	fi

clean:
	$(RM) $(MANIFEST)

.PHONY: all install uninstall clean
