.model small
.stack 100h     
.data

main proc 
;Print input values in reverse using Stack

    
    mov cx,3
    Inputloop:
    
    mov ah,1
    int 21h

    push ax
    
    mov ah,0    ;Resetting AH back to 0
                    
    loop InputLoop   
    
    mov cx,3
    OutputLoop: 
  
    pop ax
    mov dx,ax
    
    mov ah,2
    int 21h 
    
    loop OutputLoop

    
    mov ah,4ch
    int 21h
    
    main endp         
end main