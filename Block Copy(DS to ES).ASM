.model small

.data
  block1 db 11h,33h,44h,55h,77h

extra segment
  block2 db 5 dup (?)
extra ends
 
.code

  mov ax,@data
  mov ds,ax
     
  lea si,block1
  lea di,block2
  mov cx,5
  cld
  rep movsb  

  mov ah,4ch
  int 21h
  end
