.model small
.stack 100h
.data  
.code

main proc
     
    mov cx,5            ;Outer Loop Counter        General Purpose Register used as counter
    OuterLoop:          ;Outer Loop Start
    
    mov bx,cx           ;Moving CX counter to BX
    
    mov dl,'#'          ;Printing #
    mov ah,2
    int 21h
    
    mov cx,3            ;Inner Loop Counter        General Purpose Register used as counter
    InnerLoop:          ;Inner Loop Start
    
    mov dl,'*'          ;Printing *;    mov ah,2
    int 21h
    
    loop InnerLoop      ;Inner Loop End
    
    mov cx,bx           ;Moving BX into CX
    loop OuterLoop      ;Outer Loop End
  
    
    mov ah,4ch
    int 21h
    
    main endp
end main