.model small
.stack 100h


.data  
.code 

main proc
    
    Akash:
    mov ah,2
    mov dl,5
    add dl,48
    int 21h
    
    jmp mamun
    
    mamun:
    mov ah,2
    mov dl,3
    add dl,48
    int 21h
    
    jmp exit
    exit:
    mov ah,4ch
    int 21h
    main endp
end main