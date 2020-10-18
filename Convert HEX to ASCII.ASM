.model small

.data
 
 hex db 0dh
 ascii db ?

.code

  mov ax,@data
  mov ds,ax

  mov bl,hex
  cmp bl,09h
  ja next
  add bl,30
  jmp store
  next:cmp bl,0fh
  ja error
  add bl,37h
  jmp store
  error:  mov bl,0ffh
  store:  mov ascii,bl

  mov ah,4ch
  int 21h
  end
