.model small
.stack 100h
.data
msg db "Hello World!$"  
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov bl,0
    label:
    
    mov ah,9
    lea dx,msg
    int 21h
    
    
    mov ah,2
    mov dl,10
    int 21h
    
    mov dl,13
    int 21h
    
    
    inc bl
    
    cmp bl,8
    JE exit
    
    JMP label
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main