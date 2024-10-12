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
 * The VGA terminal driver interface file.
 *****************************************************************************/

#pragma once

#include <stdint.h>
#include <stddef.h>

enum {
	PRINT_COLOR_BLACK = 0,
	PRINT_COLOR_BLUE = 1,
	PRINT_COLOR_GREEN = 2,
	PRINT_COLOR_CYAN = 3,
	PRINT_COLOR_RED = 4,
	PRINT_COLOR_MAGENTA = 5,
	PRINT_COLOR_BROWN = 6,
	PRINT_COLOR_LIGHT_GRAY = 7,
	PRINT_COLOR_DARK_GRAY = 8,
	PRINT_COLOR_LIGHT_BLUE = 9,
	PRINT_COLOR_LIGHT_GREEN = 10,
	PRINT_COLOR_LIGHT_CYAN = 11,
	PRINT_COLOR_LIGHT_RED = 12,
	PRINT_COLOR_PINK = 13,
	PRINT_COLOR_YELLOW = 14,
	PRINT_COLOR_WHITE = 15,
};

void print_clear();
void print_char(char character);
void print_str(const char *string);
void print_set_color(uint8_t foreground, uint8_t background);
