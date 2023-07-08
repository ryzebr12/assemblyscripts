section .data
    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov edx, edi
    sub edx, output_buffer
    int 0x80

exit_program:
    ; Termina o programa
    mov eax, 1
    xor ebx, ebx
    int 0x80

len equ $ - input_msg

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov edx, edi
    sub edx, output_buffer
    int 0x80

exit_program:
    ; Termina o programa
    mov eax, 1
    xor ebx, ebx
    int 0x80

len

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov edx, edi
    sub edx, output_buffer
    int 0x80

exit_program:
    ; Termina o programa
    mov eax, 1
    xor ebx, ebx

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov edx, edi
    sub edx, output_buffer
    int 0x80

exit_program:
    ; Termina o programa
    mov eax, 1
    xor ebx

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov edx, edi
    sub edx, output_buffer
    int 0x80

exit_program:
    ; Termina o programa
    mov eax, 1
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov edx, edi
    sub edx, output_buffer
    int 0x80

exit_program:
    ; Termina o programa
    mov eax, 1

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov edx, edi
    sub edx, output_buffer
    int 0x80

exit_program:
    ; Termina o programa
    mov eax

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov edx, edi
    sub edx, output_buffer
    int 0x80

exit_program:
    ; Termina o programa

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov edx, edi
    sub edx, output_buffer
    int 0x80

exit

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov edx, edi
    sub edx, output_buffer
    int 

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov edx, edi
    sub edx,

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx,

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da convers

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop


    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Pró

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saí

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaç

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espa

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adicion

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para mai

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert


    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, '

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsc

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para mai

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsc

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Con

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx,

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx,

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; L

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ;

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80


    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start


    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100


    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0


    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output

    input_msg db "Digite uma frase em letras minúsculas: ", 0
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0

    input_msg db "Digite uma frase em letras minúsculas

    input_msg db "

   
Este programa solicita ao usuário

Note que este programa

certificado






section .data
    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov edx, edi
    sub edx, output_buffer
    int 0x80

exit_program:
    ; Termina o programa
    mov eax, 1
    xor ebx, ebx
    int 0x80

len equ $ - input_msg

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov edx, edi
    sub edx, output_buffer
    int 0x80

exit_program:
    ; Termina o programa
    mov eax, 1
    xor ebx, ebx
    int 0x80

len

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov edx, edi
    sub edx, output_buffer
    int 0x80

exit_program:
    ; Termina o programa
    mov eax, 1
    xor ebx, ebx

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov edx, edi
    sub edx, output_buffer
    int 0x80

exit_program:
    ; Termina o programa
    mov eax, 1
    xor ebx

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov edx, edi
    sub edx, output_buffer
    int 0x80

exit_program:
    ; Termina o programa
    mov eax, 1
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov edx, edi
    sub edx, output_buffer
    int 0x80

exit_program:
    ; Termina o programa
    mov eax, 1

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov edx, edi
    sub edx, output_buffer
    int 0x80

exit_program:
    ; Termina o programa
    mov eax

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov edx, edi
    sub edx, output_buffer
    int 0x80

exit_program:
    ; Termina o programa

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov edx, edi
    sub edx, output_buffer
    int 0x80

exit

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov edx, edi
    sub edx, output_buffer
    int 

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov edx, edi
    sub edx,

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer
    mov

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx, 1
    mov ecx, output_buffer

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax, 4
    mov ebx,

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da conversão
    mov eax

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado da convers

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, len(output_msg)
    int 0x80

    ; Exibe o resultado

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 4
    mov ebx, 

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída
    mov eax, 

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de saída

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop

print_output:
    ; Exibe a mensagem de

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
    jmp convert_loop


    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada
    inc esi
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Próximo caractere da entrada

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [edi], ' '
    inc edi

    ; Pró

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída
    mov byte [

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saída

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer de saí

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao buffer

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço ao

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaço

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espaç

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um espa

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adiciona um

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al
    inc edi

    ; Adicion

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov [edi], al

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
    mov

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer de saída

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:
    ; Adiciona o caractere convertido ao buffer

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 32

skip_convert:

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para maiúscula
    sub al, 

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte para mai

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert

    ; Converte

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg skip_convert


    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert
    cmp al, 'z'
    jg

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, 'a'
    jl skip_convert

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma letra minúscula
    cmp al, '

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é uma

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o caractere é

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se o

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

    ; Verifica se

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0
    je print_output

   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [esi]
    cmp al, 0

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:
    mov al, [

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

convert_loop:

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer
    mov edi, output_buffer

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas
    mov esi, input_buffer

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre elas

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com espaço entre

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas com

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsculas

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para maiúsc

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsculas para mai

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as letras minúsc

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Converte as

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0x80

    ; Con

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
    int 0

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 100
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx,

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx,

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov ecx

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
    mov

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 0

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov ebx, 

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3
    mov

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
    mov eax, 3

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do usuário

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada do

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a entrada

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; Lê a

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ; L

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

    ;

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80

   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
    int 0x80


    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
    mov edx, len(input_msg)

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input_msg

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
    mov ecx, input

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
    mov ebx, 1

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
    mov eax, 4

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
    ; Exibe a mensagem para o usuário

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start

_start:

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
    global _start


    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section .text

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100

section

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb 100


    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100
    output_buffer resb

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb 100

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input_buffer resb

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
    input

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section .bss

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0

section

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "Frase convertida: ", 0


    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output_msg db "

    input_msg db "Digite uma frase em letras minúsculas: ", 0
    output

    input_msg db "Digite uma frase em letras minúsculas: ", 0
   

    input_msg db "Digite uma frase em letras minúsculas: ", 0

    input_msg db "Digite uma frase em letras minúsculas

    input_msg db "

   






