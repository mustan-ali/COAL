.model small  
.stack 100h   
.data
.code
main proc

;Addition between Two Decimal Number 
;..........................................................  
    mov ah,1     ;input ASCII saved in AL
    int 21h      ;6-->  ASCII=54
                                                                       
    sub al,48    ;54-48=6        
    mov ch,al    ;ch=6
;..........................................................    
    mov dl,'+'   ;print + between numbers
    mov ah,2
    int 21h
;..........................................................    
    mov ah,1     ;input ASCII saved in AL
    int 21h      ;4-->  ASCII=52
      
    sub al,48    ;AL=52-48=4
    add ch,al    ;ch=6+4=10
;..........................................................    
    mov al,ch
    aam          ;ASCII Adjust after Multiplication(access only AL register)
                 ;ch = al
                 ;AH = Quotient-->1
                 ;AL = Remainder -->0
    
    mov bl,al    ;bl-->al=0
    mov bh,ah    ;bh-->ah=1
;..........................................................             
    mov dl,'='   ;print = before answer
    mov ah,2
    int 21h
;..........................................................         
    mov dl,bh    ;dl-->bh=1
    add dl,48    ;dl=1+48 =49
       
    mov ah,2
    int 21h 
;..........................................................              
    mov dl,bl    ;dl-->bl=0
    add dl,48    ;dl=0+48 =48
       
    mov ah,2
    int 21h            
;..........................................................              
    mov ah,4ch
    int 21h
          
    main endp
end main