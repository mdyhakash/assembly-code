.model small
.stack 100h
.code
.data 

main proc                  
    mov ah,1
    int 21h
    
    mov ah,2
    mov dl,al
    add dl,32
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    