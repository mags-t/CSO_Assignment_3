.global sumOfPowers

sumOfPowers:
    push %rbp
    mov %rsp, %rbp

    mov $0, %eax        #sum = 0
    mov $1, %ecx        #i = 1

loop_start:
    cmp %edi, %ecx      #compare i and n
    jg loop_end 

    mov %ecx, %edx      #edx = i
    imul %edx, %edx     #edx = i * i
    add %edx, %eax      #sum += i * i

    inc %ecx 
    jmp loop_start

loop_end:
    pop %rbp
    ret
