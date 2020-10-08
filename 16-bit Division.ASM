.model small

.data
 
 no1 dw 0009h
 no2 dw 0002h
 quotient dw ?
 remainder dw ?

.code

  mov ax,@data
  mov ds,ax

  mov ax,no1
  mov dx,0000h
  div no2
  mov quotient,ax
  mov remainder,dx    
  mov ah,4ch
  int 21h
  end
