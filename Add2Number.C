#include<stdio.h>
#include<conio.h>
#include<math.h>
/* Program for Addition of 2 numbers */

void main()
{
int a,b,result;
printf("\nEnter nos:\n");
scanf("%d%d",&a,&b);
asm     {
mov ax,a
add ax,b
mov result,ax
}
printf("\nResult of Addition is : %d",result);
getch();
}