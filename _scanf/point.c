#include <stdio.h>
#include <stdlib.h>

void func(int * x)
{
    (*x)++;
}
int main()
{
    int x = 1;
    func(&x);
    printf("%d\n",x);
    return 0;
}