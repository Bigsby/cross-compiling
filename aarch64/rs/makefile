run: build
	qemu-aarch64-static target/aarch64-unknown-linux-gnu/release/prog

build:
	CARGO_TARGET_AARCH64_UNKNOWN_LINUX_GNU_LINKER=aarch64-linux-gnu-gcc \
        CARGO_TARGET_AARCH64_UNKNOWN_LINUX_GNU_RUSTFLAGS="-C target-feature=+crt-static" \
        cargo build --target aarch64-unknown-linux-gnu --quiet --release

clean:
	cargo clean

.PHONY: run build clean
