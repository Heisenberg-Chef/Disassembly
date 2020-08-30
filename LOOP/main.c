#include <stdio.h>
#include <stdlib.h>

void print_function(int i)
{
    printf("f(%d)\n",i);
}



int main()
{
    int i;

    for(i=2;i<=10;i++)
    {
        print_function(i);
    }
    
     return 0;
}