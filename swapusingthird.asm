.model small                ; Define the memory model as small
.stack 100h                 ; Allocate 256 bytes for the stack
.data                       ; Start of the data segment

msg1 db 10, 13, "A: $" 
msg2 db 10, 13, "B: $" 
msg3 db 10, 13, "After swapping, The value of a: $" 
msg4 db 10, 13, "After swapping, The value of b: $"  

a db ?                     ; Declare a variable for value a
b db ?                     ; Declare a variable for value b 

.code                     ; Start of the code segment
main proc                 ; Define the main procedure
    mov ax, @data         ; Load the address of the data segment into AX
    mov ds, ax            ; Move the value of AX into DS (data segment register)

    ; Display msg1
    mov ah, 9             ; Function 9: Display string
    lea dx, msg1          ; Load the address of msg1 into DX
    int 21h               ; Call DOS interrupt to display the string
    
    mov ah, 1             ; Function 1: Read character from standard input
    int 21h               ; Read a character into AL
    mov a, al             ; Store the character read into variable a 
    
    ; Display msg2
    mov ah, 9             ; Function 9: Display string
    lea dx, msg2          ; Load the address of msg2 into DX
    int 21h               ; Call DOS interrupt to display the string 
    
    mov ah, 1             ; Function 1: Read character from standard input
    int 21h               ; Read a character into AL
    mov b, al             ; Store the character read into variable b
    
    ; Exchange values using a third register
    mov al, a             ; Load value of a into AL
    mov cl, b             ; Load value of b into CL (third register)
    mov a, cl             ; Move value from CL to a
    mov b, al             ; Move value from AL (original a) to b
    
    ; Display msg3
    mov ah, 9             ; Function 9: Display string
    lea dx, msg3          ; Load the address of msg3 into DX
    int 21h               ; Call DOS interrupt to display the string 
    
    mov ah, 2             ; Function 2: Display character
    mov dl, a             ; Move value of a into DL to display it
    int 21h               ; Call DOS interrupt to display the character
    
    ; Display msg4
    mov ah, 9             ; Function 9: Display string
    lea dx, msg4          ; Load the address of msg4 into DX
    int 21h               ; Call DOS interrupt to display the string 
    
    mov ah, 2             ; Function 2: Display character
    mov dl, b             ; Move value of b into DL to display it
    int 21h               ; Call DOS interrupt to display the character
    
    ; Exit program
    mov ax, 4c00h         ; Function 4Ch: Terminate program
    int 21h               ; Call DOS interrupt to exit
    
main endp                   ; End of main procedure
end main                    ; End of program