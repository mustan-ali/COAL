.model small
.stack 100h
.data
 arr1 db 1,2,3,4,5       ;Array with values   
.code

main proc
           
      mov dx,@data
      mov ds,dx
      mov bx,offset arr1  ;Load Address of 0 position of an Array in bx --> alt <si, di)  
      
     ;add,bx,3            ;Prints 4th value of Array
     ;mov dl,[bx+3]       ;Prints 4th value of Array 
     
      mov dl,[bx]         ;[bx] --> Access data from the given Address(bx)
      
      add dl,48           ;ASCII Adjustment
      
      mov ah,2
      int 21h
    
      mov ah,4ch
      int 21h
    
    main endp
end main