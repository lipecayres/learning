#include <stdio.h>
#include <cs50.h>
#include <ctype.h>

int main (void)
{
    char *s = get_string("s: ");
    char *t = get_string("t: ");
    if (*s == *t)
    {
        printf("Same\n");
    }
    else
    {
        printf("Different\n");
    }
}