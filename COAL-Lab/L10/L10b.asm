.model small
.stack 100h
.data

.code

main proc
     
     mov ax,11
     mov bl,2
     
     div bl
     
     mov ah,4ch
     int 21h
    
main endp
end main      