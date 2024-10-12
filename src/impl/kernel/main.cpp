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
 * The core of the DoorOS operating system, the kernel.
 *****************************************************************************/

#include "vga_terminal_driver.hpp"
#include "ps2_keayboard_driver.hpp"


extern "C" void kernel_main(); // For no name mangling during linking

void kernel_main() {
	print_clear();
	print_set_color(PRINT_COLOR_YELLOW, PRINT_COLOR_BLACK);
	print_str("DoorOS - 64-bits - Start\n");
}
