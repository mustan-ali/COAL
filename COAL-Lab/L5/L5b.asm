.model small
.stack 100h
.data
 star dw 1               ;Variable star with value 1   
.code

main proc

;Printing  * 
;          **
;          ***
;          ****
;          *****
;          ******
          
          
    mov cx,@data         ;Variable cannot mov directly into General Purpose Register
    mov ds,cx
    
    mov cx,5             ;Counter for Outer Loop 
    OuterLoop:           ;Outer Loop Start
    
    mov bx,cx            ;Moving current counter value to BX
    mov cx,star          ;Moving value of star to CX
    
    InnerLoop:           ;Inner Loop End  
                        
    mov dl,'*'           ;Print *
    mov ah,2
    int 21h
                    
    loop InnerLoop       ;Inner Loop End    
    
    inc star             ;Increment value in variable
    
    mov dl,10            ;Newline
    mov ah,2
    int 21h

    mov dl,13            ;Backspace
    mov ah,2
    int 21h

    mov cx,bx            ;Moving current counter value back to CX
    loop OuterLoop       ;Outer Loop End
    
    mov ah,4ch
    int 21h
    
    main endp
end main