.model small  
.stack 100h   
.data
.code
main proc

;Two Types of Inputs (Echo & without Echo)     
    mov ah,1    ;with echo
    int 21h     ;input stores in AL 
     
    mov ah,7    ;without echo  
    int 21h
     
    mov dl,AL  ;AL value moved to dl
    mov ah,2
    int 21h 
          
          
;* is printed if value is entered          
    mov ah,7      
    int 21h
    
    mov dl,2Ah
    mov ah,2
    int 21h
         

    
;Addition between Two Numbers (2+3=5)    
    mov bh,2    ;Dec Value  
    add bh,3    ;Dec Value  
    
    mov dl,bh
    add dl,48   ;ASCII Adjustment
    mov ah,2
    int 21h 
            
            
            
;Giving Control back to Processor    
    mov ah,4ch
    int 21h  
          
    main endp
end main        


;echo           display and store input  
;without echo   only  store input        
     
 