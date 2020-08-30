#include <stdio.h>
#include <stdlib.h>

void f(int a)
{
    switch(a)
    {
        case 0:printf("zero\n");break;
        case 1:printf("one\n");break;
        case 2:printf("two\n");break;
        default:break;
    };
}

int main()
{
    f(2);
}