.model small
.stack 100h
.data

input db 10 dup ('$')   ;Array with $ in every index    dup (duplicate)     $->String Terminator   hello$$$$$   

.code

main proc 
 
;Takes UpperCase input, converts it to LowerCase, and stores it in an Array.

    mov ax,@data
    mov ds,ax
    mov bx,offset input ;Load Address of 0 position of an Array in bx --> alt <si, di)  
     
    start:              ;Loop Name
    mov ah,1            ;User Input   
    int 21h                        
     
    cmp al,13           ;Compare if user has pressed Enter Key
    je end1             ;Conditional Jump
    
    cmp al,32           ;Compare if user has pressed Space Bar
    je space
    
    add al,32           ;;Adding 32 in AL to convert Upper Case to Lower Case
    
    space:           
    mov [bx],al         ;[bx]-> Address
    inc bx              ;Array Index Increment
    
    jmp start           ;Unonditional Jump
     
    end1:               ;Loop Name
     
    mov ah,2            ;Newline
    mov dl,10
    int 21h  
    
    mov ah,2            ;Backspace
    mov dl,13
    int 21h
    
    mov dx,offset input ;Printing Array(input)
    mov ah,9            ;Display String
    int 21h
   
         
    mov ah,4ch
    int 21h
    
    main endp
end main      