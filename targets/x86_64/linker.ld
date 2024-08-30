/******************************************************************************
 * DoorOS - A Free Open-source GUI Operating System
 *
 * This file is part of the DoorOS Open-source project, a free alternative to
 * Windows designed to cater to a wide range of users, including enterprises.
 *
 * Author: DoorOS Project
 * License: GNU General Public License v2.0-only
 *
 * (c) 2024 DoorOS Open-source Project
 *
 * File Description:
 * The linker configuration file.
 ******************************************************************************
 */

ENTRY(start)

SECTIONS {
	. = 1M;

	.boot : {
		KEEP(*(.multiboot_header))
	}

	.text : {
		*(.text)
	}
}
