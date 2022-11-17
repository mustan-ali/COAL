.model small
.stack 100h
.data

name1 db 'Name: Mustan Ali$'
reg db 'Reg No. 2112121$'
ins db 'Institute: SZABIST$'
email db 'Email: mustan@duck.com$' 

.code

main proc 

;Print info using nested procedure.
 
    mov ax,@data
    mov ds,ax
    
    mov dx, offset name1     ;lea dx,name1 (alternate)
    call display             ;calling procedure display
    
    mov dx, offset reg
    call display
    
    mov dx, offset ins
    call display
       
    mov dx, offset email
    call display
         
    mov ah,4ch
    int 21h
    
    main endp

display proc                ;procedure start
    mov ah,9
    int 21h
    call newline            ;calling other procedure (nested procedure)
    ret
    display endp            ;procedure end


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