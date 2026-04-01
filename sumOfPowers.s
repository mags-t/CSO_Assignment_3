.global sumOfPowers

sumOfPowers:
    push rbp
    mov rsp, rbp

    mov eax, 0          #sum = 0
    mov ecx, 1          #i = 1

loop_start:
    cmp ecx, edi        #if i > n, exit
    jg loop_end 

    mov edx, ecx        #edx = i
    imul edx, edx       #edx = i * i
    add eax, edx        #sum += i * i

    inc ecx 
    jmp loop_start

loop_end:
    pop rbp
    ret
