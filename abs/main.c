#include <stdio.h>

int my_abs(int i)
{
    if(i < 0)
        return -i;
    else
    {
        return i;
    }
}


int main()
{
    int i = my_abs(-2);
    printf("%d\n",i);   
    return 0;
}