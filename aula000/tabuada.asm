section .data
    prompt  db "Digite um numero: "
    plen    equ $ - prompt
    sep     db " x "
    seplen  equ $ - sep
    eqs     db " = "
    eqlen   equ $ - eqs
    nl      db 10

section .bss
    inbuf   resb 8
    numbuf  resb 12

section .text
    global main

main:
    push ebx                    ; ebx, esi e edi sao callee-saved:
    push esi                    ; a libc espera eles intactos no retorno
    push edi

    mov eax, 4                  ; write(1, prompt, plen)
    mov ebx, 1
    mov ecx, prompt
    mov edx, plen
    int 0x80

    mov eax, 3                  ; read(0, inbuf, 8)
    mov ebx, 0
    mov ecx, inbuf
    mov edx, 8
    int 0x80

    ; --- atoi: esi = numero lido ---
    xor esi, esi
    mov edi, inbuf
.conv:
    movzx eax, byte [edi]       ; zera os bytes altos de eax
    cmp al, '0'
    jb .fim_conv                ; nao e digito -> acabou
    cmp al, '9'
    ja .fim_conv
    sub al, '0'                 ; ASCII -> valor numerico
    imul esi, esi, 10
    add esi, eax
    inc edi
    jmp .conv
.fim_conv:

    ; --- laco de 1 a 10 ---
    mov edi, 1
.loop:
    mov eax, esi
    call print_num

    mov eax, 4
    mov ebx, 1
    mov ecx, sep
    mov edx, seplen
    int 0x80

    mov eax, edi
    call print_num

    mov eax, 4
    mov ebx, 1
    mov ecx, eqs
    mov edx, eqlen
    int 0x80

    mov eax, esi
    imul eax, edi               ; produto
    call print_num

    mov eax, 4
    mov ebx, 1
    mov ecx, nl
    mov edx, 1
    int 0x80

    inc edi
    cmp edi, 10
    jle .loop

    pop edi
    pop esi
    pop ebx
    xor eax, eax
    ret

; ---------------------------------------------
; print_num: imprime o inteiro em eax
; ---------------------------------------------
print_num:
    push ebx
    push ecx
    push edx
    push esi
    push edi

    mov ecx, numbuf + 12        ; ponteiro para o FIM do buffer
    mov ebx, 10
.digit:
    xor edx, edx                ; div usa edx:eax -> zerar edx e obrigatorio
    div ebx                     ; eax = eax/10, edx = resto
    add dl, '0'                 ; resto -> ASCII
    dec ecx                     ; anda para tras
    mov [ecx], dl
    test eax, eax
    jnz .digit                  ; do-while: garante "0" para entrada zero

    mov edx, numbuf + 12
    sub edx, ecx                ; comprimento = fim - inicio
    mov eax, 4
    mov ebx, 1                  ; ecx ja aponta para o inicio da string
    int 0x80

    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    ret
