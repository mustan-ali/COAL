.model small
.stack 100h
.data
.code

main proc
;Convert Lower case to Upper Case using AND.    
    mov ah,1
    int 21h
    and al,11011111b    ;Diff b/w Upper & Lower 32 (Reset 6th bit->32
    
    mov dl,al
    mov ah,2
    int 21h

;Convert Upper case to Lower Case using OR.         
    mov ah,1
    int 21h
    or al,00100000b    ;Diff b/w Upper & Lower 32  (Set 6th bit->32
    
    mov dl,al
    mov ah,2
    int 21h  
    
;Toggle Case using XOR.
    mov ah,1
    int 21h
    xor al,00100000b    ;Diff b/w Upper & Lower 32 (invert 6th bit->32
    
    mov dl,al
    mov ah,2
    int 21h
     
    
    mov ah,4ch
    int 21h 
        
    main endp
end main  
     

;reset = 0 = low  
;set = 1 = high   
;clear = 0 = low  

;AND-->To Set/Reset value                                       
;0--> to reset no. of bit
;1--> to remain unchange
;A B Y
;0 0 0
;0 1 0
;1 0 0
;1 1 1



;OR-->To Set value
;0--> to remain unchange
;1--> to set no. of bit
;A B Y
;0 0 0
;0 1 1
;1 0 1
;1 1 1
     
     

;NOT-->To Invert Bits(data stream)    (NOT AL --> 011001 -> 100110)
;A Y
;1 0
;0 1                              



;XOR 
;0--> to remain unchange
;1--> to invert no. of bit
;A B Y
;0 0 0
;0 1 1
;1 0 1
;1 1 0