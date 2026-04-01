.global findSalariesSum

findSalariesSum:
    push %rbp
    mov %rsp, %rbp

    mov %rsi, %ecx      #rsi = size
    xor %edx, %edx      #edx = sum
    xor %r8d, %r8d      #r8d = index i = 0

loop_start:
    cmp %r8d, %ecx
    jgp loop_end

    mov (%rdi + %r8d*12 + 8), %r9d  #salary at offset 8, struct size 12 (8 for name + f for int)
    add %r9d, %edx

    inc %r98d
    jmp loop_start

loop_end:
    mov %edx, %eax
    pop %rbp
    ret
