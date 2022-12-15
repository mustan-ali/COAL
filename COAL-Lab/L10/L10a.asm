.model small
.stack 100h
.data

.code

main proc

 
    mov al,2
    mov bl,3
    
    mul bl
;----------------------
    mov ax,10
    mov bx,2
    
    mul bx
    
;----------------------
    mov ah,4ch
    int 21h
    
main endp
end main      



;8 Bit Multiplication
;2    * 3    = 6
;AL   * BL   = AX
;8Bit * 8Bit = 16Bit
  
  
;16 Bit Multiplication
;AX    * BX    = DX AX
;16Bit * 16Bit = 32Bit  

;IMUL --> to Multiply -ve numbers (8th Bit Signed Bit)



;8 Bit Division  

;            Quotient
;          |----------|
;   Divisor| Divident |
;           __________
;            Remainder
;
;Divisor --> BL
;Divident --> AX
;Remainder --> AH
;Quotient --> AL
          
          
;16 Bit Division
;Divisor --> 16 Bit Reg(BX) 
;Divident -->max 32 Bit Value (DX,AX)
;Remainder --> DX
;Quotient --> AX

;IDIV --> to Divide -ve numbers (8th Bit Signed Bit)
                                                