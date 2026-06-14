SUBDIRS = $(patsubst %/Makefile,%,$(wildcard */Makefile))

.PHONY: all clean $(SUBDIRS)

all: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C "$@"

clean:
	$(foreach d,$(SUBDIRS),$(MAKE) -C "$(d)" clean;)