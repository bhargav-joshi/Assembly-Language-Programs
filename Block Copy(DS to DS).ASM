.model small

.data
  block1 db 11h,33h,44h,55h,77h
  block2 db 5 dup(?)
 
.code

  mov ax,@data
  mov ds,ax
           
  lea si,block1
  lea di,block2
  mov cx,5

  back:  mov al,[si]
         mov [di],al
         inc si
         inc di
         loop back
 
  mov ah,4ch
  int 21h
  end
