#include<stdio.h>
#include<conio.h>
#include<string.h>

void main()
{
	char s[100];
	int n;
	clrscr();
	printf("Enter String in LowerCase ->");
	gets(s);
	n = strlen(s);
	asm{
		mov cx,n
		lea si,s
	}
		up:
	asm{
		mov al,[si]
		sub al,32
		mov [si],al
		inc si
		loop up
	}
	printf("Your String in UpperCase -> %s",s);
	getch();
}

