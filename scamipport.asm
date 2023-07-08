section .data
    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

    jmp close_socket

port_closed:
    ; Exibe a mensagem de porta fechada
    mov eax, 4
    mov ebx, 1
    mov ecx, closed_msg
    mov edx, len(closed_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

close_socket:
    ; Fecha o socket
    mov eax, 6
    mov ebx, ecx
    int 0x80

    ; Verifica se todas as portas foram verificadas
    cmp ecx, port_end
    jle loop_ports

exit_program:
    ; Termina o programa
    mov eax, 1
    xor ebx, ebx
    int 0x80

len equ $ - open_msg

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

    jmp close_socket

port_closed:
    ; Exibe a mensagem de porta fechada
    mov eax, 4
    mov ebx, 1
    mov ecx, closed_msg
    mov edx, len(closed_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

close_socket:
    ; Fecha o socket
    mov eax, 6
    mov ebx, ecx
    int 0x80

    ; Verifica se todas as portas foram verificadas
    cmp ecx, port_end
    jle loop_ports

exit_program:
    ; Termina o programa
    mov eax, 1
    xor ebx, ebx
    int 0x80

len equ $

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

    jmp close_socket

port_closed:
    ; Exibe a mensagem de porta fechada
    mov eax, 4
    mov ebx, 1
    mov ecx, closed_msg
    mov edx, len(closed_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

close_socket:
    ; Fecha o socket
    mov eax, 6
    mov ebx, ecx
    int 0x80

    ; Verifica se todas as portas foram verificadas
    cmp ecx, port_end
    jle loop_ports

exit_program:
    ;

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

    jmp close_socket

port_closed:
    ; Exibe a mensagem de porta fechada
    mov eax, 4
    mov ebx, 1
    mov ecx, closed_msg
    mov edx, len(closed_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

close_socket:
    ; Fecha o socket
    mov eax, 6
    mov ebx, ecx
    int 0x80

    ; Verifica se todas as

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

    jmp close_socket

port_closed:
    ; Exibe a mensagem de porta fechada
    mov eax, 4
    mov ebx, 1
    mov ecx, closed_msg
    mov edx, len(closed_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

close_socket:
    ; Fecha o socket
    mov eax, 6
    mov ebx, ecx
    int 

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

    jmp close_socket

port_closed:
    ; Exibe a mensagem de porta fechada
    mov eax, 4
    mov ebx, 1
    mov ecx, closed_msg
    mov edx, len(closed_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

close_socket:
    ; Fecha o socket
    mov eax, 6
   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

    jmp close_socket

port_closed:
    ; Exibe a mensagem de porta fechada
    mov eax, 4
    mov ebx, 1
    mov ecx, closed_msg
    mov edx, len(closed_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

    jmp close_socket

port_closed:
    ; Exibe a mensagem de porta fechada
    mov eax, 4
    mov ebx, 1
    mov ecx, closed_msg
    mov edx, len(closed_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

    jmp close_socket

port_closed:
    ; Exibe a mensagem de porta fechada
    mov eax, 4
    mov ebx, 1
    mov ecx, closed_msg
    mov edx, len(closed_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

    jmp close_socket

port_closed:
    ; Exibe a mensagem de porta fechada
    mov eax, 4
    mov ebx, 1
    mov ecx, closed_msg
    mov edx, len(closed_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax,

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

    jmp close_socket

port_closed:
    ; Exibe a mensagem de porta fechada
    mov eax, 4
    mov ebx, 1
    mov ecx, closed_msg
    mov edx, len(closed_msg)
    int 0x80

    ; Exibe o númer

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

    jmp close_socket

port_closed:
    ; Exibe a mensagem de porta fechada
    mov eax, 4
    mov ebx, 1
    mov ecx, closed_msg
    mov edx, len(closed_msg)
    int 0x80

    ; Exibe o

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

    jmp close_socket

port_closed:
    ; Exibe a mensagem de porta fechada
    mov eax, 4
    mov ebx, 1
    mov ecx, closed_msg
    mov edx, len(closed_msg)
    int 0x80

    ; Exibe

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

    jmp close_socket

port_closed:
    ; Exibe a mensagem de porta fechada
    mov eax, 4
    mov ebx, 1
    mov ecx, closed_msg
    mov edx, len(closed_msg)
    int 0x80

   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

    jmp close_socket

port_closed:
    ; Exibe a mensagem de porta fechada
    mov eax, 4
    mov ebx, 1
    mov ecx, closed_msg
    mov edx, len(closed_msg)
    int 0x

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

    jmp close_socket

port_closed:
    ; Exibe a mensagem de porta fechada
    mov eax, 4
    mov ebx, 1
    mov ecx, closed_msg
    mov edx, len(c

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

    jmp close_socket

port_closed:
    ; Exibe a mensagem de porta fechada
    mov eax, 4
    mov ebx, 1
    mov ecx, closed

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

    jmp close_socket

port_closed:
    ; Exibe a mensagem de porta fechada
    mov eax, 4
    mov ebx

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

    jmp close_socket

port_closed:
    ; Exibe a mensagem de porta

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov edx, 1
    int 0x80

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx
    add ecx, 48
    mov

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx, 1
    mov ecx, ecx

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Exibe o número da porta
    mov eax, 4
    mov ebx

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
    int 0x80

    ; Ex

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg
    mov edx, len(open_msg)
   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov ecx, open_msg

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1
    mov

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx, 1

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta
    mov eax, 4
    mov ebx

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem de porta aberta

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened
    jl port_closed

port_opened:
    ; Exibe a mensagem

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0
    je port_opened

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
    cmp eax, 0

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ; Verifica o resultado da conexão
   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x80

    ;

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço
    int 0x

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de endereço

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estrutura de end

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da estr

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho da

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16         ; tamanho

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov edx, 16

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura de endereço
    mov

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para a estrutura

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [esp + 4]  ; ponteiro para

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ; connect
    lea ecx, [

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
    mov ebx, 3          ;

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socketcall
   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall socket

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ; syscall

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102        ;

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102       

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 102

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax, 

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax,

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov eax

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
    mov

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta
   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e porta

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host e

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conecta ao host

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi

    ; Conect

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ; porta
    push edi


    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4], cx    ;

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4],

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word [edi + 4

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF_INET
    mov word

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2], 2      ; AF

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 2],

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [edi + 

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
    mov byte [

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
    mov edi, esp
   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta atual
   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o valor da porta

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx          ; salva o

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push ecx         

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
    push

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta
   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host e porta

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara a estrutura de endereço do host

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ; Prepara

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

    ;

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program

   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
    jl exit_program


    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0
   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica se o socket foi criado com sucesso
    cmp eax, 0

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ; Verifica

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

    ;

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80

   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
    int 0x80


    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0
   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx, edx      ; flags: 0

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
    xor edx

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0
   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ; protocol: 0

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
    xor ecx, ecx      ;

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1        ; socket
   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
    mov ebx, 1       

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall
   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 102      ; syscall socketcall

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
    mov eax, 

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket
   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
    ; Cria um socket

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:
   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check_port:

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
    inc ecx

check

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:
   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port

loop_ports:

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
    jmp check_port


    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start
   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
    mov ecx, port_start

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas
   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para percorrer as portas

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
    ; Loop para

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:
   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
    global _start

_start:

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text
   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section .text

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0

section

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A porta está fechada: ", 0


    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg db "A

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
    closed_msg

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0
   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A porta está aberta: ", 0

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg db "A

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
    open_msg

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100
   

    host db "127.0.0.1", 0
    port_start equ 1
    port_end equ 100

    host db "127.0.0.1", 0
    port_start equ 1
   

    host db "127.0.0.1", 0
    port_start equ 1

    host db "127.0.0.1", 0
   

    host db "127.0.0.1", 0

    host db "127.

    host db "127

    host db "