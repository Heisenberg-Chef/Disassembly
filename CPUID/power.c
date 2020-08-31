#include <stdio.h>
#include <stdlib.h>

int double_time(int a,int b)
{
    __asm__ __volatile__("mov %%rax,%%rbx":"=r"(a):"r"(b));
    return a;
}

int main()
{
    int i = double_time(2,1);
    printf("%d\n",i);
    return 0;
}