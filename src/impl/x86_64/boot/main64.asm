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
; The 64-bits main entry point of the operating system.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

global long_mode_start
extern kernel_main

section .text
bits 64
long_mode_start:
	; Load 0 into all data segment registers
	mov ax, 0
	mov ss, ax
	mov ds, ax
	mov es, ax
	mov fs, ax
	mov gs, ax

	; Load kernel
	call kernel_main

	hlt
