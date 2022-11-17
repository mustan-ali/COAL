.model small
.stack 100h
.data

msg db 'Hello World$' 

.code

main proc 

;Print msg using procedure.
 
    mov ax,@data
    mov ds,ax
    
    mov dx, offset msg       ;lea dx,msg (alternate)
    call display             ;calling procedure display
    call newline             ;calling procedure newline
             
    mov ah,4ch
    int 21h
    
    main endp

display proc                 ;procedure start
    mov ah,9
    int 21h
    ret
    display endp             ;procedure end


newline proc
    mov ah,2
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    ret
    newline endp

end main      