#include<stdio.h>
#include<string.h>
int main()
{
    char a[]={"fb"};   
    char b[]={"tnmhjh"};
    char c[10];
    
    memcpy( c, &b[3], 2 );
    c[2] = '\0';
    
    puts(c);
}
