.global main

.text
.balign 8
main:
    /* register exception handler */
    la a0, handler
    csrw mtvec, a0
    csrr a0, mtvec
    /* enable tbi and mte */
    li a0, 0x1
    csrw 0x8c0, a0
    /* Key Register Set, set AD 1 WD 0 for PKey 15 */
    li a0, 0x02
    csrw 0x8c1, a0
    csrr a4, 0x8c1
    /* set tag for test_data */
    la a1, test_data
    li a2, 0x0F
    st a2, 0(a1)
    /* prepare tagged address */
    slli a2, a2, 56
    or a2, a2, a1
    /* store data with tagged address */
    li a3, 0x1234
    sd a3, 0(a2)
    j success

success:
    li a0, 0
    /* writing to 0x8c3 csr makes qemu to exit */
    csrw 0x8c3, a0

fail:
    li a0, 1
    /* writing to 0x8c3 csr makes qemu to exit */
    csrw 0x8c3, a0

.align 8
handler:
    /* read fault reason */
    csrr a7, mcause
    /* check if it's secure monitor fault */
    li a6, 0x10
    beq a6, a7, fail
    j fail

.align 8
test_data:
.dword 0x12345678
