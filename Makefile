TEMPLATE_FILES_IN = $(shell find . -type f -name '*.in')
TEMPLATE_FILES = $(TEMPLATE_FILES_IN:.in=)

export myvar = 'from Makefile'
export combined = $(myvar) combined

.PHONY: all
all: $(TEMPLATE_FILES)

%: %.in
	scripts/env_replace < $< > $@

clean:
	rm -f $(TEMPLATE_FILES)
