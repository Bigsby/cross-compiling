all: entry.elf entry_no_start.elf

entry.elf: entry.S entry.c
	gcc -nostartfiles -o $@ $^

entry_no_start.elf: entry.c
	gcc -nostartfiles -e entry -o $@ $^ 

.PHONY: clean all

clean:
	rm entry*.elf

