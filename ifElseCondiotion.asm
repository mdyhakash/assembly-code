.model small
.stack 100h
.data
a db ?
b db ?
msg1 db "A boro$"
msg2 db "b boro$"
msg3 db "Duitai soman$"
 
.code
main proc
    mov ax, @data
    mov ds, ax
    
    
    mov ah,1
    int 21h
    mov a,al
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    cmp bl,a
    JG l1
    JL l2
    JE l3
    
    l1:
    mov ah,9
    lea dx,msg2
    int 21h
    jmp exit
    l2:
    mov ah,9
    lea dx,msg1
    int 21h
    jmp exit
    
    l3:
    mov ah,9
    lea dx,msg3
    int 21h
    jmp exit
    
    
    
   
    
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main