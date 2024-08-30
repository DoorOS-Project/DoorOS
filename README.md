# DoorOS Open-source Project

Welcome to the DoorOS Open-source project! DoorOS is a free and open-source graphical user interface (GUI) operating system, serving as a powerful and versatile alternative to Windows. Written in C/C++, DoorOS is designed to cater to a broad audience, from everyday users to enterprises requiring a robust and customizable OS solution.

## Features

- **32/64-bit Support**: Compatible with both 32-bit and 64-bit architectures, ensuring a wide range of device compatibility.
- **GUI Interface**: A user-friendly and visually appealing graphical user interface that simplifies navigation and usage.
- **Open Source**: Licensed under the GNU General Public License v2.0-only, DoorOS encourages community involvement in its development and improvement.
- **Enterprise Edition**: While DoorOS is free for personal use, we offer a paid Enterprise Edition designed for businesses, featuring additional tools and support. See [DoorOS Enterprise](README-Enterprise.md) for more information.

## Getting Started

### Prerequisites

To build DoorOS from source, you'll need:

- Docker

### Building DoorOS

1. Clone the repository:
   ```bash
   git clone https://github.com/DoorOS-Project/DoorOS.git
   ```
2. Navigate to the project directory:
   ```bash
   cd DoorOS
   ```
3. Install `os-build-utility`:
   ```bash
   wget https://github.com/DoorOS-Project/os-build-utility/releases/latest/download/os-build-utility-linux -O os-build-utility && chmod +x os-build-utility # *nix
   curl -L https://github.com/DoorOS-Project/os-build-utility/releases/latest/download/os-build-utility-windows.exe -o os-build-utility.exe # Windows
   ```
4. Build the OS:
   ```bash
   ./os-build-utility --build # *nix
   os-build-utility.exe --build # Windows
   ```

### Running DoorOS

After building DoorOS, you can run it on an emulator like QEMU using this command:

```bash
./os-build-utility --run # *nix
os-build-utility.exe --run # Windows
```

Or install it on a physical machine. Detailed instructions for running or installing DoorOS can be found in the [Installation Guide](./INSTALL.md).

## Contributing

We welcome contributions from the community! If you're interested in contributing, please read our [Contributing Guidelines](./CONTRIBUTING.md) to get started.

## License

This project is licensed under the GNU General Public License v2.0-only. See the [`LICENSE`](./LICENSE) file for more details.

## Contact

For any inquiries or support, feel free to reach out via GitHub Issues.

---

© 2024 DoorOS Open-source Project. All rights reserved.

