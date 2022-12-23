print macro p1,p2    ;macro start p1,p2-->parameter
    
    lea dx,p1
    mov ah,9
    int 21h 
    
endm                 ;macro end  
          
          
newline macro        ;macro without parameter
       
    mov dl,13
    mov ah,2
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h 
    
endm                 ;macro end

.model small
.stack 100h
.data  

msg1 dw 'Hello$'
msg2 dw 'World$'

.code

main proc
    
    mov ch, 0        ;cursor size
    mov cl, 7
    mov ah, 1
    int 10h  
     
    mov ax,@data
    mov ds,ax
    
    print msg1
    newline
    print msg2
    
    mov dh, 5        ;cursor position
	mov dl, 10
	mov bh, 0
	mov ah, 2
	int 10h
     
    
     
    mov ah,1
    int 21h
           
    mov ah,4ch
    int 21h
    
    main endp
end main   
