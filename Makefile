TEMPLATE_FILES_IN = $(shell find . -type f -name '*.in')
TEMPLATE_FILES = $(TEMPLATE_FILES_IN:.in=)


.PHONY: all
all: $(TEMPLATE_FILES)

%: %.in
	scripts/env_replace < $< > $@

clean:
	rm -f $(TEMPLATE_FILES)
