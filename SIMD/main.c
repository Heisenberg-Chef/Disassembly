#include <stdlib.h>
#include <stdio.h>

int f(int sz,int *ar1,int *ar2,int *ar3)
{
    for(int i = 0;i<sz;i++)
    {
        ar3[i] = ar1[i] + ar2[i];
    }
    return 0;
}

