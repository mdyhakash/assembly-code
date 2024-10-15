;take input output


.model small
.stack 100h
.code

main proc
    
    ;taking input 1
    mov ah,1
    int 21h
    mov bl,al
    
    ;taking input 2
    mov ah,1
    int 21h
    mov bh,al      
    
    ;displaying 
    mov ah,2
    mov dl,bl
    int 21h 
    
    ;displaying 2nd
    mov ah,2
    mov dl,bh
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp

end main