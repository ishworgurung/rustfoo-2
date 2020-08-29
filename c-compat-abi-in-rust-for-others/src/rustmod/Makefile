
CC = $(shell which clang)
CARGO = $(shell which cargo)
SHARED_LIB = ../../target/release/libc_compat_abi_in_rust_for_others.so
BIN = entrypoint

.PHONY: build_rust_module build

default: build_rust_module build

build_rust_module:
	@cd ../../
	@$(CARGO) build --release

build:
	@$(CC) -o $(BIN) ./entrypoint.c -I . -L . -l:$(SHARED_LIB)

clean:
	@rm -f $(SHARED_LIB)
	@rm -f $(BIN)
