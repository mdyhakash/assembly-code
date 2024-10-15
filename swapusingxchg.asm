.model small
.stack 100h

.data
a db 0
b db 0
msg1 db 10, 13, 'Enter value of a: $'
msg2 db 10, 13, 'Enter value of b: $' 
msg3 db 10, 13, 'After Exchange, value of a is: $'
msg4 db 10, 13, 'After Exchange, value of b is: $'
.code
main proc
    mov ax, @data
    mov ds, ax

    ; Prompt for value of a
    lea dx, msg1
    mov ah, 9
    int 21h

    ; Read value of a
    mov ah, 1
    int 21h
    mov a, al

    ; Prompt for value of b
    lea dx, msg2
    mov ah, 9
    int 21h

    ; Read value of b
    mov ah, 1
    int 21h
    mov b, al

    ; Exchange values of a and b using XCHG
    mov bl, a  
    xchg bl, b
    mov a, bl

    ; Display exchanged value of a
    lea dx, msg3
    mov ah, 9
    int 21h

    mov dl, a
    mov ah, 2 
    int 21h

    ; Display exchanged value of b
    lea dx, msg4
    mov ah, 9
    int 21h

    mov dl, b
    mov ah, 2 
    int 21h

    ; Exit program
    mov ax, 4C00h
    int 21h
main endp
end main