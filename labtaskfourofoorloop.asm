.model small
.stack 100h
.data
.code

main proc
    mov cx,9 
    
    label:
    mov ah,2
    mov dl,cl
    add dl,48
    int 21h
    
    loop label
    mov ah,2
    mov dl,48
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
