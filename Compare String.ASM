.model small
.stack 100
.data
        str1  db  'good1$'
        str2  db  'good1$'
        msgeq   db 'They are Equal$'
        msgneq  db 'They are not Equal$'
.code
        mov ax,@data
	mov ds,ax
        mov es,ax

        mov cx,5
	lea  si,str1
	lea  di,str2
	cld
	repz  cmpsb
	cmp   cx,0000h
        jz    Dispequal
	lea   dx,msgneq
	mov   ah,09
	int   21h
   	jmp   last
Dispequal : lea  dx,msgeq
	mov  ah,09
	int  21h

last: 	mov  ah,4ch
	int  21h
        end
