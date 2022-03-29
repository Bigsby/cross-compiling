ABI=arm-linux-gnueabi
QEMU_STATIC=qemu-arm
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
