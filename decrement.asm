.model small
.stack 100h
.data
a db 0
m1 db 10,13, 'BF DEC: $' 
m2 db 10,13, 'AF DEC: $'
.code

main proc
    mov ax, @data
    mov ds, ax
    
    lea dx,m1
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov a,al
    
    lea dx,m2
    mov ah,9
    int 21h
    
    dec a
    mov al,a
    
    mov ah,2
    mov dl,al
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main