.global sumOfPowers

sumOfPowers:
    push %rbp
    mov %rsp, %rbp

    mov $0, %rax        #sum = 0
    mov $1, %rcx          #i = 1

loop_start:
    cmp %rdi, %rcx        #if i > n, exit
    jg loop_end 

    mov %rcx, %rdx        #temp = i
    imul %rdx, %rdx       #temp = i * i
    add %rdx, %rax        #sum += i * i

    inc %rcx 
    jmp loop_start

loop_end:
    pop %rbp
    ret
