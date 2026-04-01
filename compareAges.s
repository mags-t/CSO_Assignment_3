.global compareAges

compareAges:
    push %rbp
    mov %rsp, %rbp

    mov %rdi, %rax          #rdi = pointer a
    mov (%rax + 4), %eax    #eax = a -> age (offset 4 because id is 4 bytes)
    mov %rsi, %rdx          #rsi = pointer b
    cmp (%rdx + 4), %eax    #compare with b->age
    sete %al                #set al = 1 if equal, 0 if not
    movx %al, %eax          #zero-extend to 32-biit

    pop %rbp
    ret
