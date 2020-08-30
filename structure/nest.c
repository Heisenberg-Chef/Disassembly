#include <stdio.h>

struct inner_struct
{
    int a;
    int b;
};

struct outer_struct{
    char a;
    int b;
    struct inner_struct c;
    char d;
    int e;
};

int main()
{
    struct outer_struct s;
    s.a = 1;
    s.b = 2;
    s.c.a = 100;
    s.c.b = 101;
    s.d = 3;
    s.e = 4;

    return 0;
}