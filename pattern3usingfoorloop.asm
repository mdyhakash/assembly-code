.model small
.stack 100h
.data
a db ?
.code

main proc
    mov a,1
    mov cx,5
    mov bl,1
    
    
    top:
    mov bh,a
    
    label:
    mov ah,2
    mov dl, 48
    add dl,bl
    int 21h
    inc bh
    cmp bh,bl
    jle label
    inc bl  
    
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
