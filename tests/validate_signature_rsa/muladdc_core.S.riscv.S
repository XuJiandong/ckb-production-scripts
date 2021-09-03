.text
# movq    (%rsi), %rax
ld    a6, 0(a1)
# mulq    %rbx
mulhu    a2, a5, a6
mul    a6, a5, a6
# addq    $8, %rsi
addi    a1, a1, 8
# addq    %rcx, %rax
add    a6, a6, a3
sltu    t2, a6, a3
# movq    %r8, %rcx
add    a3, a4, zero
# adcq    $0, %rdx
add    a2, t2, a2
# addq    %rax, (%rdi)
ld    t6, 0(a0)
add    t6, t6, a6
sd    t6, 0(a0)
# adcq    %rdx, %rcx
add    a3, a3, t2
sltu    t2, a3, t2
add    a3, a3, a2
sltu    a2, a3, a2
or    t2, t2, a2
# addq    $8, %rdi
addi    a0, a0, 8
