;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; DoorOS - A Free Open-source GUI Operating System
;
; This file is part of the DoorOS Open-source project, a free alternative to
; Windows designed to cater to a wide range of users, including enterprises.
;
; Author: DoorOS Project
; License: GNU General Public License v2.0-only
;
; (c) 2024 DoorOS Open-source Project
;
; File Description:
; The main entry point of the operating system.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

global start
extern long_mode_start

section .text
bits 32
start:
	mov esp, stack_top

	call check_multiboot
	call check_cpuid
	call check_long_mode

	call setup_page_tables
	call enable_paging

	lgdt [gdt64.pointer]
	jmp gdt64.code_segment:long_mode_start

	hlt

check_multiboot:
	cmp eax, 0x36d76289
	jne .no_multiboot
	ret
.no_multiboot:
	mov esi, error_message_multiboot
	jmp error

check_cpuid:
	pushfd
	pop eax
	mov ecx, eax
	xor eax, 1 << 21
	push eax
	popfd
	pushfd
	pop eax
	push ecx
	popfd
	cmp eax, ecx
	je .no_cpuid
	ret
.no_cpuid:
	mov esi, error_message_cpuid
	jmp error

check_long_mode:
	mov eax, 0x80000000
	cpuid
	cmp eax, 0x80000001
	jb .no_long_mode

	mov eax, 0x80000001
	cpuid
	test edx, 1 << 29
	jz .no_long_mode
	ret
.no_long_mode:
	mov esi, error_message_long_mode
	jmp error

setup_page_tables:
	mov eax, page_table_l3
	or eax, 0b11 ; Present, Writable
	mov [page_table_l4], eax

	mov eax, page_table_l2
	or eax, 0b11 ; Present, Writable
	mov [page_table_l3], eax

	mov ecx, 0 ; Counter

.loop:
	mov eax, 0x200000 ; 2MiB
	mul ecx
	or eax, 0b10000011 ; Present, Writable, Huge page
	mov [page_table_l2 + ecx * 8], eax

	inc ecx ; Increment the counter
	cmp ecx, 512 ; If the whole table is mapped
	jne .loop ; If not; continue

	ret

enable_paging:
	; Pass page table location to CPU
	mov eax, page_table_l4
	mov cr3, eax

	; Enable PAE
	mov eax, cr4
	or eax, 1 << 5
	mov cr4, eax

	; Enable Long mode
	mov ecx, 0xc0000080
	rdmsr
	or eax, 1 << 8
	wrmsr

	; Enable paging
	mov eax, cr0
	or eax, 1 << 31
	mov cr0, eax

	ret

error:
	; Display the error message in `esi` from `error_messages`.
	mov dword [0xb80a0], 0x4f724f45
	mov dword [0xb80a4], 0x4f6f4f72
	mov dword [0xb80a8], 0x4f3a4f72
	mov word [0xb80ac], 0x4f20

	xor ecx, ecx
	.loop:
		mov al, [esi + ecx]

		cmp al, 0
		je .done

		mov ah, 0x4f
		inc ecx
		mov word [0xb80ac + ecx * 2], ax

		jmp .loop
	.done:
		hlt

section .bss

align 4096
page_table_l4:
	resb 4096
page_table_l3:
	resb 4096
page_table_l2:
	resb 4096

stack_bottom:
	resb 4096 * 4
stack_top:

section .rodata
error_message_multiboot db 'MultiBoot2 Error.', 0
error_message_cpuid  db 'CPUID unavailable.', 0
error_message_long_mode db 'Long Mode unavailable. Try the 32-bits ISO.', 0

gdt64:
	dq 0 ; Zero entry
	.code_segment: equ $ - gdt64
	dq (1 << 43) | (1 << 44) | (1 << 47) | (1 << 53) ; Code segment
.pointer:
	dw $ - gdt64 - 1
	dq gdt64
