.model small
.stack 100h
.data
.code

main proc
    mov bl,'a'
    mov ah,2
    mov dl,bl
    mov cx,26

    label:
    int 21h
    inc dl
    loop label

    exit:
    mov ah,4ch
    int 21h
    main endp
end main
