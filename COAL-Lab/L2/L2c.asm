.model small  
.stack 100h   
.data
.code
main proc

;Addition between Two Decimal Number   
    mov ah,1    ;input ASCII saved in AL
    int 21h     ;2-->  ASCII=50
                
                                                       
    sub al,48   ;50-48=2        
    mov ch,al   ;ch=2
    
    mov dl,43   ;print + between numbers
    mov ah,2
    int 21h
    
    mov ah,1    ;input ASCII saved in AL
    int 21h     ;3-->  ASCII=51
    
  
    sub al,48   ;AL=51-48=3
    add ch,al   ;ch=2+3=5
    
    mov dl,61   ;print = before anser
    mov ah,2
    int 21h
         
    mov dl,ch    
    add dl,48   ;dl=5+48 =53
    
    mov ah,2
    int 21h 
     
    mov ah,4ch
    int 21h

          
    main endp
end main         