.model small
.stack 100h
.data
.code

main proc
    mov  bl,50
    mov cx,10
    label:    
    mov ah,2
    mov dl,bl
    int 21h
    add bl,2
    cmp bl,58    
    je exit:
    loop label
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
