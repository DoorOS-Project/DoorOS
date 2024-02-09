# DoorOS

DoorOS is an open-source project that aims to create a free, open-source GUI OS and a Windows alternative. It is written in C and assembly and uses a custom bootloader and kernel.

## Features

- Custom bootloader and kernel
- 32-bit support only (probably also 64-bit support in the future)
- Keyboard and screen drivers
- GUI with window management and icons
- Basic applications (calculator, editor)
- Makefile for easy compilation

## Project Structure

The project is organized into the following directories:

```
DoorOS/
├── README.md
├── LICENSE
├── Makefile
├── docs/                                   Contains documentation files such as DOCS.md and BUILD.md
│   ├── DOCS.md
│   └── BUILD.md
├── boot/                                   Contains the boot.asm file that is the bootloader for the OS
│   ├── boot.asm
│   └── README.md
├── kernel/                                 Contains the kernel.c and kernel.h files that define the core functions of the OS
│   ├── kernel.c
│   ├── kernel.h
│   └── README.md
├── drivers/                                Contains the keyboard.c, keyboard.h, screen.c, and screen.h files that implement the keyboard and screen drivers
│   ├── keyboard.c
│   ├── keyboard.h
│   ├── screen.c
│   ├── screen.h
│   └── README.md
├── gui/                                    Contains the gui.c, gui.h, window.c, and window.h files that implement the GUI and the window management system
│   ├── gui.c
│   ├── gui.h
│   ├── window.c
│   ├── window.h
│   ├── assets/                             Contains the logo.png, font.ttf, and icons/ directory that store the graphical assets for the GUI
│   │   ├── logo.png
│   │   ├── font.ttf
│   │   └── icons/
│   │       ├── home.png
│   │       ├── settings.png
│   │       └── power.png
│   │       └── README.md
│   └── README.md
└── apps/                                   Contains the calculator.c, calculator.h, editor.c, and editor.h files that implement the basic applications for the OS
    ├── calculator.c
    ├── calculator.h
    ├── editor.c
    ├── editor.h
    └── README.md
```

Each directory also has a README.md file that provides more details about its contents.

## Build Instructions

To build and run the OS, please refer to the [`BUILD.md`](./docs/BUILD.md) file.

## License

This project is licensed under the GNU General Public License version 2. See the [`LICENSE`](./LICENSE) file for more information.
