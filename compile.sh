nasm "Sector 1/bootloader.asm" -f bin -o flp/bootloader.bin

nasm "Sector 2+/ExtendedProgram.asm" -f bin -o flp/ExtendedProgram.bin

cd flp
cat bootloader.bin ExtendedProgram.bin > bootloader.flp