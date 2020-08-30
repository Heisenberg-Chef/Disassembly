#include <alloca.h>

#include <stdio.h>

#include <stdlib.h>

void f()
{
    char * buf = (char *)alloca(600);
#ifdef __GNUC__
    snprintf(buf,600,"hi %d,%d,%d\n",1,2,3);    //gcc
#else
    _snprintf(buf,600,"hi %d,%d,%d");           //MSVC 
#endif
    puts(buf);
}