nasm "Sector 1/bootloader.asm" -f bin -o flp/bin/bootloader.bin
nasm "Sector 2+/ExtendedProgram.asm" -f bin -o flp/bin/ExtendedProgram.bin
cd flp
cat bin/bootloader.bin bin/ExtendedProgram.bin > bootloader.flp
