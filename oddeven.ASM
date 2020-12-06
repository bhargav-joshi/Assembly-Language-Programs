.model small
.stack 100
.data
cr equ 0dh
lf equ 0ah
instruction db cr,lf,"Enter a digit (0-9) or press Q to quit --------",cr,lf,'$'
errormsg db cr,lf,"The character is not a digit",cr,lf,'$'
oddmsg db cr,lf,"No doubt, the digit is odd one",cr,lf,'$'
evenmsg db cr,lf,"No doubt, the digit is even one",cr,lf,'$'

.code
    mov ax,@data
    mov ds,ax
    lea dx,instruction
    mov ah,09h
    int 21h
    getch:
            mov ah,01h
            int 21h
            cmp al,'q'
            je quit
            cmp al,'Q'
            je quit
            lea dx,errormsg
            sub al,'0'
            cmp al,9
            jnbe display1
            rcr al,1
            lea dx,oddmsg
            jc display1
            lea dx,evenmsg
    display1:
             mov ah,09h
             int 21h
             jmp getch
    quit:
         mov ah,4ch
         int 21h
         ends
         end
