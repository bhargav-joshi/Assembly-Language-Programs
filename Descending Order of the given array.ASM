.model small

.data
 
 array db 55h,23h,17h,76h,87h

.code

  	mov ax,@data
  	mov ds,ax

  	mov bl,4
  back: lea si,array
  	mov bh,4
  again:mov al,[si]
  	inc si
  	cmp al,[si]
 	jnc next
  	mov ah,[si]
  	mov [si],al
  	mov [si-1],ah
  next: dec bh
  	jnz again
  	dec bl
  	jnz back

  	mov ah,4ch
  	int 21h
  end
