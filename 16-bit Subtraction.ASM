.model small

.data
 
 no1 dw 1000h
 no2 dw 2244h
 result dw ?
 borrow db 00h

.code

  mov ax,@data
  mov ds,ax

  mov bx,no1
  sub bx,no2
  mov result,bx

  jnc next
  mov borrow, 01h

next:
  mov ah,4ch
  int 21h
  end
