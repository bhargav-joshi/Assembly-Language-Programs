#include<stdio.h>
#include<conio.h>
#include<string.h>

int main()
{
	char str[100],rev[100];
	int n;
	clrscr();
	printf("\n Please Enter a string :=> ");
	gets(str);
	n = strlen(str);
	strcpy(rev,str);
	strrev(rev);
	asm{
		LEA SI, str
		LEA DI, rev
		MOV CX, n
	}
	again:
	asm{
		mov al, [SI]
		cmp al, [DI]
		jnz not_equal
		inc SI
		inc DI
		loop again
		jmp equal
	}
	not_equal:
	printf("\n String is not Palindrome");
	getch();
	return 0;

	equal:
	printf("\n String is Palindrome ");
	getch();
	return 0;

}