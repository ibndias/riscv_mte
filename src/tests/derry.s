.global main

.text
.balign 8
main:
    li a0, 0xAB             /* load immediate 0xAB to a0 */
    li a1, 0x80000000       /* a1 = 0x8000 0000 */
    st a0, 0(a1)            /* store tag a0 to a1 */
    lt a2, 0(a1)            /* load tag a1 to a2 */
    bne a2, a0, fail        /* branch not equal */

success:
    li a0, 0
    /* writing to 0x8c3 csr makes qemu to exit */
    csrw 0x8c3, a0

fail:
    li a0, 1
    /* writing to 0x8c3 csr makes qemu to exit */
    csrw 0x8c3, a0
