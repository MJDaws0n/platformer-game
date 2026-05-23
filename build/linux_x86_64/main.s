.data
_str_0:
    .asciz ""
_str_0_len:
    .quad 0
_str_1:
    .asciz "0"
_str_1_len:
    .quad 1
_str_2:
    .asciz "1"
_str_2_len:
    .quad 1
_str_3:
    .asciz "2"
_str_3_len:
    .quad 1
_str_4:
    .asciz "3"
_str_4_len:
    .quad 1
_str_5:
    .asciz "4"
_str_5_len:
    .quad 1
_str_6:
    .asciz "5"
_str_6_len:
    .quad 1
_str_7:
    .asciz "6"
_str_7_len:
    .quad 1
_str_8:
    .asciz "7"
_str_8_len:
    .quad 1
_str_9:
    .asciz "8"
_str_9_len:
    .quad 1
_str_10:
    .asciz "9"
_str_10_len:
    .quad 1
_str_11:
    .asciz "-"
_str_11_len:
    .quad 1
_str_12:
    .asciz "true"
_str_12_len:
    .quad 4
_str_13:
    .asciz "false"
_str_13_len:
    .quad 5

.p2align 3
_g_fb_fd:
    .quad 0
.p2align 3
_g_input_state:
    .quad 0
.p2align 3
_g_player_x:
    .quad 100
.p2align 3
_g_player_y:
    .quad 300
.p2align 3
_g_player_vx:
    .quad 0
.p2align 3
_g_player_vy:
    .quad 0
.p2align 3
_g_platforms_x:
    .quad 0
.p2align 3
_g_platforms_y:
    .quad 0
.p2align 3
_g_platforms_w:
    .quad 0
.p2align 3
_g_platforms_h:
    .quad 0
.p2align 3
_g_game_score:
    .quad 0
.p2align 3
_g_game_lives:
    .quad 3
.p2align 3
_g_game_over:
    .quad 0
.p2align 3
_g_frame_count:
    .quad 0

.lcomm _novus_heap, 67108864
.lcomm _novus_heap_ptr, 8
.lcomm _novus_gc_table, 1572864
.lcomm _novus_gc_count, 8
.lcomm _novus_gc_threshold, 8
.lcomm _novus_gc_freelist, 8
.lcomm _novus_gc_stack_bottom, 8

.text
.globl main

.globl _start
_start:
    leaq _novus_gc_stack_bottom(%rip), %rax
    movq %rsp, (%rax)
    leaq _novus_gc_threshold(%rip), %rax
    movq $256, (%rax)
    movq (%rsp), %rdi
    leaq 8(%rsp), %rsi
    call main
    movq %rax, %rdi
    movq $60, %rax
    syscall

fb_open:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    ## function fb_open
    movq $1, %r10
    negq %r10
    movq %r10, -8(%rbp)
    movq -8(%rbp), %r10
    movq %r10, %rax
    addq $48, %rsp
    popq %rbp
    ret

fb_close:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    ## function fb_close
    addq $32, %rsp
    popq %rbp
    ret

fb_get_width:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    ## function fb_get_width
    movq $800, %r10
    movq %r10, %rax
    addq $32, %rsp
    popq %rbp
    ret

fb_get_height:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    ## function fb_get_height
    movq $600, %r10
    movq %r10, %rax
    addq $32, %rsp
    popq %rbp
    ret

fb_set_pixel:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    ## function fb_set_pixel
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    addq $64, %rsp
    popq %rbp
    ret

fb_get_pixel:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    ## function fb_get_pixel
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq $0, %r10
    movq %r10, %rax
    addq $48, %rsp
    popq %rbp
    ret

fb_draw_rect:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    ## function fb_draw_rect
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq %r8, -40(%rbp)
    addq $80, %rsp
    popq %rbp
    ret

fb_clear:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    ## function fb_clear
    movq %rdi, -8(%rbp)
    addq $48, %rsp
    popq %rbp
    ret

fb_flush:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    ## function fb_flush
    movq $0, %r10
    movq %r10, %rax
    addq $32, %rsp
    popq %rbp
    ret

