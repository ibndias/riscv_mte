// Hello world! Cplayground is an online sandbox that makes it easy to try out
// code.

#include <stdio.h>
#include <stdlib.h>

int main() {
    asm("li a0, 0");
    /* writing to 0x8c3 csr makes qemu to exit */
    asm("csrw 0x8c3, a0");
    return 0;
}