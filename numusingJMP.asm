                                   .model small
.stack 100h
.data
 
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov bl,1
    label:
    add bl,48
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    sub bl,48
    inc bl
    cmp bl,6
    JE exit
    
    
    
   
    
    JMP label
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main