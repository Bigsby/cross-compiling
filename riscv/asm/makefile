ABI=riscv64-linux-gnu
QEMU_STATIC=qemu-riscv64
CODE_FILE=prog

run: $(CODE_FILE).elf
	$(QEMU_STATIC)-static $^

.PHONY: run clean

$(CODE_FILE).elf: $(CODE_FILE).o
	$(ABI)-gcc $^ -nostdlib -o $@ -static

$(CODE_FILE).o: $(CODE_FILE).s
	$(ABI)-as $^ -o $@

clean:
	rm $(CODE_FILE).o $(CODE_FILE).elf
