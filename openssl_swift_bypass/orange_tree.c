#include "orange_tree.h"
#include <stdio.h>

void static generateRow(int i)
{
    int x = 0, y = 0, stars = (10 - i);
    
    do // the spaces
    {
        if(y == 0)
            printf("*");
        else
            printf(" ");
        y++;
    }while(y<=i);
    
    while(x<stars) // the stars
    {
        printf("*");
        x++;
    }
    x = 0, y = 0;
    
}

void generateScreen()
{
    const int rows = 10, repeater = 4;
    int i, y = 0;
    
    for(i = 0; i <= rows; i++) {
        do {
            generateRow(i);
            y++;
        }while(y <= repeater);
        y = 0;
    printf("\n");
    }
    i = 0;

    printf("\n\n");
}
