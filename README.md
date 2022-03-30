# ARM Assembly

Testing cross-compiling in ARM32, ARM64, RISC-V64 and x86-64 architectures. 

## Requirements
Packages to install on a Debian based Linux.

For ARM 32:
```
gcc-arm-linux-gnueabi
g++-arm-linux-gnueabi
binutils-arm-linux-gnueabi
```

For AARCH64 (ARM 64):
```
gcc-aarch64-linux-gnu
g++-aarch64-linux-gnu
binutils-aarch64-linux-gnu
```

For RISC-V 64:
```
gcc-riscv64-linux-gnu
g++-riscv64-linux-gnu
binutils-riscv64-linux-gnu
```

For x86-64:
```
gcc-x86-64-linux-gnu
g++-x86-64-linux-gnu
binutils-x86-64-linux-gnu
```

To run in QEMU:
```
qemu-user-static
```
