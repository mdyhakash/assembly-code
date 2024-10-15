;Variable concept

.model small
.stack 100h
.data
msg db 3
msg2 db ?
.code

main proc
    
    ;initialize the variable
    mov ax,@data
    mov ds,ax
    
    ;print the msg
    mov ah,2
    add msg,48 ;add 48 coz converting into decimal
    mov dl,msg
    int 21h
    
    ;taking user input for msg2
    mov ah,1
    int 21h
    mov msg2,al
    
    ;giving a newline
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;print msg2
    mov ah,2
    mov dl,msg2
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main