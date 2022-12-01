.model small
.stack 100h     
;Store 100 bytes for Stack (1 Stack--> 8bits)
;SP--> Stack Pointer hold address of Top
;SS--> Stack Segment Register 
;Push--> To Write Data in Stack (uses 16-Bit register)
;Pop--> To Read Data from Stack (uses 16-Bit register)
.data

main proc 
    
    mov ax,2
    mov bx,4
    mov cx,6
    mov dx,8
    
    push ax
    push bx
    push cx
    push dx 
    
    pop cx      ;8  pop cx,ax,dx,bx all will return 8(top)  (current SP)
    pop ax      ;6  (SP after pop cx)
    pop dx      ;4  (SP after pop ax)
    pop bx      ;2  (SP after pop dx)
    
    mov ah,4ch
    int 21h
    
    main endp         
end main