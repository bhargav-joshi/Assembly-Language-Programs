.model small

.data
 
 array db 55h,23h,17h,76h,87h
 largest db ?

.code

  mov ax,@data
  mov ds,ax

  lea si,array
  mov cx,4
  mov al,[si]
  again:inc si
  cmp al,[si]
  jnc next
  mov al,[si]
  next:loop again
  mov largest,al

  mov ah,4ch
  int 21h
  end
