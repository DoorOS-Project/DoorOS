# Build
This project can be built on Unix based OS only, right now, but probably also on Windows in the future.

Here is the links to the steps for each OS:
- [Linux](#Linux)
- [macOS](#macOS)

## Linux
To build this project on Linux, you need to have: 
- [GCC and GCC-Multilib](#GCC-and-GCC-Multilib-Linux)
- [NASM](#NASM-Linux)
- [Make](#Make-Linux)
- [Qemu](#Qemu-Linux)

Then, we will need to:
- [Compile and run](#Compile-and-run-Linux)

### GCC and GCC-Multilib Linux
GCC is the compiler, to make the binaries from the C source code. And GCC-Multilib is a package to make GCC able to compile the code in 32-bit binaries.

To install GCC and GCC-Multilib on Linux, you can try this on Debian/Ubuntu based:
```sh
sudo apt-get install gcc
sudo apt-get install gcc-multilib
```
Or you can try the equivalent with the package manager of your distro if you don't have `apt`/`apt-get`.

### NASM Linux
NASM is like GCC but for the for the ASM source code (the bootloader).

To install NASM on Linux, it's like for GCC and GCC-Multilib but with `nasm` and not `gcc` or `gcc-multilib`.
So you can try this command on Debian/Ubuntu based:
```sh
sudo apt-get install nasm
```
Or you can try the equivalent with the package manager of your distro if you don't have `apt`/`apt-get`.

### Make Linux
Make is the tool to compile all the source code in one command, and not in I don't know commands like it can be.

To install Make on Linux, you can try this command on Debian/Ubuntu based:
```sh
sudo apt-get install make
```
Or you can try the equivalent with the package manager of your distro if you don't have `apt`/`apt-get`.

### Qemu Linux
Qemu is a software to create and run virtual machines, it will be used to run and test the project.

To install Qemu for the project, you can try this command on Debian/Ubuntu based:
```sh
sudo apt-get install qemu-system-x86
```
Or you can try the equivalent with the package manager of your distro if you don't have `apt`/`apt-get`.

### Compile and run Linux
Now, we need to compile and run the project.

To compile, you just need to execute this command:
```sh
make
```

And to run, you just have to execute this command (this will launch a Qemu virtual machine with the project):
```sh
make run
```

## macOS
To build this project on macOS, you need to have: 
- [GCC and GCC-Multilib](#GCC-and-GCC-Multilib-macOS)
- [NASM](#NASM-macOS)
- [Make](#Make-macOS)
- [Qemu](#Qemu-macOS)

Then, we will need to:
- [Compile and run](#Compile-and-run-macOS)

### GCC and GCC-Multilib macOS
GCC is the compiler, to make the binaries from the C source code. And GCC-Multilib is a package to make GCC able to compile the code in 32-bit binaries.

To install GCC and GCC-Multilib on macOS, you can try this:
```sh
brew install gcc
brew install gcc-multilib
```

### NASM macOS
NASM is like GCC but for the for the ASM source code (the bootloader).

To install NASM on macOS, it's like for GCC and GCC-Multilib but with `nasm` and not `gcc` or `gcc-multilib`.
So you can try this command:
```sh
brew install nasm
```

### Make macOS
Make is the tool to compile all the source code in one command, and not in I don't know commands like it can be.

To install Make on macOS, you can try this command:
```sh
brew install make
```

### Qemu macOS
Qemu is a software to create and run virtual machines, it will be used to run and test the project.

To install Qemu for the project, you can try this command:
```sh
brew install qemu
```

### Compile and run macOS
Now, we need to compile and run the project.

To compile, you just need to execute this command:
```sh
make
```

And to run, you just have to execute this command (this will launch a Qemu virtual machine with the project):
```sh
make run
```
