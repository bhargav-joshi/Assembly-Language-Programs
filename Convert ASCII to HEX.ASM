.model small

.data
 
 ascii db 45h
 hex db ?

.code

  mov ax,@data
  mov ds,ax

  mov bl,ascii
  cmp bl,30h
  jb error
  cmp bl,39h
  ja next
  sub bl,30h
  jmp store
  next:
  cmp bl,41h
  jb error
  cmp bl,46h
  ja error
  sub bl,37h
  jmp store
  error:  mov bl,0ffh
  store:  mov hex,bl

  mov ah,4ch
  int 21h
  end
