cd ..
nasm -f bin "Sector 1/bootloader.asm" -o flp/bin/bootloader.bin
nasm -f bin "Sector 2+/ExtendedProgram.asm" -o flp/bin/ExtendedProgram.bin
cd flp
cat bin/bootloader.bin bin/ExtendedProgram.bin > bootloader.flp
qemu-system-x86_64 bootloader.flp