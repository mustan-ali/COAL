.model small  
.stack 100h   
.data
.code
main proc
    
;Printing Name & Reg No.
    
    mov dl,4Dh  ;M--> HEXA=4D
    mov ah,2    ;service routine
    int 21h
           
    mov dl,75h
    mov ah,2   
    int 21h
                      
    mov dl,73h
    mov ah,2   
    int 21h
               
    mov dl,74h
    mov ah,2   
    int 21h
               
    mov dl,61h
    mov ah,2   
    int 21h
               
    mov dl,6Eh
    mov ah,2   
    int 21h 
            
    mov dl,20h
    mov ah,2   
    int 21h
    
    mov dl,41h
    mov ah,2   
    int 21h
    
    mov dl,6Ch
    mov ah,2   
    int 21h
    
    mov dl,69h
    mov ah,2   
    int 21h   
    
    mov dl,0Ah   ;Newline
    mov ah,2   
    int 21h
    
    mov dl,0Dh   ;Remove Backspace
    mov ah,2   
    int 21h                     
           
    mov dl,32h
    mov ah,2   
    int 21h
    
    mov dl,31h
    mov ah,2   
    int 21h
    
    mov dl,31h
    mov ah,2   
    int 21h  
    
    mov dl,32h
    mov ah,2   
    int 21h
    
    mov dl,31h
    mov ah,2   
    int 21h  
    
    mov dl,32h
    mov ah,2   
    int 21h
    
    mov dl,31h
    mov ah,2   
    int 21h     
       
            
    mov ah,4ch     ;To return control to Processor again (stop program)
    int 21h
    
          
    main endp
end main   

     
     
;REGISTERS     
;Accumulator Ax (hold value)           <AH AL> Ah(uses upper 8bits) Al(uses lower 8bits)
;Base        Bx <hold address>         <BH BL>
;Counter     Cx <store the loop count> <BH BL>
;Data        Dx <input/output value>   <DH DL>  
          
          
;.model small   Code Segment 64KB
;.stack 100h    Data Segment 64KB
;main proc      procedure directive
;dl--> general purpose register to print value (8-Bit DL)(16-Bit DX) 
;[Label:] instruction [operands]
;21h--> used for text handling
;0720:0002  Logical Address(output)