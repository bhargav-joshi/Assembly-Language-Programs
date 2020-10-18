#include<stdio.h>
#include<conio.h>
#include<string.h>

void main()
{
	char s[100];
	int n;
	clrscr();
	printf("Enter String in UpperCase ->");
	gets(s);
	n = strlen(s);
	asm{
		mov cx,n
		lea si,s
	}
		low:
	asm{
		mov al,[si]
		add al,32
		mov [si],al
		inc si
		loop low
	}
	printf("Your String in LowerCase -> %s",s);
	getch();
}

