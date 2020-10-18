.model small

.data
 
 bcd db 42h
 ascii dw ?

.code

  mov ax,@data
  mov ds,ax

  mov bl,bcd
  mov bh,bcd
  and bl,0fh
  and bh,0f0h
  mov cl,4
  shr bh,cl
  or bx,3030h
  mov ascii,bx

  mov ah,4ch
  int 21h
  end
