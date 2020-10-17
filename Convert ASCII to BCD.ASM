.model small

.data
 
 ascii dw 3637h
 bcd db ?

.code

  mov ax,@data
  mov ds,ax

  mov bx,ascii
  and bx,0f0fh
  mov cl,4
  shl bh,cl
  or bh,bl
  mov bcd,bh

  mov ah,4ch
  int 21h
  end
