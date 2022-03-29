ABI=riscv64-linux-gnu
QEMU_STATIC=qemu-riscv64
CODE_FILE=prog

run: $(CODE_FILE).elf
	$(QEMU_STATIC)-static $^

.PHONY: run clean

$(CODE_FILE).elf: $(CODE_FILE).o
	$(ABI)-g++ -v $^ -o $@ -static
# $(ABI)-ld -L/usr/lib/gcc-cross/riscv64-linux-gnu/9 /usr/lib/gcc-cross/riscv64-linux-gnu/9/crtn.o -lm /usr/lib/gcc-cross/riscv64-linux-gnu/9/crti.o -lstdc++ $^ -o $@ -static

$(CODE_FILE).o: $(CODE_FILE).cpp
	$(ABI)-g++ -c $^ -o $@

clean:
	rm $(CODE_FILE).o $(CODE_FILE).elf