aabb_check:
    pushq %rbp
    movq %rsp, %rbp
    subq $304, %rsp
    ## function aabb_check
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq %r8, -40(%rbp)
    movq %r9, -48(%rbp)
    movq 16(%rbp), %r10
    movq %r10, -72(%rbp)
    movq -72(%rbp), %r10
    movq %r10, -56(%rbp)
    movq 24(%rbp), %r10
    movq %r10, -80(%rbp)
    movq -80(%rbp), %r10
    movq %r10, -64(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -88(%rbp)
    movq -24(%rbp), %r10
    movq %r10, -96(%rbp)
    movq -88(%rbp), %r10
    movq -96(%rbp), %r11
    addq %r11, %r10
    movq %r10, -104(%rbp)
    movq -40(%rbp), %r10
    movq %r10, -112(%rbp)
    movq -104(%rbp), %r10
    movq -112(%rbp), %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -120(%rbp)
    movq -40(%rbp), %r10
    movq %r10, -128(%rbp)
    movq -56(%rbp), %r10
    movq %r10, -136(%rbp)
    movq -128(%rbp), %r10
    movq -136(%rbp), %r11
    addq %r11, %r10
    movq %r10, -144(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -152(%rbp)
    movq -144(%rbp), %r10
    movq -152(%rbp), %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -160(%rbp)
    movq -120(%rbp), %r10
    movq -160(%rbp), %r11
    orq %r11, %r10
    movq %r10, -168(%rbp)
    movq -16(%rbp), %r10
    movq %r10, -176(%rbp)
    movq -32(%rbp), %r10
    movq %r10, -184(%rbp)
    movq -176(%rbp), %r10
    movq -184(%rbp), %r11
    addq %r11, %r10
    movq %r10, -192(%rbp)
    movq -48(%rbp), %r10
    movq %r10, -200(%rbp)
    movq -192(%rbp), %r10
    movq -200(%rbp), %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -208(%rbp)
    movq -168(%rbp), %r10
    movq -208(%rbp), %r11
    orq %r11, %r10
    movq %r10, -216(%rbp)
    movq -48(%rbp), %r10
    movq %r10, -224(%rbp)
    movq -64(%rbp), %r10
    movq %r10, -232(%rbp)
    movq -224(%rbp), %r10
    movq -232(%rbp), %r11
    addq %r11, %r10
    movq %r10, -240(%rbp)
    movq -16(%rbp), %r10
    movq %r10, -248(%rbp)
    movq -240(%rbp), %r10
    movq -248(%rbp), %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -256(%rbp)
    movq -216(%rbp), %r10
    movq -256(%rbp), %r11
    orq %r11, %r10
    movq %r10, -264(%rbp)
    movq -264(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_1
    movq $0, %r10
    movq %r10, %rax
    addq $304, %rsp
    popq %rbp
    ret
.Lendif_1:
    movq $1, %r10
    movq %r10, %rax
    addq $304, %rsp
    popq %rbp
    ret

resolve_collision_test:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    ## function resolve_collision_test
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq %r8, -40(%rbp)
    movq %r9, -48(%rbp)
    movq 16(%rbp), %r10
    movq %r10, -72(%rbp)
    movq -72(%rbp), %r10
    movq %r10, -56(%rbp)
    movq 24(%rbp), %r10
    movq %r10, -80(%rbp)
    movq -80(%rbp), %r10
    movq %r10, -64(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -88(%rbp)
    movq -16(%rbp), %r10
    movq %r10, -96(%rbp)
    movq -24(%rbp), %r10
    movq %r10, -104(%rbp)
    movq -32(%rbp), %r10
    movq %r10, -112(%rbp)
    movq -40(%rbp), %r10
    movq %r10, -120(%rbp)
    movq -48(%rbp), %r10
    movq %r10, -128(%rbp)
    movq -56(%rbp), %r10
    movq %r10, -136(%rbp)
    movq -64(%rbp), %r10
    movq %r10, -144(%rbp)
    movq -144(%rbp), %r10
    pushq %r10
    movq -136(%rbp), %r10
    pushq %r10
    movq -88(%rbp), %r10
    movq %r10, %rdi
    movq -96(%rbp), %r10
    movq %r10, %rsi
    movq -104(%rbp), %r10
    movq %r10, %rdx
    movq -112(%rbp), %r10
    movq %r10, %rcx
    movq -120(%rbp), %r10
    movq %r10, %r8
    movq -128(%rbp), %r10
    movq %r10, %r9
    call aabb_check
    addq $16, %rsp
    movq %rax, -152(%rbp)
    movq -152(%rbp), %r10
    movq $0, %r11
    cmpq %r11, %r10
    sete %r10b
    movzbq %r10b, %r10
    movq %r10, -160(%rbp)
    movq -160(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_3
    movq $0, %r10
    movq %r10, %rax
    addq $192, %rsp
    popq %rbp
    ret
.Lendif_3:
    movq $1, %r10
    movq %r10, %rax
    addq $192, %rsp
    popq %rbp
    ret

INPUT_UP:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    ## function INPUT_UP
    movq $1, %r10
    movq %r10, %rax
    addq $32, %rsp
    popq %rbp
    ret

INPUT_DOWN:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    ## function INPUT_DOWN
    movq $2, %r10
    movq %r10, %rax
    addq $32, %rsp
    popq %rbp
    ret

INPUT_LEFT:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    ## function INPUT_LEFT
    movq $4, %r10
    movq %r10, %rax
    addq $32, %rsp
    popq %rbp
    ret

INPUT_RIGHT:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    ## function INPUT_RIGHT
    movq $8, %r10
    movq %r10, %rax
    addq $32, %rsp
    popq %rbp
    ret

INPUT_JUMP:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    ## function INPUT_JUMP
    movq $16, %r10
    movq %r10, %rax
    addq $32, %rsp
    popq %rbp
    ret

input_check:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    ## function input_check
    movq %rdi, -8(%rbp)
    movq _g_input_state(%rip), %r10
    movq %r10, -24(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -32(%rbp)
    movq -24(%rbp), %r10
    movq -32(%rbp), %r11
    andq %r11, %r10
    movq %r10, -40(%rbp)
    movq -40(%rbp), %r10
    movq %r10, -16(%rbp)
    movq -16(%rbp), %r10
    movq %r10, -48(%rbp)
    movq -48(%rbp), %r10
    movq $0, %r11
    cmpq %r11, %r10
    sete %r10b
    movzbq %r10b, %r10
    movq %r10, -56(%rbp)
    movq -56(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_5
    movq $0, %r10
    movq %r10, %rax
    addq $96, %rsp
    popq %rbp
    ret
.Lendif_5:
    movq $1, %r10
    movq %r10, %rax
    addq $96, %rsp
    popq %rbp
    ret

input_update:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    ## function input_update
    addq $32, %rsp
    popq %rbp
    ret

int_to_str:
    pushq %rbp
    movq %rsp, %rbp
    subq $656, %rsp
    ## function int_to_str
    movq %rdi, -8(%rbp)
    leaq _str_0(%rip), %r10
    movq %r10, -16(%rbp)
    movq $0, %r10
    movq %r10, -24(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -64(%rbp)
    movq -64(%rbp), %r10
    movq $0, %r11
    cmpq %r11, %r10
    sete %r10b
    movzbq %r10b, %r10
    movq %r10, -72(%rbp)
    movq -72(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_7
    leaq _str_1(%rip), %r10
    movq %r10, %rax
    addq $656, %rsp
    popq %rbp
    ret
.Lendif_7:
    movq -8(%rbp), %r10
    movq %r10, -80(%rbp)
    movq -80(%rbp), %r10
    movq $0, %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -88(%rbp)
    movq -88(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_9
    movq $1, %r10
    movq %r10, -24(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -96(%rbp)
    movq $0, %r10
    movq -96(%rbp), %r11
    subq %r11, %r10
    movq %r10, -104(%rbp)
    movq -104(%rbp), %r10
    movq %r10, -8(%rbp)
.Lendif_9:
    leaq _str_0(%rip), %r10
    movq %r10, -32(%rbp)
.Lwhile_cond_10:
    movq -8(%rbp), %r10
    movq %r10, -112(%rbp)
    movq -112(%rbp), %r10
    movq $0, %r11
    cmpq %r11, %r10
    setg %r10b
    movzbq %r10b, %r10
    movq %r10, -120(%rbp)
    movq -120(%rbp), %r10
    testq %r10, %r10
    jz .Lwhile_end_12
.Lwhile_body_11:
    movq -8(%rbp), %r10
    movq %r10, -128(%rbp)
    movq -128(%rbp), %r10
    movq $10, %r11
    movq %r10, %rax
    cqo
    idivq %r11
    movq %rdx, -136(%rbp)
    movq -136(%rbp), %r10
    movq %r10, -40(%rbp)
    movq -40(%rbp), %r10
    movq %r10, -144(%rbp)
    movq -144(%rbp), %r10
    movq $0, %r11
    cmpq %r11, %r10
    sete %r10b
    movzbq %r10b, %r10
    movq %r10, -152(%rbp)
    movq -152(%rbp), %r10
    testq %r10, %r10
    jz .Lelse_13
    movq -32(%rbp), %r10
    movq %r10, -160(%rbp)
    movq -160(%rbp), %r10
    leaq _str_1(%rip), %r11
    xorq %rcx, %rcx
.Lscl1_1:
    cmpb $0, (%r10,%rcx)
    je .Lscl1d_1
    incq %rcx
    jmp .Lscl1_1
.Lscl1d_1:
    pushq %rcx
    xorq %rdx, %rdx
.Lscl2_1:
    cmpb $0, (%r11,%rdx)
    je .Lscl2d_1
    incq %rdx
    jmp .Lscl2_1
.Lscl2d_1:
    popq %rcx
    pushq %r10
    pushq %r11
    pushq %rcx
    pushq %rdx
    leaq 1(%rcx,%rdx), %rdi
    call _novus_gc_alloc
    popq %rdx
    popq %rcx
    popq %r11
    popq %r10
    movq %rax, %rdi
.Lsc1_1:
    movb (%r10), %cl
    testb %cl, %cl
    jz .Lsc2_1
    movb %cl, (%rdi)
    incq %r10
    incq %rdi
    jmp .Lsc1_1
.Lsc2_1:
    movb (%r11), %cl
    movb %cl, (%rdi)
    testb %cl, %cl
    jz .Lscd_1
    incq %r11
    incq %rdi
    jmp .Lsc2_1
.Lscd_1:
    movq %rax, -168(%rbp)
    movq -168(%rbp), %r10
    movq %r10, -32(%rbp)
    jmp .Lendif_14
.Lelse_13:
    movq -40(%rbp), %r10
    movq %r10, -176(%rbp)
    movq -176(%rbp), %r10
    movq $1, %r11
    cmpq %r11, %r10
    sete %r10b
    movzbq %r10b, %r10
    movq %r10, -184(%rbp)
    movq -184(%rbp), %r10
    testq %r10, %r10
    jz .Lelse_15
    movq -32(%rbp), %r10
    movq %r10, -192(%rbp)
    movq -192(%rbp), %r10
    leaq _str_2(%rip), %r11
    xorq %rcx, %rcx
.Lscl1_2:
    cmpb $0, (%r10,%rcx)
    je .Lscl1d_2
    incq %rcx
    jmp .Lscl1_2
.Lscl1d_2:
    pushq %rcx
    xorq %rdx, %rdx
.Lscl2_2:
    cmpb $0, (%r11,%rdx)
    je .Lscl2d_2
    incq %rdx
    jmp .Lscl2_2
.Lscl2d_2:
    popq %rcx
    pushq %r10
    pushq %r11
    pushq %rcx
    pushq %rdx
    leaq 1(%rcx,%rdx), %rdi
    call _novus_gc_alloc
    popq %rdx
    popq %rcx
    popq %r11
    popq %r10
    movq %rax, %rdi
.Lsc1_2:
    movb (%r10), %cl
    testb %cl, %cl
    jz .Lsc2_2
    movb %cl, (%rdi)
    incq %r10
    incq %rdi
    jmp .Lsc1_2
.Lsc2_2:
    movb (%r11), %cl
    movb %cl, (%rdi)
    testb %cl, %cl
    jz .Lscd_2
    incq %r11
    incq %rdi
    jmp .Lsc2_2
.Lscd_2:
    movq %rax, -200(%rbp)
    movq -200(%rbp), %r10
    movq %r10, -32(%rbp)
    jmp .Lendif_16
.Lelse_15:
    movq -40(%rbp), %r10
    movq %r10, -208(%rbp)
    movq -208(%rbp), %r10
    movq $2, %r11
    cmpq %r11, %r10
    sete %r10b
    movzbq %r10b, %r10
    movq %r10, -216(%rbp)
    movq -216(%rbp), %r10
    testq %r10, %r10
    jz .Lelse_17
    movq -32(%rbp), %r10
    movq %r10, -224(%rbp)
    movq -224(%rbp), %r10
    leaq _str_3(%rip), %r11
    xorq %rcx, %rcx
.Lscl1_3:
    cmpb $0, (%r10,%rcx)
    je .Lscl1d_3
    incq %rcx
    jmp .Lscl1_3
.Lscl1d_3:
    pushq %rcx
    xorq %rdx, %rdx
.Lscl2_3:
    cmpb $0, (%r11,%rdx)
    je .Lscl2d_3
    incq %rdx
    jmp .Lscl2_3
.Lscl2d_3:
    popq %rcx
    pushq %r10
    pushq %r11
    pushq %rcx
    pushq %rdx
    leaq 1(%rcx,%rdx), %rdi
    call _novus_gc_alloc
    popq %rdx
    popq %rcx
    popq %r11
    popq %r10
    movq %rax, %rdi
.Lsc1_3:
    movb (%r10), %cl
    testb %cl, %cl
    jz .Lsc2_3
    movb %cl, (%rdi)
    incq %r10
    incq %rdi
    jmp .Lsc1_3
.Lsc2_3:
    movb (%r11), %cl
    movb %cl, (%rdi)
    testb %cl, %cl
    jz .Lscd_3
    incq %r11
    incq %rdi
    jmp .Lsc2_3
.Lscd_3:
    movq %rax, -232(%rbp)
    movq -232(%rbp), %r10
    movq %r10, -32(%rbp)
    jmp .Lendif_18
.Lelse_17:
    movq -40(%rbp), %r10
    movq %r10, -240(%rbp)
    movq -240(%rbp), %r10
    movq $3, %r11
    cmpq %r11, %r10
    sete %r10b
    movzbq %r10b, %r10
    movq %r10, -248(%rbp)
    movq -248(%rbp), %r10
    testq %r10, %r10
    jz .Lelse_19
    movq -32(%rbp), %r10
    movq %r10, -256(%rbp)
    movq -256(%rbp), %r10
    leaq _str_4(%rip), %r11
    xorq %rcx, %rcx
.Lscl1_4:
    cmpb $0, (%r10,%rcx)
    je .Lscl1d_4
    incq %rcx
    jmp .Lscl1_4
.Lscl1d_4:
    pushq %rcx
    xorq %rdx, %rdx
.Lscl2_4:
    cmpb $0, (%r11,%rdx)
    je .Lscl2d_4
    incq %rdx
    jmp .Lscl2_4
.Lscl2d_4:
    popq %rcx
    pushq %r10
    pushq %r11
    pushq %rcx
    pushq %rdx
    leaq 1(%rcx,%rdx), %rdi
    call _novus_gc_alloc
    popq %rdx
    popq %rcx
    popq %r11
    popq %r10
    movq %rax, %rdi
.Lsc1_4:
    movb (%r10), %cl
    testb %cl, %cl
    jz .Lsc2_4
    movb %cl, (%rdi)
    incq %r10
    incq %rdi
    jmp .Lsc1_4
.Lsc2_4:
    movb (%r11), %cl
    movb %cl, (%rdi)
    testb %cl, %cl
    jz .Lscd_4
    incq %r11
    incq %rdi
    jmp .Lsc2_4
.Lscd_4:
    movq %rax, -264(%rbp)
    movq -264(%rbp), %r10
    movq %r10, -32(%rbp)
    jmp .Lendif_20
.Lelse_19:
    movq -40(%rbp), %r10
    movq %r10, -272(%rbp)
    movq -272(%rbp), %r10
    movq $4, %r11
    cmpq %r11, %r10
    sete %r10b
    movzbq %r10b, %r10
    movq %r10, -280(%rbp)
    movq -280(%rbp), %r10
    testq %r10, %r10
    jz .Lelse_21
    movq -32(%rbp), %r10
    movq %r10, -288(%rbp)
    movq -288(%rbp), %r10
    leaq _str_5(%rip), %r11
    xorq %rcx, %rcx
.Lscl1_5:
    cmpb $0, (%r10,%rcx)
    je .Lscl1d_5
    incq %rcx
    jmp .Lscl1_5
.Lscl1d_5:
    pushq %rcx
    xorq %rdx, %rdx
.Lscl2_5:
    cmpb $0, (%r11,%rdx)
    je .Lscl2d_5
    incq %rdx
    jmp .Lscl2_5
.Lscl2d_5:
    popq %rcx
    pushq %r10
    pushq %r11
    pushq %rcx
    pushq %rdx
    leaq 1(%rcx,%rdx), %rdi
    call _novus_gc_alloc
    popq %rdx
    popq %rcx
    popq %r11
    popq %r10
    movq %rax, %rdi
.Lsc1_5:
    movb (%r10), %cl
    testb %cl, %cl
    jz .Lsc2_5
    movb %cl, (%rdi)
    incq %r10
    incq %rdi
    jmp .Lsc1_5
.Lsc2_5:
    movb (%r11), %cl
    movb %cl, (%rdi)
    testb %cl, %cl
    jz .Lscd_5
    incq %r11
    incq %rdi
    jmp .Lsc2_5
.Lscd_5:
    movq %rax, -296(%rbp)
    movq -296(%rbp), %r10
    movq %r10, -32(%rbp)
    jmp .Lendif_22
.Lelse_21:
    movq -40(%rbp), %r10
    movq %r10, -304(%rbp)
    movq -304(%rbp), %r10
    movq $5, %r11
    cmpq %r11, %r10
    sete %r10b
    movzbq %r10b, %r10
    movq %r10, -312(%rbp)
    movq -312(%rbp), %r10
    testq %r10, %r10
    jz .Lelse_23
    movq -32(%rbp), %r10
    movq %r10, -320(%rbp)
    movq -320(%rbp), %r10
    leaq _str_6(%rip), %r11
    xorq %rcx, %rcx
.Lscl1_6:
    cmpb $0, (%r10,%rcx)
    je .Lscl1d_6
    incq %rcx
    jmp .Lscl1_6
.Lscl1d_6:
    pushq %rcx
    xorq %rdx, %rdx
.Lscl2_6:
    cmpb $0, (%r11,%rdx)
    je .Lscl2d_6
    incq %rdx
    jmp .Lscl2_6
.Lscl2d_6:
    popq %rcx
    pushq %r10
    pushq %r11
    pushq %rcx
    pushq %rdx
    leaq 1(%rcx,%rdx), %rdi
    call _novus_gc_alloc
    popq %rdx
    popq %rcx
    popq %r11
    popq %r10
    movq %rax, %rdi
.Lsc1_6:
    movb (%r10), %cl
    testb %cl, %cl
    jz .Lsc2_6
    movb %cl, (%rdi)
    incq %r10
    incq %rdi
    jmp .Lsc1_6
.Lsc2_6:
    movb (%r11), %cl
    movb %cl, (%rdi)
    testb %cl, %cl
    jz .Lscd_6
    incq %r11
    incq %rdi
    jmp .Lsc2_6
.Lscd_6:
    movq %rax, -328(%rbp)
    movq -328(%rbp), %r10
    movq %r10, -32(%rbp)
    jmp .Lendif_24
.Lelse_23:
    movq -40(%rbp), %r10
    movq %r10, -336(%rbp)
    movq -336(%rbp), %r10
    movq $6, %r11
    cmpq %r11, %r10
    sete %r10b
    movzbq %r10b, %r10
    movq %r10, -344(%rbp)
    movq -344(%rbp), %r10
    testq %r10, %r10
    jz .Lelse_25
    movq -32(%rbp), %r10
    movq %r10, -352(%rbp)
    movq -352(%rbp), %r10
    leaq _str_7(%rip), %r11
    xorq %rcx, %rcx
.Lscl1_7:
    cmpb $0, (%r10,%rcx)
    je .Lscl1d_7
    incq %rcx
    jmp .Lscl1_7
.Lscl1d_7:
    pushq %rcx
    xorq %rdx, %rdx
.Lscl2_7:
    cmpb $0, (%r11,%rdx)
    je .Lscl2d_7
    incq %rdx
    jmp .Lscl2_7
.Lscl2d_7:
    popq %rcx
    pushq %r10
    pushq %r11
    pushq %rcx
    pushq %rdx
    leaq 1(%rcx,%rdx), %rdi
    call _novus_gc_alloc
    popq %rdx
    popq %rcx
    popq %r11
    popq %r10
    movq %rax, %rdi
.Lsc1_7:
    movb (%r10), %cl
    testb %cl, %cl
    jz .Lsc2_7
    movb %cl, (%rdi)
    incq %r10
    incq %rdi
    jmp .Lsc1_7
.Lsc2_7:
    movb (%r11), %cl
    movb %cl, (%rdi)
    testb %cl, %cl
    jz .Lscd_7
    incq %r11
    incq %rdi
    jmp .Lsc2_7
.Lscd_7:
    movq %rax, -360(%rbp)
    movq -360(%rbp), %r10
    movq %r10, -32(%rbp)
    jmp .Lendif_26
.Lelse_25:
    movq -40(%rbp), %r10
    movq %r10, -368(%rbp)
    movq -368(%rbp), %r10
    movq $7, %r11
    cmpq %r11, %r10
    sete %r10b
    movzbq %r10b, %r10
    movq %r10, -376(%rbp)
    movq -376(%rbp), %r10
    testq %r10, %r10
    jz .Lelse_27
    movq -32(%rbp), %r10
    movq %r10, -384(%rbp)
    movq -384(%rbp), %r10
    leaq _str_8(%rip), %r11
    xorq %rcx, %rcx
.Lscl1_8:
    cmpb $0, (%r10,%rcx)
    je .Lscl1d_8
    incq %rcx
    jmp .Lscl1_8
.Lscl1d_8:
    pushq %rcx
    xorq %rdx, %rdx
.Lscl2_8:
    cmpb $0, (%r11,%rdx)
    je .Lscl2d_8
    incq %rdx
    jmp .Lscl2_8
.Lscl2d_8:
    popq %rcx
    pushq %r10
    pushq %r11
    pushq %rcx
    pushq %rdx
    leaq 1(%rcx,%rdx), %rdi
    call _novus_gc_alloc
    popq %rdx
    popq %rcx
    popq %r11
    popq %r10
    movq %rax, %rdi
.Lsc1_8:
    movb (%r10), %cl
    testb %cl, %cl
    jz .Lsc2_8
    movb %cl, (%rdi)
    incq %r10
    incq %rdi
    jmp .Lsc1_8
.Lsc2_8:
    movb (%r11), %cl
    movb %cl, (%rdi)
    testb %cl, %cl
    jz .Lscd_8
    incq %r11
    incq %rdi
    jmp .Lsc2_8
.Lscd_8:
    movq %rax, -392(%rbp)
    movq -392(%rbp), %r10
    movq %r10, -32(%rbp)
    jmp .Lendif_28
.Lelse_27:
    movq -40(%rbp), %r10
    movq %r10, -400(%rbp)
    movq -400(%rbp), %r10
    movq $8, %r11
    cmpq %r11, %r10
    sete %r10b
    movzbq %r10b, %r10
    movq %r10, -408(%rbp)
    movq -408(%rbp), %r10
    testq %r10, %r10
    jz .Lelse_29
    movq -32(%rbp), %r10
    movq %r10, -416(%rbp)
    movq -416(%rbp), %r10
    leaq _str_9(%rip), %r11
    xorq %rcx, %rcx
.Lscl1_9:
    cmpb $0, (%r10,%rcx)
    je .Lscl1d_9
    incq %rcx
    jmp .Lscl1_9
.Lscl1d_9:
    pushq %rcx
    xorq %rdx, %rdx
.Lscl2_9:
    cmpb $0, (%r11,%rdx)
    je .Lscl2d_9
    incq %rdx
    jmp .Lscl2_9
.Lscl2d_9:
    popq %rcx
    pushq %r10
    pushq %r11
    pushq %rcx
    pushq %rdx
    leaq 1(%rcx,%rdx), %rdi
    call _novus_gc_alloc
    popq %rdx
    popq %rcx
    popq %r11
    popq %r10
    movq %rax, %rdi
.Lsc1_9:
    movb (%r10), %cl
    testb %cl, %cl
    jz .Lsc2_9
    movb %cl, (%rdi)
    incq %r10
    incq %rdi
    jmp .Lsc1_9
.Lsc2_9:
    movb (%r11), %cl
    movb %cl, (%rdi)
    testb %cl, %cl
    jz .Lscd_9
    incq %r11
    incq %rdi
    jmp .Lsc2_9
.Lscd_9:
    movq %rax, -424(%rbp)
    movq -424(%rbp), %r10
    movq %r10, -32(%rbp)
    jmp .Lendif_30
.Lelse_29:
    movq -40(%rbp), %r10
    movq %r10, -432(%rbp)
    movq -432(%rbp), %r10
    movq $9, %r11
    cmpq %r11, %r10
    sete %r10b
    movzbq %r10b, %r10
    movq %r10, -440(%rbp)
    movq -440(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_32
    movq -32(%rbp), %r10
    movq %r10, -448(%rbp)
    movq -448(%rbp), %r10
    leaq _str_10(%rip), %r11
    xorq %rcx, %rcx
.Lscl1_10:
    cmpb $0, (%r10,%rcx)
    je .Lscl1d_10
    incq %rcx
    jmp .Lscl1_10
.Lscl1d_10:
    pushq %rcx
    xorq %rdx, %rdx
.Lscl2_10:
    cmpb $0, (%r11,%rdx)
    je .Lscl2d_10
    incq %rdx
    jmp .Lscl2_10
.Lscl2d_10:
    popq %rcx
    pushq %r10
    pushq %r11
    pushq %rcx
    pushq %rdx
    leaq 1(%rcx,%rdx), %rdi
    call _novus_gc_alloc
    popq %rdx
    popq %rcx
    popq %r11
    popq %r10
    movq %rax, %rdi
.Lsc1_10:
    movb (%r10), %cl
    testb %cl, %cl
    jz .Lsc2_10
    movb %cl, (%rdi)
    incq %r10
    incq %rdi
    jmp .Lsc1_10
.Lsc2_10:
    movb (%r11), %cl
    movb %cl, (%rdi)
    testb %cl, %cl
    jz .Lscd_10
    incq %r11
    incq %rdi
    jmp .Lsc2_10
.Lscd_10:
    movq %rax, -456(%rbp)
    movq -456(%rbp), %r10
    movq %r10, -32(%rbp)
.Lendif_32:
.Lendif_30:
.Lendif_28:
.Lendif_26:
.Lendif_24:
.Lendif_22:
.Lendif_20:
.Lendif_18:
.Lendif_16:
.Lendif_14:
    movq -8(%rbp), %r10
    movq %r10, -464(%rbp)
    movq -464(%rbp), %r10
    movq $10, %r11
    movq %r10, %rax
    cqo
    idivq %r11
    movq %rax, -472(%rbp)
    movq -472(%rbp), %r10
    movq %r10, -8(%rbp)
    jmp .Lwhile_cond_10
.Lwhile_end_12:
    movq -24(%rbp), %r10
    movq %r10, -480(%rbp)
    movq -480(%rbp), %r10
    movq $1, %r11
    cmpq %r11, %r10
    sete %r10b
    movzbq %r10b, %r10
    movq %r10, -488(%rbp)
    movq -488(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_34
    movq -32(%rbp), %r10
    movq %r10, -496(%rbp)
    movq -496(%rbp), %r10
    leaq _str_11(%rip), %r11
    xorq %rcx, %rcx
.Lscl1_11:
    cmpb $0, (%r10,%rcx)
    je .Lscl1d_11
    incq %rcx
    jmp .Lscl1_11
.Lscl1d_11:
    pushq %rcx
    xorq %rdx, %rdx
.Lscl2_11:
    cmpb $0, (%r11,%rdx)
    je .Lscl2d_11
    incq %rdx
    jmp .Lscl2_11
.Lscl2d_11:
    popq %rcx
    pushq %r10
    pushq %r11
    pushq %rcx
    pushq %rdx
    leaq 1(%rcx,%rdx), %rdi
    call _novus_gc_alloc
    popq %rdx
    popq %rcx
    popq %r11
    popq %r10
    movq %rax, %rdi
.Lsc1_11:
    movb (%r10), %cl
    testb %cl, %cl
    jz .Lsc2_11
    movb %cl, (%rdi)
    incq %r10
    incq %rdi
    jmp .Lsc1_11
.Lsc2_11:
    movb (%r11), %cl
    movb %cl, (%rdi)
    testb %cl, %cl
    jz .Lscd_11
    incq %r11
    incq %rdi
    jmp .Lsc2_11
.Lscd_11:
    movq %rax, -504(%rbp)
    movq -504(%rbp), %r10
    movq %r10, -32(%rbp)
.Lendif_34:
    movq -32(%rbp), %r10
    movq %r10, -512(%rbp)
    movq -512(%rbp), %r10
    xorq %r11, %r11
.Lstrlen_s_12:
    cmpb $0, (%r10,%r11)
    je .Lstrlen_d_12
    incq %r11
    jmp .Lstrlen_s_12
.Lstrlen_d_12:
    movq %r11, -520(%rbp)
    movq -520(%rbp), %r10
    movq $1, %r11
    subq %r11, %r10
    movq %r10, -528(%rbp)
    movq -528(%rbp), %r10
    movq %r10, -48(%rbp)
.Lwhile_cond_35:
    movq -48(%rbp), %r10
    movq %r10, -536(%rbp)
    movq -536(%rbp), %r10
    movq $0, %r11
    cmpq %r11, %r10
    setge %r10b
    movzbq %r10b, %r10
    movq %r10, -544(%rbp)
    movq -544(%rbp), %r10
    testq %r10, %r10
    jz .Lwhile_end_37
.Lwhile_body_36:
    movq -16(%rbp), %r10
    movq %r10, -552(%rbp)
    movq -32(%rbp), %r10
    movq %r10, -560(%rbp)
    movq -48(%rbp), %r10
    movq %r10, -568(%rbp)
    movq -560(%rbp), %r10
    movq -568(%rbp), %r11
    xorq %rax, %rax
    movb (%r10,%r11), %al
    movq %rax, -576(%rbp)
    movq -576(%rbp), %r10
    movq %r10, -56(%rbp)
    leaq -56(%rbp), %r10
    movq %r10, -584(%rbp)
    movq -552(%rbp), %r10
    movq -584(%rbp), %r11
    xorq %rcx, %rcx
.Lscl1_13:
    cmpb $0, (%r10,%rcx)
    je .Lscl1d_13
    incq %rcx
    jmp .Lscl1_13
.Lscl1d_13:
    pushq %rcx
    xorq %rdx, %rdx
.Lscl2_13:
    cmpb $0, (%r11,%rdx)
    je .Lscl2d_13
    incq %rdx
    jmp .Lscl2_13
.Lscl2d_13:
    popq %rcx
    pushq %r10
    pushq %r11
    pushq %rcx
    pushq %rdx
    leaq 1(%rcx,%rdx), %rdi
    call _novus_gc_alloc
    popq %rdx
    popq %rcx
    popq %r11
    popq %r10
    movq %rax, %rdi
.Lsc1_13:
    movb (%r10), %cl
    testb %cl, %cl
    jz .Lsc2_13
    movb %cl, (%rdi)
    incq %r10
    incq %rdi
    jmp .Lsc1_13
.Lsc2_13:
    movb (%r11), %cl
    movb %cl, (%rdi)
    testb %cl, %cl
    jz .Lscd_13
    incq %r11
    incq %rdi
    jmp .Lsc2_13
.Lscd_13:
    movq %rax, -592(%rbp)
    movq -592(%rbp), %r10
    movq %r10, -16(%rbp)
    movq -48(%rbp), %r10
    movq %r10, -600(%rbp)
    movq -600(%rbp), %r10
    movq $1, %r11
    subq %r11, %r10
    movq %r10, -608(%rbp)
    movq -608(%rbp), %r10
    movq %r10, -48(%rbp)
    jmp .Lwhile_cond_35
.Lwhile_end_37:
    movq -16(%rbp), %r10
    movq %r10, -616(%rbp)
    movq -616(%rbp), %r10
    movq %r10, %rax
    addq $656, %rsp
    popq %rbp
    ret

abs_i32:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    ## function abs_i32
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -16(%rbp)
    movq -16(%rbp), %r10
    movq $0, %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -24(%rbp)
    movq -24(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_39
    movq -8(%rbp), %r10
    movq %r10, -32(%rbp)
    movq $0, %r10
    movq -32(%rbp), %r11
    subq %r11, %r10
    movq %r10, -40(%rbp)
    movq -40(%rbp), %r10
    movq %r10, %rax
    addq $80, %rsp
    popq %rbp
    ret
.Lendif_39:
    movq -8(%rbp), %r10
    movq %r10, -48(%rbp)
    movq -48(%rbp), %r10
    movq %r10, %rax
    addq $80, %rsp
    popq %rbp
    ret

clamp_i32:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    ## function clamp_i32
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -32(%rbp)
    movq -16(%rbp), %r10
    movq %r10, -40(%rbp)
    movq -32(%rbp), %r10
    movq -40(%rbp), %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -48(%rbp)
    movq -48(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_41
    movq -16(%rbp), %r10
    movq %r10, -56(%rbp)
    movq -56(%rbp), %r10
    movq %r10, %rax
    addq $128, %rsp
    popq %rbp
    ret
.Lendif_41:
    movq -8(%rbp), %r10
    movq %r10, -64(%rbp)
    movq -24(%rbp), %r10
    movq %r10, -72(%rbp)
    movq -64(%rbp), %r10
    movq -72(%rbp), %r11
    cmpq %r11, %r10
    setg %r10b
    movzbq %r10b, %r10
    movq %r10, -80(%rbp)
    movq -80(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_43
    movq -24(%rbp), %r10
    movq %r10, -88(%rbp)
    movq -88(%rbp), %r10
    movq %r10, %rax
    addq $128, %rsp
    popq %rbp
    ret
.Lendif_43:
    movq -8(%rbp), %r10
    movq %r10, -96(%rbp)
    movq -96(%rbp), %r10
    movq %r10, %rax
    addq $128, %rsp
    popq %rbp
    ret

repeat:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    ## function repeat
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    leaq _str_0(%rip), %r10
    movq %r10, -24(%rbp)
    movq $0, %r10
    movq %r10, -32(%rbp)
.Lwhile_cond_44:
    movq -32(%rbp), %r10
    movq %r10, -40(%rbp)
    movq -16(%rbp), %r10
    movq %r10, -48(%rbp)
    movq -40(%rbp), %r10
    movq -48(%rbp), %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -56(%rbp)
    movq -56(%rbp), %r10
    testq %r10, %r10
    jz .Lwhile_end_46
.Lwhile_body_45:
    movq -24(%rbp), %r10
    movq %r10, -64(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -72(%rbp)
    movq -64(%rbp), %r10
    movq -72(%rbp), %r11
    xorq %rcx, %rcx
.Lscl1_14:
    cmpb $0, (%r10,%rcx)
    je .Lscl1d_14
    incq %rcx
    jmp .Lscl1_14
.Lscl1d_14:
    pushq %rcx
    xorq %rdx, %rdx
.Lscl2_14:
    cmpb $0, (%r11,%rdx)
    je .Lscl2d_14
    incq %rdx
    jmp .Lscl2_14
.Lscl2d_14:
    popq %rcx
    pushq %r10
    pushq %r11
    pushq %rcx
    pushq %rdx
    leaq 1(%rcx,%rdx), %rdi
    call _novus_gc_alloc
    popq %rdx
    popq %rcx
    popq %r11
    popq %r10
    movq %rax, %rdi
.Lsc1_14:
    movb (%r10), %cl
    testb %cl, %cl
    jz .Lsc2_14
    movb %cl, (%rdi)
    incq %r10
    incq %rdi
    jmp .Lsc1_14
.Lsc2_14:
    movb (%r11), %cl
    movb %cl, (%rdi)
    testb %cl, %cl
    jz .Lscd_14
    incq %r11
    incq %rdi
    jmp .Lsc2_14
.Lscd_14:
    movq %rax, -80(%rbp)
    movq -80(%rbp), %r10
    movq %r10, -24(%rbp)
    movq -32(%rbp), %r10
    movq %r10, -88(%rbp)
    movq -88(%rbp), %r10
    movq $1, %r11
    addq %r11, %r10
    movq %r10, -96(%rbp)
    movq -96(%rbp), %r10
    movq %r10, -32(%rbp)
    jmp .Lwhile_cond_44
.Lwhile_end_46:
    movq -24(%rbp), %r10
    movq %r10, -104(%rbp)
    movq -104(%rbp), %r10
    movq %r10, %rax
    addq $144, %rsp
    popq %rbp
    ret

bool_to_str:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    ## function bool_to_str
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -16(%rbp)
    movq -16(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_48
    leaq _str_12(%rip), %r10
    movq %r10, %rax
    addq $48, %rsp
    popq %rbp
    ret
.Lendif_48:
    leaq _str_13(%rip), %r10
    movq %r10, %rax
    addq $48, %rsp
    popq %rbp
    ret

lcg_next:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    ## function lcg_next
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -24(%rbp)
    movq -24(%rbp), %r10
    movq $1103515245, %r11
    movq %r10, %rax
    imulq %r11, %rax
    movq %rax, -32(%rbp)
    movq -32(%rbp), %r10
    movq $12345, %r11
    addq %r11, %r10
    movq %r10, -40(%rbp)
    movq -40(%rbp), %r10
    movq %r10, -16(%rbp)
    movq -16(%rbp), %r10
    movq %r10, -48(%rbp)
    movq -48(%rbp), %r10
    movq $0, %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -56(%rbp)
    movq -56(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_50
    movq -16(%rbp), %r10
    movq %r10, -64(%rbp)
    movq $0, %r10
    movq -64(%rbp), %r11
    subq %r11, %r10
    movq %r10, -72(%rbp)
    movq -72(%rbp), %r10
    movq %r10, %rax
    addq $112, %rsp
    popq %rbp
    ret
.Lendif_50:
    movq -16(%rbp), %r10
    movq %r10, -80(%rbp)
    movq -80(%rbp), %r10
    movq %r10, %rax
    addq $112, %rsp
    popq %rbp
    ret

roll:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    ## function roll
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %r10
    movq %r10, -32(%rbp)
    movq -32(%rbp), %r10
    movq %r10, -24(%rbp)
    movq -24(%rbp), %r10
    movq %r10, -40(%rbp)
    movq -40(%rbp), %r10
    movq $0, %r11
    cmpq %r11, %r10
    setle %r10b
    movzbq %r10b, %r10
    movq %r10, -48(%rbp)
    movq -48(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_52
    movq $1, %r10
    movq %r10, -24(%rbp)
.Lendif_52:
    movq -8(%rbp), %r10
    movq %r10, -56(%rbp)
    movq -56(%rbp), %r10
    movq %r10, %rdi
    call lcg_next
    movq %rax, -64(%rbp)
    movq -24(%rbp), %r10
    movq %r10, -72(%rbp)
    movq -64(%rbp), %r10
    movq -72(%rbp), %r11
    movq %r10, %rax
    cqo
    idivq %r11
    movq %rdx, -80(%rbp)
    movq -80(%rbp), %r10
    movq $1, %r11
    addq %r11, %r10
    movq %r10, -88(%rbp)
    movq -88(%rbp), %r10
    movq %r10, %rax
    addq $128, %rsp
    popq %rbp
    ret

WORLD_WIDTH:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    ## function WORLD_WIDTH
    movq $800, %r10
    movq %r10, %rax
    addq $32, %rsp
    popq %rbp
    ret

WORLD_HEIGHT:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    ## function WORLD_HEIGHT
    movq $600, %r10
    movq %r10, %rax
    addq $32, %rsp
    popq %rbp
    ret

PLAYER_WIDTH:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    ## function PLAYER_WIDTH
    movq $16, %r10
    movq %r10, %rax
    addq $32, %rsp
    popq %rbp
    ret

PLAYER_HEIGHT:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    ## function PLAYER_HEIGHT
    movq $24, %r10
    movq %r10, %rax
    addq $32, %rsp
    popq %rbp
    ret

NUM_PLATFORMS:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    ## function NUM_PLATFORMS
    movq $9, %r10
    movq %r10, %rax
    addq $32, %rsp
    popq %rbp
    ret

check_collision:
    pushq %rbp
    movq %rsp, %rbp
    subq $304, %rsp
    ## function check_collision
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq %r8, -40(%rbp)
    movq %r9, -48(%rbp)
    movq 16(%rbp), %r10
    movq %r10, -72(%rbp)
    movq -72(%rbp), %r10
    movq %r10, -56(%rbp)
    movq 24(%rbp), %r10
    movq %r10, -80(%rbp)
    movq -80(%rbp), %r10
    movq %r10, -64(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -88(%rbp)
    movq -24(%rbp), %r10
    movq %r10, -96(%rbp)
    movq -88(%rbp), %r10
    movq -96(%rbp), %r11
    addq %r11, %r10
    movq %r10, -104(%rbp)
    movq -40(%rbp), %r10
    movq %r10, -112(%rbp)
    movq -104(%rbp), %r10
    movq -112(%rbp), %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -120(%rbp)
    movq -40(%rbp), %r10
    movq %r10, -128(%rbp)
    movq -56(%rbp), %r10
    movq %r10, -136(%rbp)
    movq -128(%rbp), %r10
    movq -136(%rbp), %r11
    addq %r11, %r10
    movq %r10, -144(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -152(%rbp)
    movq -144(%rbp), %r10
    movq -152(%rbp), %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -160(%rbp)
    movq -120(%rbp), %r10
    movq -160(%rbp), %r11
    orq %r11, %r10
    movq %r10, -168(%rbp)
    movq -16(%rbp), %r10
    movq %r10, -176(%rbp)
    movq -32(%rbp), %r10
    movq %r10, -184(%rbp)
    movq -176(%rbp), %r10
    movq -184(%rbp), %r11
    addq %r11, %r10
    movq %r10, -192(%rbp)
    movq -48(%rbp), %r10
    movq %r10, -200(%rbp)
    movq -192(%rbp), %r10
    movq -200(%rbp), %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -208(%rbp)
    movq -168(%rbp), %r10
    movq -208(%rbp), %r11
    orq %r11, %r10
    movq %r10, -216(%rbp)
    movq -48(%rbp), %r10
    movq %r10, -224(%rbp)
    movq -64(%rbp), %r10
    movq %r10, -232(%rbp)
    movq -224(%rbp), %r10
    movq -232(%rbp), %r11
    addq %r11, %r10
    movq %r10, -240(%rbp)
    movq -16(%rbp), %r10
    movq %r10, -248(%rbp)
    movq -240(%rbp), %r10
    movq -248(%rbp), %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -256(%rbp)
    movq -216(%rbp), %r10
    movq -256(%rbp), %r11
    orq %r11, %r10
    movq %r10, -264(%rbp)
    movq -264(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_54
    movq $0, %r10
    movq %r10, %rax
    addq $304, %rsp
    popq %rbp
    ret
.Lendif_54:
    movq $1, %r10
    movq %r10, %rax
    addq $304, %rsp
    popq %rbp
    ret

is_grounded:
    pushq %rbp
    movq %rsp, %rbp
    subq $384, %rsp
    ## function is_grounded
    movq _g_player_vy(%rip), %r10
    movq %r10, -48(%rbp)
    movq -48(%rbp), %r10
    movq $0, %r11
    cmpq %r11, %r10
    setle %r10b
    movzbq %r10b, %r10
    movq %r10, -56(%rbp)
    movq -56(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_56
    movq $0, %r10
    movq %r10, %rax
    addq $384, %rsp
    popq %rbp
    ret
.Lendif_56:
    movq $0, %r10
    movq %r10, -8(%rbp)
.Lwhile_cond_57:
    movq -8(%rbp), %r10
    movq %r10, -64(%rbp)
    call NUM_PLATFORMS
    movq %rax, -72(%rbp)
    movq -64(%rbp), %r10
    movq -72(%rbp), %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -80(%rbp)
    movq -80(%rbp), %r10
    testq %r10, %r10
    jz .Lwhile_end_59
.Lwhile_body_58:
    movq _g_platforms_x(%rip), %r10
    movq %r10, -88(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -96(%rbp)
    movq -88(%rbp), %r10
    movq -96(%rbp), %r11
    xorq %rax, %rax
    movb (%r10,%r11), %al
    movq %rax, -104(%rbp)
    movq -104(%rbp), %r10
    movq %r10, -16(%rbp)
    movq _g_platforms_y(%rip), %r10
    movq %r10, -112(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -120(%rbp)
    movq -112(%rbp), %r10
    movq -120(%rbp), %r11
    xorq %rax, %rax
    movb (%r10,%r11), %al
    movq %rax, -128(%rbp)
    movq -128(%rbp), %r10
    movq %r10, -24(%rbp)
    movq _g_platforms_w(%rip), %r10
    movq %r10, -136(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -144(%rbp)
    movq -136(%rbp), %r10
    movq -144(%rbp), %r11
    xorq %rax, %rax
    movb (%r10,%r11), %al
    movq %rax, -152(%rbp)
    movq -152(%rbp), %r10
    movq %r10, -32(%rbp)
    movq _g_platforms_h(%rip), %r10
    movq %r10, -160(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -168(%rbp)
    movq -160(%rbp), %r10
    movq -168(%rbp), %r11
    xorq %rax, %rax
    movb (%r10,%r11), %al
    movq %rax, -176(%rbp)
    movq -176(%rbp), %r10
    movq %r10, -40(%rbp)
    movq _g_player_y(%rip), %r10
    movq %r10, -184(%rbp)
    call PLAYER_HEIGHT
    movq %rax, -192(%rbp)
    movq -184(%rbp), %r10
    movq -192(%rbp), %r11
    addq %r11, %r10
    movq %r10, -200(%rbp)
    movq -24(%rbp), %r10
    movq %r10, -208(%rbp)
    movq -208(%rbp), %r10
    movq $8, %r11
    addq %r11, %r10
    movq %r10, -216(%rbp)
    movq -200(%rbp), %r10
    movq -216(%rbp), %r11
    cmpq %r11, %r10
    setle %r10b
    movzbq %r10b, %r10
    movq %r10, -224(%rbp)
    movq _g_player_vy(%rip), %r10
    movq %r10, -232(%rbp)
    movq -232(%rbp), %r10
    movq $0, %r11
    cmpq %r11, %r10
    setge %r10b
    movzbq %r10b, %r10
    movq %r10, -240(%rbp)
    movq -224(%rbp), %r10
    movq -240(%rbp), %r11
    andq %r11, %r10
    movq %r10, -248(%rbp)
    movq -248(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_61
    movq _g_player_x(%rip), %r10
    movq %r10, -256(%rbp)
    movq _g_player_y(%rip), %r10
    movq %r10, -264(%rbp)
    call PLAYER_WIDTH
    movq %rax, -272(%rbp)
    call PLAYER_HEIGHT
    movq %rax, -280(%rbp)
    movq -16(%rbp), %r10
    movq %r10, -288(%rbp)
    movq -24(%rbp), %r10
    movq %r10, -296(%rbp)
    movq -32(%rbp), %r10
    movq %r10, -304(%rbp)
    movq -40(%rbp), %r10
    movq %r10, -312(%rbp)
    movq -312(%rbp), %r10
    pushq %r10
    movq -304(%rbp), %r10
    pushq %r10
    movq -256(%rbp), %r10
    movq %r10, %rdi
    movq -264(%rbp), %r10
    movq %r10, %rsi
    movq -272(%rbp), %r10
    movq %r10, %rdx
    movq -280(%rbp), %r10
    movq %r10, %rcx
    movq -288(%rbp), %r10
    movq %r10, %r8
    movq -296(%rbp), %r10
    movq %r10, %r9
    call check_collision
    addq $16, %rsp
    movq %rax, -320(%rbp)
    movq -320(%rbp), %r10
    movq $1, %r11
    cmpq %r11, %r10
    sete %r10b
    movzbq %r10b, %r10
    movq %r10, -328(%rbp)
    movq -328(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_63
    movq $1, %r10
    movq %r10, %rax
    addq $384, %rsp
    popq %rbp
    ret
.Lendif_63:
.Lendif_61:
    movq -8(%rbp), %r10
    movq %r10, -336(%rbp)
    movq -336(%rbp), %r10
    movq $1, %r11
    addq %r11, %r10
    movq %r10, -344(%rbp)
    movq -344(%rbp), %r10
    movq %r10, -8(%rbp)
    jmp .Lwhile_cond_57
.Lwhile_end_59:
    movq $0, %r10
    movq %r10, %rax
    addq $384, %rsp
    popq %rbp
    ret

apply_gravity:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    ## function apply_gravity
    movq _g_player_vy(%rip), %r10
    movq %r10, -8(%rbp)
    movq -8(%rbp), %r10
    movq $3, %r11
    addq %r11, %r10
    movq %r10, -16(%rbp)
    movq -16(%rbp), %r10
    movq %r10, _g_player_vy(%rip)
    movq _g_player_vy(%rip), %r10
    movq %r10, -24(%rbp)
    movq -24(%rbp), %r10
    movq $500, %r11
    cmpq %r11, %r10
    setg %r10b
    movzbq %r10b, %r10
    movq %r10, -32(%rbp)
    movq -32(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_65
    movq $500, %r10
    movq %r10, _g_player_vy(%rip)
.Lendif_65:
    addq $64, %rsp
    popq %rbp
    ret

update_game:
    pushq %rbp
    movq %rsp, %rbp
    subq $592, %rsp
    ## function update_game
    movq _g_frame_count(%rip), %r10
    movq %r10, -48(%rbp)
    movq -48(%rbp), %r10
    movq $1, %r11
    addq %r11, %r10
    movq %r10, -56(%rbp)
    movq -56(%rbp), %r10
    movq %r10, _g_frame_count(%rip)
    call input_update
    movq %rax, -64(%rbp)
    call apply_gravity
    movq %rax, -72(%rbp)
    movq _g_player_x(%rip), %r10
    movq %r10, -80(%rbp)
    movq _g_player_vx(%rip), %r10
    movq %r10, -88(%rbp)
    movq -88(%rbp), %r10
    movq $100, %r11
    movq %r10, %rax
    cqo
    idivq %r11
    movq %rax, -96(%rbp)
    movq -80(%rbp), %r10
    movq -96(%rbp), %r11
    addq %r11, %r10
    movq %r10, -104(%rbp)
    movq -104(%rbp), %r10
    movq %r10, _g_player_x(%rip)
    movq _g_player_y(%rip), %r10
    movq %r10, -112(%rbp)
    movq _g_player_vy(%rip), %r10
    movq %r10, -120(%rbp)
    movq -120(%rbp), %r10
    movq $100, %r11
    movq %r10, %rax
    cqo
    idivq %r11
    movq %rax, -128(%rbp)
    movq -112(%rbp), %r10
    movq -128(%rbp), %r11
    addq %r11, %r10
    movq %r10, -136(%rbp)
    movq -136(%rbp), %r10
    movq %r10, _g_player_y(%rip)
    movq $0, %r10
    movq %r10, -8(%rbp)
.Lwhile_cond_66:
    movq -8(%rbp), %r10
    movq %r10, -144(%rbp)
    call NUM_PLATFORMS
    movq %rax, -152(%rbp)
    movq -144(%rbp), %r10
    movq -152(%rbp), %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -160(%rbp)
    movq -160(%rbp), %r10
    testq %r10, %r10
    jz .Lwhile_end_68
.Lwhile_body_67:
    movq _g_platforms_x(%rip), %r10
    movq %r10, -168(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -176(%rbp)
    movq -168(%rbp), %r10
    movq -176(%rbp), %r11
    xorq %rax, %rax
    movb (%r10,%r11), %al
    movq %rax, -184(%rbp)
    movq -184(%rbp), %r10
    movq %r10, -16(%rbp)
    movq _g_platforms_y(%rip), %r10
    movq %r10, -192(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -200(%rbp)
    movq -192(%rbp), %r10
    movq -200(%rbp), %r11
    xorq %rax, %rax
    movb (%r10,%r11), %al
    movq %rax, -208(%rbp)
    movq -208(%rbp), %r10
    movq %r10, -24(%rbp)
    movq _g_platforms_w(%rip), %r10
    movq %r10, -216(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -224(%rbp)
    movq -216(%rbp), %r10
    movq -224(%rbp), %r11
    xorq %rax, %rax
    movb (%r10,%r11), %al
    movq %rax, -232(%rbp)
    movq -232(%rbp), %r10
    movq %r10, -32(%rbp)
    movq _g_platforms_h(%rip), %r10
    movq %r10, -240(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -248(%rbp)
    movq -240(%rbp), %r10
    movq -248(%rbp), %r11
    xorq %rax, %rax
    movb (%r10,%r11), %al
    movq %rax, -256(%rbp)
    movq -256(%rbp), %r10
    movq %r10, -40(%rbp)
    movq _g_player_x(%rip), %r10
    movq %r10, -264(%rbp)
    movq _g_player_y(%rip), %r10
    movq %r10, -272(%rbp)
    call PLAYER_WIDTH
    movq %rax, -280(%rbp)
    call PLAYER_HEIGHT
    movq %rax, -288(%rbp)
    movq -16(%rbp), %r10
    movq %r10, -296(%rbp)
    movq -24(%rbp), %r10
    movq %r10, -304(%rbp)
    movq -32(%rbp), %r10
    movq %r10, -312(%rbp)
    movq -40(%rbp), %r10
    movq %r10, -320(%rbp)
    movq -320(%rbp), %r10
    pushq %r10
    movq -312(%rbp), %r10
    pushq %r10
    movq -264(%rbp), %r10
    movq %r10, %rdi
    movq -272(%rbp), %r10
    movq %r10, %rsi
    movq -280(%rbp), %r10
    movq %r10, %rdx
    movq -288(%rbp), %r10
    movq %r10, %rcx
    movq -296(%rbp), %r10
    movq %r10, %r8
    movq -304(%rbp), %r10
    movq %r10, %r9
    call check_collision
    addq $16, %rsp
    movq %rax, -328(%rbp)
    movq -328(%rbp), %r10
    movq $1, %r11
    cmpq %r11, %r10
    sete %r10b
    movzbq %r10b, %r10
    movq %r10, -336(%rbp)
    movq -336(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_70
    movq _g_player_vy(%rip), %r10
    movq %r10, -344(%rbp)
    movq -344(%rbp), %r10
    movq $0, %r11
    cmpq %r11, %r10
    setg %r10b
    movzbq %r10b, %r10
    movq %r10, -352(%rbp)
    movq -352(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_72
    movq -24(%rbp), %r10
    movq %r10, -360(%rbp)
    call PLAYER_HEIGHT
    movq %rax, -368(%rbp)
    movq -360(%rbp), %r10
    movq -368(%rbp), %r11
    subq %r11, %r10
    movq %r10, -376(%rbp)
    movq -376(%rbp), %r10
    movq %r10, _g_player_y(%rip)
    movq $0, %r10
    movq %r10, _g_player_vy(%rip)
.Lendif_72:
.Lendif_70:
    movq -8(%rbp), %r10
    movq %r10, -384(%rbp)
    movq -384(%rbp), %r10
    movq $1, %r11
    addq %r11, %r10
    movq %r10, -392(%rbp)
    movq -392(%rbp), %r10
    movq %r10, -8(%rbp)
    jmp .Lwhile_cond_66
.Lwhile_end_68:
    movq _g_player_x(%rip), %r10
    movq %r10, -400(%rbp)
    movq -400(%rbp), %r10
    movq $0, %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -408(%rbp)
    movq -408(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_74
    movq $0, %r10
    movq %r10, _g_player_x(%rip)
.Lendif_74:
    movq _g_player_x(%rip), %r10
    movq %r10, -416(%rbp)
    call PLAYER_WIDTH
    movq %rax, -424(%rbp)
    movq -416(%rbp), %r10
    movq -424(%rbp), %r11
    addq %r11, %r10
    movq %r10, -432(%rbp)
    call WORLD_WIDTH
    movq %rax, -440(%rbp)
    movq -432(%rbp), %r10
    movq -440(%rbp), %r11
    cmpq %r11, %r10
    setg %r10b
    movzbq %r10b, %r10
    movq %r10, -448(%rbp)
    movq -448(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_76
    call WORLD_WIDTH
    movq %rax, -456(%rbp)
    call PLAYER_WIDTH
    movq %rax, -464(%rbp)
    movq -456(%rbp), %r10
    movq -464(%rbp), %r11
    subq %r11, %r10
    movq %r10, -472(%rbp)
    movq -472(%rbp), %r10
    movq %r10, _g_player_x(%rip)
.Lendif_76:
    movq _g_player_y(%rip), %r10
    movq %r10, -480(%rbp)
    movq -480(%rbp), %r10
    movq $0, %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -488(%rbp)
    movq -488(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_78
    movq $0, %r10
    movq %r10, _g_player_y(%rip)
.Lendif_78:
    movq _g_player_y(%rip), %r10
    movq %r10, -496(%rbp)
    call WORLD_HEIGHT
    movq %rax, -504(%rbp)
    movq -496(%rbp), %r10
    movq -504(%rbp), %r11
    cmpq %r11, %r10
    setg %r10b
    movzbq %r10b, %r10
    movq %r10, -512(%rbp)
    movq -512(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_80
    movq _g_game_lives(%rip), %r10
    movq %r10, -520(%rbp)
    movq -520(%rbp), %r10
    movq $1, %r11
    subq %r11, %r10
    movq %r10, -528(%rbp)
    movq -528(%rbp), %r10
    movq %r10, _g_game_lives(%rip)
    movq _g_game_lives(%rip), %r10
    movq %r10, -536(%rbp)
    movq -536(%rbp), %r10
    movq $0, %r11
    cmpq %r11, %r10
    setle %r10b
    movzbq %r10b, %r10
    movq %r10, -544(%rbp)
    movq -544(%rbp), %r10
    testq %r10, %r10
    jz .Lelse_81
    movq $1, %r10
    movq %r10, _g_game_over(%rip)
    jmp .Lendif_82
.Lelse_81:
    movq $100, %r10
    movq %r10, _g_player_x(%rip)
    movq $300, %r10
    movq %r10, _g_player_y(%rip)
    movq $0, %r10
    movq %r10, _g_player_vy(%rip)
.Lendif_82:
.Lendif_80:
    movq _g_game_score(%rip), %r10
    movq %r10, -552(%rbp)
    movq -552(%rbp), %r10
    movq $1, %r11
    addq %r11, %r10
    movq %r10, -560(%rbp)
    movq -560(%rbp), %r10
    movq %r10, _g_game_score(%rip)
    addq $592, %rsp
    popq %rbp
    ret

render_game:
    pushq %rbp
    movq %rsp, %rbp
    subq $384, %rsp
    ## function render_game
    movq $4278190080, %r10
    movq %r10, %rdi
    call fb_clear
    movq %rax, -56(%rbp)
    movq $0, %r10
    movq %r10, -8(%rbp)
.Lwhile_cond_83:
    movq -8(%rbp), %r10
    movq %r10, -64(%rbp)
    call NUM_PLATFORMS
    movq %rax, -72(%rbp)
    movq -64(%rbp), %r10
    movq -72(%rbp), %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -80(%rbp)
    movq -80(%rbp), %r10
    testq %r10, %r10
    jz .Lwhile_end_85
.Lwhile_body_84:
    movq _g_platforms_x(%rip), %r10
    movq %r10, -88(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -96(%rbp)
    movq -88(%rbp), %r10
    movq -96(%rbp), %r11
    xorq %rax, %rax
    movb (%r10,%r11), %al
    movq %rax, -104(%rbp)
    movq -104(%rbp), %r10
    movq %r10, -16(%rbp)
    movq _g_platforms_y(%rip), %r10
    movq %r10, -112(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -120(%rbp)
    movq -112(%rbp), %r10
    movq -120(%rbp), %r11
    xorq %rax, %rax
    movb (%r10,%r11), %al
    movq %rax, -128(%rbp)
    movq -128(%rbp), %r10
    movq %r10, -24(%rbp)
    movq _g_platforms_w(%rip), %r10
    movq %r10, -136(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -144(%rbp)
    movq -136(%rbp), %r10
    movq -144(%rbp), %r11
    xorq %rax, %rax
    movb (%r10,%r11), %al
    movq %rax, -152(%rbp)
    movq -152(%rbp), %r10
    movq %r10, -32(%rbp)
    movq _g_platforms_h(%rip), %r10
    movq %r10, -160(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -168(%rbp)
    movq -160(%rbp), %r10
    movq -168(%rbp), %r11
    xorq %rax, %rax
    movb (%r10,%r11), %al
    movq %rax, -176(%rbp)
    movq -176(%rbp), %r10
    movq %r10, -40(%rbp)
    movq -16(%rbp), %r10
    movq %r10, -184(%rbp)
    movq -24(%rbp), %r10
    movq %r10, -192(%rbp)
    movq -32(%rbp), %r10
    movq %r10, -200(%rbp)
    movq -40(%rbp), %r10
    movq %r10, -208(%rbp)
    movq -184(%rbp), %r10
    movq %r10, %rdi
    movq -192(%rbp), %r10
    movq %r10, %rsi
    movq -200(%rbp), %r10
    movq %r10, %rdx
    movq -208(%rbp), %r10
    movq %r10, %rcx
    movq $4278255360, %r10
    movq %r10, %r8
    call fb_draw_rect
    movq %rax, -216(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -224(%rbp)
    movq -224(%rbp), %r10
    movq $1, %r11
    addq %r11, %r10
    movq %r10, -232(%rbp)
    movq -232(%rbp), %r10
    movq %r10, -8(%rbp)
    jmp .Lwhile_cond_83
.Lwhile_end_85:
    movq _g_player_x(%rip), %r10
    movq %r10, -240(%rbp)
    movq _g_player_y(%rip), %r10
    movq %r10, -248(%rbp)
    call PLAYER_WIDTH
    movq %rax, -256(%rbp)
    call PLAYER_HEIGHT
    movq %rax, -264(%rbp)
    movq -240(%rbp), %r10
    movq %r10, %rdi
    movq -248(%rbp), %r10
    movq %r10, %rsi
    movq -256(%rbp), %r10
    movq %r10, %rdx
    movq -264(%rbp), %r10
    movq %r10, %rcx
    movq $4294901760, %r10
    movq %r10, %r8
    call fb_draw_rect
    movq %rax, -272(%rbp)
    movq $0, %r10
    movq %r10, -48(%rbp)
.Lwhile_cond_86:
    movq -48(%rbp), %r10
    movq %r10, -280(%rbp)
    movq _g_game_lives(%rip), %r10
    movq %r10, -288(%rbp)
    movq -280(%rbp), %r10
    movq -288(%rbp), %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -296(%rbp)
    movq -296(%rbp), %r10
    testq %r10, %r10
    jz .Lwhile_end_88
.Lwhile_body_87:
    movq -48(%rbp), %r10
    movq %r10, -304(%rbp)
    movq -304(%rbp), %r10
    movq $20, %r11
    movq %r10, %rax
    imulq %r11, %rax
    movq %rax, -312(%rbp)
    movq $10, %r10
    movq -312(%rbp), %r11
    addq %r11, %r10
    movq %r10, -320(%rbp)
    movq -320(%rbp), %r10
    movq %r10, %rdi
    movq $10, %r10
    movq %r10, %rsi
    movq $16, %r10
    movq %r10, %rdx
    movq $16, %r10
    movq %r10, %rcx
    movq $4294967040, %r10
    movq %r10, %r8
    call fb_draw_rect
    movq %rax, -328(%rbp)
    movq -48(%rbp), %r10
    movq %r10, -336(%rbp)
    movq -336(%rbp), %r10
    movq $1, %r11
    addq %r11, %r10
    movq %r10, -344(%rbp)
    movq -344(%rbp), %r10
    movq %r10, -48(%rbp)
    jmp .Lwhile_cond_86
.Lwhile_end_88:
    call fb_flush
    movq %rax, -352(%rbp)
    addq $384, %rsp
    popq %rbp
    ret

test_game_logic:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    ## function test_game_logic
    movq $0, %r10
    movq %r10, -8(%rbp)
.Lwhile_cond_89:
    movq -8(%rbp), %r10
    movq %r10, -16(%rbp)
    movq -16(%rbp), %r10
    movq $100, %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -24(%rbp)
    movq -24(%rbp), %r10
    testq %r10, %r10
    jz .Lwhile_end_91
.Lwhile_body_90:
    call update_game
    movq %rax, -32(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -40(%rbp)
    movq -40(%rbp), %r10
    movq $1, %r11
    addq %r11, %r10
    movq %r10, -48(%rbp)
    movq -48(%rbp), %r10
    movq %r10, -8(%rbp)
    jmp .Lwhile_cond_89
.Lwhile_end_91:
    addq $80, %rsp
    popq %rbp
    ret

main:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    ## function main
    call fb_open
    movq %rax, -32(%rbp)
    movq -32(%rbp), %r10
    movq %r10, -8(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -40(%rbp)
    movq -40(%rbp), %r10
    movq $0, %r11
    cmpq %r11, %r10
    setge %r10b
    movzbq %r10b, %r10
    movq %r10, -48(%rbp)
    movq -48(%rbp), %r10
    testq %r10, %r10
    jz .Lelse_92
    movq $0, %r10
    movq %r10, -16(%rbp)
    movq $300, %r10
    movq %r10, -24(%rbp)
.Lwhile_cond_94:
    movq -16(%rbp), %r10
    movq %r10, -56(%rbp)
    movq -24(%rbp), %r10
    movq %r10, -64(%rbp)
    movq -56(%rbp), %r10
    movq -64(%rbp), %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -72(%rbp)
    movq _g_game_over(%rip), %r10
    movq %r10, -80(%rbp)
    movq -80(%rbp), %r10
    movq $0, %r11
    cmpq %r11, %r10
    sete %r10b
    movzbq %r10b, %r10
    movq %r10, -88(%rbp)
    movq -72(%rbp), %r10
    movq -88(%rbp), %r11
    andq %r11, %r10
    movq %r10, -96(%rbp)
    movq -96(%rbp), %r10
    testq %r10, %r10
    jz .Lwhile_end_96
.Lwhile_body_95:
    call update_game
    movq %rax, -104(%rbp)
    call render_game
    movq %rax, -112(%rbp)
    movq -16(%rbp), %r10
    movq %r10, -120(%rbp)
    movq -120(%rbp), %r10
    movq $1, %r11
    addq %r11, %r10
    movq %r10, -128(%rbp)
    movq -128(%rbp), %r10
    movq %r10, -16(%rbp)
    jmp .Lwhile_cond_94
.Lwhile_end_96:
    call fb_close
    movq %rax, -136(%rbp)
    movq _g_game_over(%rip), %r10
    movq %r10, -144(%rbp)
    movq -144(%rbp), %r10
    movq $1, %r11
    cmpq %r11, %r10
    sete %r10b
    movzbq %r10b, %r10
    movq %r10, -152(%rbp)
    movq -152(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_98
    movq $1, %r10
    movq %r10, %rax
    addq $192, %rsp
    popq %rbp
    ret
.Lendif_98:
    movq $0, %r10
    movq %r10, %rax
    addq $192, %rsp
    popq %rbp
    ret
    jmp .Lendif_93
.Lelse_92:
    call test_game_logic
    movq %rax, -160(%rbp)
    movq $0, %r10
    movq %r10, %rax
    addq $192, %rsp
    popq %rbp
    ret
.Lendif_93:
    addq $192, %rsp
    popq %rbp
    ret


_novus_gc_register:
    pushq %rbp
    movq %rsp, %rbp
    leaq _novus_gc_count(%rip), %rax
    movq (%rax), %rcx
    cmpq $65536, %rcx
    jge .Lgcreg_done_gas
    leaq _novus_gc_table(%rip), %rdx
    imulq $24, %rcx, %r8
    addq %r8, %rdx
    movq %rdi, (%rdx)
    movq %rsi, 8(%rdx)
    movq $0, 16(%rdx)
    incq %rcx
    movq %rcx, (%rax)
.Lgcreg_done_gas:
    popq %rbp
    ret

_novus_gc_collect:
    pushq %rbp
    movq %rsp, %rbp
    pushq %rbx
    pushq %r12
    pushq %r13
    pushq %r14
    pushq %r15
    leaq _novus_gc_count(%rip), %rax
    movq (%rax), %r12
    testq %r12, %r12
    jz .Lgc_done_gas
    leaq _novus_gc_table(%rip), %r13
    xorq %rcx, %rcx
.Lgc_clear_gas:
    cmpq %r12, %rcx
    jge .Lgc_scan_gas
    imulq $24, %rcx, %rax
    movq $0, 16(%r13,%rax)
    incq %rcx
    jmp .Lgc_clear_gas
.Lgc_scan_gas:
    movq %rsp, %r14
    leaq _novus_gc_stack_bottom(%rip), %rax
    movq (%rax), %r15
    testq %r15, %r15
    jz .Lgc_scan_globals_gas
.Lgc_scan_loop_gas:
    cmpq %r15, %r14
    jge .Lgc_scan_globals_gas
    movq (%r14), %rbx
    xorq %rcx, %rcx
.Lgc_match_gas:
    cmpq %r12, %rcx
    jge .Lgc_next_word_gas
    imulq $24, %rcx, %rax
    movq (%r13,%rax), %rsi
    cmpq %rsi, %rbx
    jb .Lgc_match_next_gas
    movq 8(%r13,%rax), %rdi
    addq %rsi, %rdi
    cmpq %rdi, %rbx
    jae .Lgc_match_next_gas
    movq $1, 16(%r13,%rax)
    jmp .Lgc_next_word_gas
.Lgc_match_next_gas:
    incq %rcx
    jmp .Lgc_match_gas
.Lgc_next_word_gas:
    addq $8, %r14
    jmp .Lgc_scan_loop_gas
.Lgc_scan_globals_gas:
    leaq _g_fb_fd(%rip), %rax
    movq (%rax), %rbx
    xorq %rcx, %rcx
.Lgc_gm_15:
    cmpq %r12, %rcx
    jge .Lgc_gn_15
    imulq $24, %rcx, %rax
    movq (%r13,%rax), %rsi
    cmpq %rsi, %rbx
    jb .Lgc_gmn_15
    movq 8(%r13,%rax), %rdi
    addq %rsi, %rdi
    cmpq %rdi, %rbx
    jae .Lgc_gmn_15
    movq $1, 16(%r13,%rax)
    jmp .Lgc_gn_15
.Lgc_gmn_15:
    incq %rcx
    jmp .Lgc_gm_15
.Lgc_gn_15:
    leaq _g_input_state(%rip), %rax
    movq (%rax), %rbx
    xorq %rcx, %rcx
.Lgc_gm_16:
    cmpq %r12, %rcx
    jge .Lgc_gn_16
    imulq $24, %rcx, %rax
    movq (%r13,%rax), %rsi
    cmpq %rsi, %rbx
    jb .Lgc_gmn_16
    movq 8(%r13,%rax), %rdi
    addq %rsi, %rdi
    cmpq %rdi, %rbx
    jae .Lgc_gmn_16
    movq $1, 16(%r13,%rax)
    jmp .Lgc_gn_16
.Lgc_gmn_16:
    incq %rcx
    jmp .Lgc_gm_16
.Lgc_gn_16:
    leaq _g_player_x(%rip), %rax
    movq (%rax), %rbx
    xorq %rcx, %rcx
.Lgc_gm_17:
    cmpq %r12, %rcx
    jge .Lgc_gn_17
    imulq $24, %rcx, %rax
    movq (%r13,%rax), %rsi
    cmpq %rsi, %rbx
    jb .Lgc_gmn_17
    movq 8(%r13,%rax), %rdi
    addq %rsi, %rdi
    cmpq %rdi, %rbx
    jae .Lgc_gmn_17
    movq $1, 16(%r13,%rax)
    jmp .Lgc_gn_17
.Lgc_gmn_17:
    incq %rcx
    jmp .Lgc_gm_17
.Lgc_gn_17:
    leaq _g_player_y(%rip), %rax
    movq (%rax), %rbx
    xorq %rcx, %rcx
.Lgc_gm_18:
    cmpq %r12, %rcx
    jge .Lgc_gn_18
    imulq $24, %rcx, %rax
    movq (%r13,%rax), %rsi
    cmpq %rsi, %rbx
    jb .Lgc_gmn_18
    movq 8(%r13,%rax), %rdi
    addq %rsi, %rdi
    cmpq %rdi, %rbx
    jae .Lgc_gmn_18
    movq $1, 16(%r13,%rax)
    jmp .Lgc_gn_18
.Lgc_gmn_18:
    incq %rcx
    jmp .Lgc_gm_18
.Lgc_gn_18:
    leaq _g_player_vx(%rip), %rax
    movq (%rax), %rbx
    xorq %rcx, %rcx
.Lgc_gm_19:
    cmpq %r12, %rcx
    jge .Lgc_gn_19
    imulq $24, %rcx, %rax
    movq (%r13,%rax), %rsi
    cmpq %rsi, %rbx
    jb .Lgc_gmn_19
    movq 8(%r13,%rax), %rdi
    addq %rsi, %rdi
    cmpq %rdi, %rbx
    jae .Lgc_gmn_19
    movq $1, 16(%r13,%rax)
    jmp .Lgc_gn_19
.Lgc_gmn_19:
    incq %rcx
    jmp .Lgc_gm_19
.Lgc_gn_19:
    leaq _g_player_vy(%rip), %rax
    movq (%rax), %rbx
    xorq %rcx, %rcx
.Lgc_gm_20:
    cmpq %r12, %rcx
    jge .Lgc_gn_20
    imulq $24, %rcx, %rax
    movq (%r13,%rax), %rsi
    cmpq %rsi, %rbx
    jb .Lgc_gmn_20
    movq 8(%r13,%rax), %rdi
    addq %rsi, %rdi
    cmpq %rdi, %rbx
    jae .Lgc_gmn_20
    movq $1, 16(%r13,%rax)
    jmp .Lgc_gn_20
.Lgc_gmn_20:
    incq %rcx
    jmp .Lgc_gm_20
.Lgc_gn_20:
    leaq _g_platforms_x(%rip), %rax
    movq (%rax), %rbx
    xorq %rcx, %rcx
.Lgc_gm_21:
    cmpq %r12, %rcx
    jge .Lgc_gn_21
    imulq $24, %rcx, %rax
    movq (%r13,%rax), %rsi
    cmpq %rsi, %rbx
    jb .Lgc_gmn_21
    movq 8(%r13,%rax), %rdi
    addq %rsi, %rdi
    cmpq %rdi, %rbx
    jae .Lgc_gmn_21
    movq $1, 16(%r13,%rax)
    jmp .Lgc_gn_21
.Lgc_gmn_21:
    incq %rcx
    jmp .Lgc_gm_21
.Lgc_gn_21:
    leaq _g_platforms_y(%rip), %rax
    movq (%rax), %rbx
    xorq %rcx, %rcx
.Lgc_gm_22:
    cmpq %r12, %rcx
    jge .Lgc_gn_22
    imulq $24, %rcx, %rax
    movq (%r13,%rax), %rsi
    cmpq %rsi, %rbx
    jb .Lgc_gmn_22
    movq 8(%r13,%rax), %rdi
    addq %rsi, %rdi
    cmpq %rdi, %rbx
    jae .Lgc_gmn_22
    movq $1, 16(%r13,%rax)
    jmp .Lgc_gn_22
.Lgc_gmn_22:
    incq %rcx
    jmp .Lgc_gm_22
.Lgc_gn_22:
    leaq _g_platforms_w(%rip), %rax
    movq (%rax), %rbx
    xorq %rcx, %rcx
.Lgc_gm_23:
    cmpq %r12, %rcx
    jge .Lgc_gn_23
    imulq $24, %rcx, %rax
    movq (%r13,%rax), %rsi
    cmpq %rsi, %rbx
    jb .Lgc_gmn_23
    movq 8(%r13,%rax), %rdi
    addq %rsi, %rdi
    cmpq %rdi, %rbx
    jae .Lgc_gmn_23
    movq $1, 16(%r13,%rax)
    jmp .Lgc_gn_23
.Lgc_gmn_23:
    incq %rcx
    jmp .Lgc_gm_23
.Lgc_gn_23:
    leaq _g_platforms_h(%rip), %rax
    movq (%rax), %rbx
    xorq %rcx, %rcx
.Lgc_gm_24:
    cmpq %r12, %rcx
    jge .Lgc_gn_24
    imulq $24, %rcx, %rax
    movq (%r13,%rax), %rsi
    cmpq %rsi, %rbx
    jb .Lgc_gmn_24
    movq 8(%r13,%rax), %rdi
    addq %rsi, %rdi
    cmpq %rdi, %rbx
    jae .Lgc_gmn_24
    movq $1, 16(%r13,%rax)
    jmp .Lgc_gn_24
.Lgc_gmn_24:
    incq %rcx
    jmp .Lgc_gm_24
.Lgc_gn_24:
    leaq _g_game_score(%rip), %rax
    movq (%rax), %rbx
    xorq %rcx, %rcx
.Lgc_gm_25:
    cmpq %r12, %rcx
    jge .Lgc_gn_25
    imulq $24, %rcx, %rax
    movq (%r13,%rax), %rsi
    cmpq %rsi, %rbx
    jb .Lgc_gmn_25
    movq 8(%r13,%rax), %rdi
    addq %rsi, %rdi
    cmpq %rdi, %rbx
    jae .Lgc_gmn_25
    movq $1, 16(%r13,%rax)
    jmp .Lgc_gn_25
.Lgc_gmn_25:
    incq %rcx
    jmp .Lgc_gm_25
.Lgc_gn_25:
    leaq _g_game_lives(%rip), %rax
    movq (%rax), %rbx
    xorq %rcx, %rcx
.Lgc_gm_26:
    cmpq %r12, %rcx
    jge .Lgc_gn_26
    imulq $24, %rcx, %rax
    movq (%r13,%rax), %rsi
    cmpq %rsi, %rbx
    jb .Lgc_gmn_26
    movq 8(%r13,%rax), %rdi
    addq %rsi, %rdi
    cmpq %rdi, %rbx
    jae .Lgc_gmn_26
    movq $1, 16(%r13,%rax)
    jmp .Lgc_gn_26
.Lgc_gmn_26:
    incq %rcx
    jmp .Lgc_gm_26
.Lgc_gn_26:
    leaq _g_game_over(%rip), %rax
    movq (%rax), %rbx
    xorq %rcx, %rcx
.Lgc_gm_27:
    cmpq %r12, %rcx
    jge .Lgc_gn_27
    imulq $24, %rcx, %rax
    movq (%r13,%rax), %rsi
    cmpq %rsi, %rbx
    jb .Lgc_gmn_27
    movq 8(%r13,%rax), %rdi
    addq %rsi, %rdi
    cmpq %rdi, %rbx
    jae .Lgc_gmn_27
    movq $1, 16(%r13,%rax)
    jmp .Lgc_gn_27
.Lgc_gmn_27:
    incq %rcx
    jmp .Lgc_gm_27
.Lgc_gn_27:
    leaq _g_frame_count(%rip), %rax
    movq (%rax), %rbx
    xorq %rcx, %rcx
.Lgc_gm_28:
    cmpq %r12, %rcx
    jge .Lgc_gn_28
    imulq $24, %rcx, %rax
    movq (%r13,%rax), %rsi
    cmpq %rsi, %rbx
    jb .Lgc_gmn_28
    movq 8(%r13,%rax), %rdi
    addq %rsi, %rdi
    cmpq %rdi, %rbx
    jae .Lgc_gmn_28
    movq $1, 16(%r13,%rax)
    jmp .Lgc_gn_28
.Lgc_gmn_28:
    incq %rcx
    jmp .Lgc_gm_28
.Lgc_gn_28:
.Lgc_trans_gas:
    xorq %rcx, %rcx
    xorq %rsi, %rsi
.Lgc_trans_loop_gas:
    cmpq %r12, %rcx
    jge .Lgc_trans_check_gas
    imulq $24, %rcx, %rax
    cmpq $0, 16(%r13,%rax)
    je .Lgc_trans_next_gas
    movq (%r13,%rax), %r8
    movq 8(%r13,%rax), %r9
    xorq %r10, %r10
.Lgc_trans_scan_gas:
    leaq 8(%r10), %r11
    cmpq %r9, %r11
    jg .Lgc_trans_next_gas
    movq (%r8,%r10), %rbx
    pushq %rcx
    xorq %rcx, %rcx
.Lgc_trans_match_gas:
    cmpq %r12, %rcx
    jge .Lgc_trans_scan_next_gas
    imulq $24, %rcx, %rax
    cmpq $0, 16(%r13,%rax)
    jne .Lgc_trans_match_next_gas
    movq (%r13,%rax), %rdi
    cmpq %rdi, %rbx
    jb .Lgc_trans_match_next_gas
    movq 8(%r13,%rax), %r11
    addq %rdi, %r11
    cmpq %r11, %rbx
    jae .Lgc_trans_match_next_gas
    movq $1, 16(%r13,%rax)
    movq $1, %rsi
.Lgc_trans_match_next_gas:
    incq %rcx
    jmp .Lgc_trans_match_gas
.Lgc_trans_scan_next_gas:
    popq %rcx
    addq $8, %r10
    jmp .Lgc_trans_scan_gas
.Lgc_trans_next_gas:
    incq %rcx
    jmp .Lgc_trans_loop_gas
.Lgc_trans_check_gas:
    testq %rsi, %rsi
    jnz .Lgc_trans_gas
    xorq %rcx, %rcx
    xorq %rdx, %rdx
    leaq _novus_gc_freelist(%rip), %r14
.Lgc_sweep_gas:
    cmpq %r12, %rcx
    jge .Lgc_sweep_done_gas
    imulq $24, %rcx, %rax
    cmpq $0, 16(%r13,%rax)
    jnz .Lgc_sweep_keep_gas
    movq (%r13,%rax), %rbx
    movq 8(%r13,%rax), %r8
    cmpq $16, %r8
    jl .Lgc_sweep_skip_gas
    movq (%r14), %r9
    movq %r9, (%rbx)
    movq %r8, 8(%rbx)
    movq %rbx, (%r14)
.Lgc_sweep_skip_gas:
    incq %rcx
    jmp .Lgc_sweep_gas
.Lgc_sweep_keep_gas:
    cmpq %rcx, %rdx
    je .Lgc_sweep_keep_skip_gas
    imulq $24, %rdx, %rbx
    movq (%r13,%rax), %r8
    movq %r8, (%r13,%rbx)
    movq 8(%r13,%rax), %r8
    movq %r8, 8(%r13,%rbx)
    movq $0, 16(%r13,%rbx)
.Lgc_sweep_keep_skip_gas:
    incq %rdx
    incq %rcx
    jmp .Lgc_sweep_gas
.Lgc_sweep_done_gas:
    leaq _novus_gc_count(%rip), %rax
    movq %rdx, (%rax)
.Lgc_done_gas:
    popq %r15
    popq %r14
    popq %r13
    popq %r12
    popq %rbx
    popq %rbp
    ret

_novus_gc_alloc:
    pushq %rbp
    movq %rsp, %rbp
    pushq %rbx
    pushq %r12
    addq $7, %rdi
    andq $-8, %rdi
    cmpq $16, %rdi
    jge .Lgca_size_ok_gas
    movq $16, %rdi
.Lgca_size_ok_gas:
    movq %rdi, %r12
    leaq _novus_gc_count(%rip), %rax
    movq (%rax), %rcx
    leaq _novus_gc_threshold(%rip), %rax
    movq (%rax), %rdx
    cmpq %rdx, %rcx
    jl .Lgca_try_free_gas
    call _novus_gc_collect
    leaq _novus_gc_threshold(%rip), %rax
    shlq $1, (%rax)
.Lgca_try_free_gas:
    leaq _novus_gc_freelist(%rip), %rbx
    movq (%rbx), %rax
.Lgca_fl_loop_gas:
    testq %rax, %rax
    jz .Lgca_bump_gas
    cmpq %r12, 8(%rax)
    jge .Lgca_fl_found_gas
    movq %rax, %rbx
    movq (%rax), %rax
    jmp .Lgca_fl_loop_gas
.Lgca_fl_found_gas:
    movq (%rax), %rcx
    movq %rcx, (%rbx)
    movq %rax, %rbx
    movq %rbx, %rdi
    movq %r12, %rsi
    pushq %rbx
    call _novus_gc_register
    popq %rax
    jmp .Lgca_ret_gas
.Lgca_bump_gas:
    leaq _novus_heap_ptr(%rip), %rcx
    movq (%rcx), %rax
    testq %rax, %rax
    jnz .Lgca_ready_29
    leaq _novus_heap(%rip), %rax
.Lgca_ready_29:
    movq %rax, %rbx
    addq %r12, %rax
    movq %rax, (%rcx)
    movq %rbx, %rdi
    movq %r12, %rsi
    pushq %rbx
    call _novus_gc_register
    popq %rax
.Lgca_ret_gas:
    popq %r12
    popq %rbx
    popq %rbp
    ret
