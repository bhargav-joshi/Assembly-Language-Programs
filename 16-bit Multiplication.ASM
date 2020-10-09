.model small

.data
 
 no1 dw 0004h
 no2 dw 0002h
 result_low dw ?
 result_high dw ?

.code

  mov ax,@data
  mov ds,ax

  mov ax,no1
  mul no2
  mov result_low,ax
  mov result_high,dx

  mov ah,4ch
  int 21h
  end
