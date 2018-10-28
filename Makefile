export APP_VERSION	:=	2.0.0

ifeq ($(RELEASE),)
	export APP_VERSION	:=	$(APP_VERSION)-$(shell git describe --dirty --always)
endif

.PHONY: clean all nx pc dist-bin

all: nx pc

dist-bin:
	$(MAKE) -f Makefile.nx dist-bin

nx:
	$(MAKE) -f Makefile.nx

pc:
	$(MAKE) -f Makefile.pc

clean:
	$(MAKE) -f Makefile.pc clean
	$(MAKE) -f Makefile.nx clean
