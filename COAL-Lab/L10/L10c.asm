.model small
.stack 100h
.data

.code

main proc
;Take 2 Input from user and perform muliplication b/w them.
      
      mov ah,1      ;ASCII Input    AL=50
      int 21h      
      sub al,48     ;               AL=2
      mov bl,al     ;BL=2
      
      mov dl,'*'                  
      mov ah,2
      int 21h
      
      mov ah,1      ;ASCII Input    AL=51
      int 21h      
      sub al,48     ;               AL=3
      
      mul bl        ;2*3=6     
    
      aam           ;AH=0  AL=6
  
      mov bl,al     ;CL=6  
      mov bh,ah     ;DL=0 
       
       
      mov dl,'='
      mov ah,2
      int 21h  
       
      
      mov dl,bh     ;DL=0           
      add dl,48     ;DL=48
      mov ah,2
      int 21h
       
      mov dl,bl     ;DL=6
      add dl,48     ;DL=54
      mov ah,2
      int 21h

      mov ah,4ch
      int 21h
    
main endp
end main      