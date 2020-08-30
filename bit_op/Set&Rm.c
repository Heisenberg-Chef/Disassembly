#include <stdio.h>

#define IS_SET(flag,bit)    ((flag)&(bit))
#define SET_BIT(var,bit)    ((var)|=(bit))
#define REMOVE_BIT(var,bit) ((var)&=~(bit))

int f(int a)
{
    int rt = a;
    // printf("%X\n",SET_BIT(rt,0x4000));
    // printf("%X\n",REMOVE_BIT(rt,0x200));
    return rt;j
}

int main()
{   
    f(0x12345678);
    return 0;
}