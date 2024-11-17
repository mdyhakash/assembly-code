.model small
.stack 100h
.data
.code

main proc
    mov cx,5
    
    top:
    mov bl,1
    
    label:
    mov ah,2
    mov dl, "*"
    int 21h
    inc bl
    cmp bl,5
    jl label
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    loop top
    
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main