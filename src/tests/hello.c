//#include<stdio.h>
//#include<unistd.h>
int main ()
{
	//printf("Annyeong!\n");
	//getchar();
    asm("li a0, 0xAB");             /* load immediate 0xAB to a0 */
    asm("li a1, 0x80000000");       /* a1 = 0x8000 0000 */
    asm("st a0, 0(a1)");            /* store tag a0 to a1 */
    asm("lt a2, 0(a1)");            /* load tag a1 to a2 */
    return 0;
	//asm("li a0, 1");
    /* writing to 0x8c3 csr makes qemu to exit */
    //asm("csrw 0x8c3, a0");
	//sleep(999999999);
}
