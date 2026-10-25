
#!/bin/sh

gcc -S -O0 -fno-asynchronous-unwind-tables -fno-ident -fverbose-asm -masm=intel $1
