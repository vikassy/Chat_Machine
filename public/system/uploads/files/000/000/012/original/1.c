#include <stdio.h>
#include <stdlib.h>

int main()
{   int n,p;
    scanf("%d",&n);
    p=1;
    while(n>1)
    {
        p=p*n;
        n=n/2;
    }
    printf("%d",p);
    return 0;
}
