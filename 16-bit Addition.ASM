.model small
.stack 100
.data
 
 no1 dw 1122h
 no2 dw 2244h
 result dw ?
 carry db 00h

.code

  mov ax,@data
  mov ds,ax

  mov bx,no1
  add bx,no2
  mov result,bx

      jnc next
      mov carry,01h
next: mov ah,4ch
      int 21h
      end 
