##############################################################################
# DoorOS - A Free Open-source GUI Operating System
#
# This file is part of the DoorOS Open-source project, a free alternative to
# Windows designed to cater to a wide range of users, including enterprises.
#
# Author: DoorOS Project
# License: GNU General Public License v2.0-only
#
# (c) 2024 DoorOS Open-source Project
#
# File Description:
# The building script for the ISO bootable image.
##############################################################################

kernel_src_files := $(shell find src/impl/kernel -name *.c)
kernel_obj_files := $(patsubst src/impl/kernel/%.c, build/kernel/%.o, $(kernel_src_files))

x86_64_c_src_files := $(shell find src/impl/x86_64 -name *.c)
x86_64_c_obj_files := $(patsubst src/impl/x86_64/%.c, build/x86_64/%.o, $(x86_64_c_src_files))

x86_64_asm_src_files := $(shell find src/impl/x86_64 -name *.asm)
x86_64_asm_obj_files := $(patsubst src/impl/x86_64/%.asm, build/x86_64/%.o, $(x86_64_asm_src_files))

x86_64_obj_files := $(x86_64_c_obj_files) $(x86_64_asm_obj_files)

all: build-x86_64

$(kernel_obj_files): build/kernel/%.o : src/impl/kernel/%.c
	mkdir -p $(dir $@) && \
	x86_64-elf-gcc -c -I src/intf -ffreestanding $(patsubst build/kernel/%.o, src/impl/kernel/%.c, $@) -o $@

$(x86_64_c_obj_files): build/x86_64/%.o : src/impl/x86_64/%.c
	mkdir -p $(dir $@) && \
	x86_64-elf-gcc -c -I src/intf -ffreestanding $(patsubst build/x86_64/%.o, src/impl/x86_64/%.c, $@) -o $@

$(x86_64_asm_obj_files): build/x86_64/%.o : src/impl/x86_64/%.asm
	mkdir -p $(dir $@) && \
	nasm -f elf64 $(patsubst build/x86_64/%.o, src/impl/x86_64/%.asm, $@) -o $@

.PHONY: build-x86_64 all
build-x86_64: $(kernel_obj_files) $(x86_64_obj_files)
	mkdir -p dist/x86_64 && \
	x86_64-elf-ld -n -o dist/x86_64/kernel.bin -T targets/x86_64/linker.ld $(kernel_obj_files) $(x86_64_obj_files) && \
	cp dist/x86_64/kernel.bin targets/x86_64/iso/boot/kernel.bin && \
	grub-mkrescue /usr/lib/grub/i386-pc -o dist/x86_64/kernel.iso targets/x86_64/iso
