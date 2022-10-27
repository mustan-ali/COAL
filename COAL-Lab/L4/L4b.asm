.model small  
.stack 100h   
.data
.code
main proc

;Print Triangle using Loop
     
    mov cx,5        ;Counter for Outer Loop (will run 5 times)
    OuterLoop:      ;Outer Loop Start
    
    mov bx,cx       ;Moving current counter value to BX
    InnerLoop:      ;Inner Loop End  
    
    mov dl,'*'      ;Print *
    mov ah,2
    int 21h
    
    loop InnerLoop  ;Inner Loop End
   
    mov dl,10       ;Newline
    mov ah,2
    int 21h

    mov dl,13       ;Backspace
    mov ah,2
    int 21h

    mov cx,bx       ;Moving current counter value back to CX
    loop OuterLoop  ;Outer Loop End
            
    mov ah,4ch
    int 21h
          
    main endp
end main