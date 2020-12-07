.model small
.stack 100
.data
cr equ 0dh
lf equ 0ah
num1 db ?
num2 db ?
msg1 db cr,lf,"Enter the first number to add",cr,lf,'$'
msg2 db cr,lf,"Enter the second number to add",cr,lf,'$'
msg3 db cr,lf,"Result of addition is:",cr,lf,'$'

.code
        mov ax,@data
        mov ds,ax
        lea dx,msg1
        mov ah,09h
        int 21h
        mov ah,01h
        int 21h
        sub al,'0'
        mov bl,al
        lea dx,msg2
        mov ah,09h
        int 21h
        mov ah,01h
        int 21h
        sub al,'0'
        add al,bl
        daa
        mov bh,al
        mov bl,bh
        and bl,0f0h
        mov cl,4
        shr bl,cl
        add bl,30h
        lea dx,msg3
        mov ah,09h
        int 21h
        mov dl,bl
        mov ah,02h
        int 21h
        mov dl,bh
        and dl,0fh
        add dl,30h
        mov ah,02h
        int 21h
        mov ah,4ch
        int 21h
        end

