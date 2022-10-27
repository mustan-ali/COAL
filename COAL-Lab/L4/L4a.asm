.model small  
.stack 100h   
.data
.code
main proc

;Print A to Z using Loop
 
    
    mov dl,65    ;Moving ASCII value of A into DL
    
    mov cx,26    ;Loop Counter (26 Alphabets)
    loop1:       ;Loop Start
        
      
    mov ah,2     ;Printing DL value
    int 21h
    
    inc dl       ;Incrementing ASCII value in DL Register
    
    loop loop1   ;Loop End
          
    mov ah,4ch
    int 21h
          
    main endp
end main