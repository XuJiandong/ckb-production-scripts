
movq   (%rsi), %rax
mulq   %rbx
addq   $8, %rsi
addq   %rcx, %rax
movq   %r8, %rcx
adcq   $0, %rdx
addq   %rax, (%rdi)
adcq   %rdx, %rcx
addq   $8, %rdi
