.model small
.stack 100h
.data  
.code

main proc
     
     ;Types of JUMP 
     ;Conditional Jump   --> JE Label, JNE Label, JZ Label, JNZ Label 
     ;Unconditional Jump --> JMP Label
     
     ;CMP --> Compare 
     ;Flag Register --> Hold status
     
     start:              ;Loop Name
     mov ah,1            ;User Input   
     int 21h                        
     
     cmp al,13           ;Compare if user has pressed Enter Key
     je end1             ;Conditional Jump
     jmp start           ;Unconditional Jump
     
     end1:               ;Loop Name
        
     mov ah,4ch
     int 21h
    
    main endp
end main