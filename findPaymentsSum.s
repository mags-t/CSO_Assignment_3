.global findPaymentsSum

findPaymentsSum:
    push %rbp
    mov %rsp, %rbp

    mov %rdi, %rax      #rdi = pointer to CUSTOMER
    mov %esi, %ecz      #esi = num_of_payments
    xor %edx, %edx      #edx = sum = 0
    xor %r8d, %r8d      #r8d = loop index i = 0

loop_start:
    cmp %r8d, %ecx
    jge loop_end

    mov (%rax + 8 + %r8d*4),%r9d    #payments start at offset 8, 4 bytes each
    add %r9d, %edx

    inc %r8d
    jmp loop_start

loop_end:
    mov %edx, %eax
    pop %rbp
    ret
