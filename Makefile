# OpenCL Headers

INSTALL          = install -m644 -D

DEFAULT_DESTDIR := $(HOME)/usr/include/CL
ifeq ($(DESTDIR),)
DESTDIR         := $(DEFAULT_DESTDIR)
endif

HEADERS           := $(subst src/,,$(wildcard src/*) )
INSTALLED_HEADERS := $(addprefix $(DESTDIR)/, $(HEADERS) )

install: $(INSTALLED_HEADERS)

test:
	# HEADERS = $(HEADERS)
	# DESTDIR = $(DESTDIR)
	# INSTALLED_HEADERS = $(INSTALLED_HEADERS)

$(DESTDIR)/%: src/%
	$(INSTALL) $< $@

# ############ End of file ########################################
