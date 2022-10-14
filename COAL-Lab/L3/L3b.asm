.model small
.stack 100h
.data
            
; var_1 data type
;       size
;       DB   ;define byte: 8 bit
;       DW   ;define word: 16 bit
;       DD   ;define double word: 32 bit
       
;num_1 db 2              ;Variable num_1 holding integer 2       
;num_2 db 3
;sum db ?

;msg db 'Hello World$'   ;$-->String Terminator
msg1 db 'Name: Mustan Ali$'
msg2 db 'Reg No. 2112121$'
msg3 db 'Email: mustan@duck.com$'
            
.code
main proc
    
    mov  ax,@data
    mov ds,ax            ;DS-->Data Segment Register  
     
;    mov dx,offset msg   ;dx-->dx is 16 bit register
;    mov ah,9            ;9--> to display string
;    int 21h 
    
    
    mov dx,offset msg1
    mov ah,9
    int 21h
          
    mov dl,10            ;Newline
    mov ah,2
    int 21h
    
    mov dl,13            ;Backspace
    mov ah,2
    int 21h    
          
    mov dx,offset msg2
    mov ah,9
    int 21h
 
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    mov dx,offset msg3
    mov ah,9
    int 21h
     
    mov ah,4ch
    int 21h  
      
    main endp
end main