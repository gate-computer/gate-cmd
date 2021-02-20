GO		?= go

DESTDIR		:=
PREFIX		:= /usr/local
BINDIR		:= $(PREFIX)/bin

-include config.mk

export GO111MODULE := on

.PHONY: all
all:
	$(GO) build $(GOBUILDFLAGS) -o bin/gate gate.computer/gate/cmd/gate
	$(GO) build $(GOBUILDFLAGS) -o bin/gate-daemon ./cmd/gate-daemon
	$(GO) build $(GOBUILDFLAGS) -o bin/gate-runtime gate.computer/gate/cmd/gate-runtime
	$(GO) build $(GOBUILDFLAGS) -o bin/gate-server ./cmd/gate-server

.PHONY: check
check: all
	$(GO) vet ./...

.PHONY: install
install:
	install -m 755 -d $(DESTDIR)$(BINDIR)
	install -m 755 bin/gate bin/gate-daemon bin/gate-runtime bin/gate-server $(DESTDIR)$(BINDIR)

.PHONY: clean
clean:
	rm -rf bin
