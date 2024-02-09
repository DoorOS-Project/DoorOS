CC = gcc
CFLAGS = -Wall -Wextra -Werror -std=c99 -m32
NASM = nasm
NASMFLAGS = -f bin
LD = ld
LDFLAGS = -m elf_i386 -Ttext 0x1000 --oformat binary

all: boot.bin kernel.bin

boot.bin: boot/boot.asm
	$(NASM) $(NASMFLAGS) $< -o $@

kernel.bin: kernel/kernel.o drivers/keyboard.o drivers/screen.o gui/gui.o gui/window.o apps/calculator.o apps/editor.o
	$(LD) $(LDFLAGS) $^ -o $@

%.o: %.c %.h
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f *.bin *.o
	rm -f boot/*.bin boot/*.o
	rm -f kernel/*.bin kernel/*.o
	rm -f drivers/*.bin drivers/*.o
	rm -f gui/*.bin gui/*.o
	rm -f apps/*.bin apps/*.o

run: all
	qemu-system-i386 -drive format=raw,file=boot.bin,index=0,if=floppy
	qemu-system-i386 -drive format=raw,file=kernel.bin,index=1,if=floppy
