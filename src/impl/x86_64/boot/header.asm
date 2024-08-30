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
 ; The MultiBoot2 header.
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

section .multiboot_header
header_start:
	; Magic number
	dd 0xe85250d6 ; MultiBoot2
	; Architecture
	dd 0 ; Protected mode i386
	; Header length
	dd header_end - header_start
	; Checksum
	dd 0x100000000 - (0xe85250d6 + 0 + (header_end - header_start))

	; End tag
	dw 0
	dw 0
	dd 8
header_end:
