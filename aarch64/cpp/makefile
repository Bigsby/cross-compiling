ABI=aarch64-linux-gnu
QEMU_STATIC=qemu-aarch64
CODE_FILE=prog

run: $(CODE_FILE).elf
	$(QEMU_STATIC)-static $^

.PHONY: run clean

$(CODE_FILE).elf: $(CODE_FILE).o
	$(ABI)-g++ $^ -o $@ -static

$(CODE_FILE).o: $(CODE_FILE).cpp
	$(ABI)-g++ -c $^ -o $@

clean:
	rm $(CODE_FILE).o $(CODE_FILE).elf
