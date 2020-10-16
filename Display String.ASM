
.model small
.stack 100
.data
        str1  db  'Hw r u !$'
.code
        mov ax,@data
	mov ds,ax

	lea dx,str1
	mov ah,09h
	int 21h

        mov  ah,4ch
	int  21h
        end
