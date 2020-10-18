#include <stdio.h>
#include <conio.h>
#include <string.h>

int main()
{
    char str[100],a;
    int n,l;
    l=0;
    clrscr();
    printf("\n Enter string -> \t");
    gets(str);
    printf("\n Enter Character -> \t");
    scanf("%c",&a);
    n= strlen(str);

	asm{
	lea si, str
	mov cx, n
	}
	AGAIN:
	asm{
		mov al,a
		cmp al,[si]
		jne NEXT
		inc l
	   }
	NEXT:
	asm{
		inc si
		loop AGAIN
	    }
	printf("\n The Character %c frequency is %d times ",a,l);
	getch();
	return 0;
}
