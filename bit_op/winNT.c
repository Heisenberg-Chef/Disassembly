#include <windows.h>

int main()
{
    HANDLE fh;

    fh=CreateFile("file.txt",GENERIC_WRITE|GENERIC_READ,FILE_SHARE_READ,NULL,OPEN_ALWAYS,FILE_ATTRIBUTE_NORMAL,NULL);
    return 0;
}