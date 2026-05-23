.data
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

.text
.globl main

.globl _start
_start:
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
    jz .Lendif_3
    movq $0, %r10
    movq %r10, %rax
    addq $96, %rsp
    popq %rbp
    ret
.Lendif_3:
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

min:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    ## function min
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %r10
    movq %r10, -24(%rbp)
    movq -16(%rbp), %r10
    movq %r10, -32(%rbp)
    movq -24(%rbp), %r10
    movq -32(%rbp), %r11
    cmpq %r11, %r10
    setl %r10b
    movzbq %r10b, %r10
    movq %r10, -40(%rbp)
    movq -40(%rbp), %r10
    testq %r10, %r10
    jz .Lendif_5
    movq -8(%rbp), %r10
    movq %r10, -48(%rbp)
    movq -48(%rbp), %r10
    movq %r10, %rax
    addq $96, %rsp
    popq %rbp
    ret
.Lendif_5:
    movq -16(%rbp), %r10
    movq %r10, -56(%rbp)
    movq -56(%rbp), %r10
    movq %r10, %rax
    addq $96, %rsp
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
    subq $192, %rsp
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
    movq %r10, %rax
    addq $192, %rsp
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
    jz .Lendif_7
    movq $0, %r10
    movq %r10, %rax
    addq $384, %rsp
    popq %rbp
    ret
.Lendif_7:
    movq $0, %r10
    movq %r10, -8(%rbp)
.Lwhile_cond_8:
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
    jz .Lwhile_end_10
.Lwhile_body_9:
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
    jz .Lendif_12
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
    jz .Lendif_14
    movq $1, %r10
    movq %r10, %rax
    addq $384, %rsp
    popq %rbp
    ret
.Lendif_14:
.Lendif_12:
    movq -8(%rbp), %r10
    movq %r10, -336(%rbp)
    movq -336(%rbp), %r10
    movq $1, %r11
    addq %r11, %r10
    movq %r10, -344(%rbp)
    movq -344(%rbp), %r10
    movq %r10, -8(%rbp)
    jmp .Lwhile_cond_8
.Lwhile_end_10:
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
    jz .Lendif_16
    movq $500, %r10
    movq %r10, _g_player_vy(%rip)
.Lendif_16:
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
.Lwhile_cond_17:
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
    jz .Lwhile_end_19
.Lwhile_body_18:
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
    jz .Lendif_21
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
    jz .Lendif_23
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
.Lendif_23:
.Lendif_21:
    movq -8(%rbp), %r10
    movq %r10, -384(%rbp)
    movq -384(%rbp), %r10
    movq $1, %r11
    addq %r11, %r10
    movq %r10, -392(%rbp)
    movq -392(%rbp), %r10
    movq %r10, -8(%rbp)
    jmp .Lwhile_cond_17
.Lwhile_end_19:
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
    jz .Lendif_25
    movq $0, %r10
    movq %r10, _g_player_x(%rip)
.Lendif_25:
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
    jz .Lendif_27
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
.Lendif_27:
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
    jz .Lendif_29
    movq $0, %r10
    movq %r10, _g_player_y(%rip)
.Lendif_29:
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
    jz .Lendif_31
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
    jz .Lelse_32
    movq $1, %r10
    movq %r10, _g_game_over(%rip)
    jmp .Lendif_33
.Lelse_32:
    movq $100, %r10
    movq %r10, _g_player_x(%rip)
    movq $300, %r10
    movq %r10, _g_player_y(%rip)
    movq $0, %r10
    movq %r10, _g_player_vy(%rip)
.Lendif_33:
.Lendif_31:
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
.Lwhile_cond_34:
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
    jz .Lwhile_end_36
.Lwhile_body_35:
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
    jmp .Lwhile_cond_34
.Lwhile_end_36:
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
.Lwhile_cond_37:
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
    jz .Lwhile_end_39
.Lwhile_body_38:
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
    jmp .Lwhile_cond_37
.Lwhile_end_39:
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
.Lwhile_cond_40:
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
    jz .Lwhile_end_42
.Lwhile_body_41:
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
    jmp .Lwhile_cond_40
.Lwhile_end_42:
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
    jz .Lelse_43
    movq $0, %r10
    movq %r10, -16(%rbp)
    movq $300, %r10
    movq %r10, -24(%rbp)
.Lwhile_cond_45:
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
    jz .Lwhile_end_47
.Lwhile_body_46:
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
    jmp .Lwhile_cond_45
.Lwhile_end_47:
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
    jz .Lendif_49
    movq $1, %r10
    movq %r10, %rax
    addq $192, %rsp
    popq %rbp
    ret
.Lendif_49:
    movq $0, %r10
    movq %r10, %rax
    addq $192, %rsp
    popq %rbp
    ret
    jmp .Lendif_44
.Lelse_43:
    call test_game_logic
    movq %rax, -160(%rbp)
    movq $0, %r10
    movq %r10, %rax
    addq $192, %rsp
    popq %rbp
    ret
.Lendif_44:
    addq $192, %rsp
    popq %rbp
    ret

