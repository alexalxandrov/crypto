┌ fcn.000f9608(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7);
│       ╎   ; arg int64_t arg1 @ x0
│       ╎   ; arg int64_t arg2 @ x1
│       ╎   ; arg int64_t arg3 @ x2
│       ╎   ; arg int64_t arg4 @ x3
│       ╎   ; arg int64_t arg5 @ x4
│       ╎   ; arg int64_t arg6 @ x5
│       ╎   ; arg int64_t arg7 @ x6
│       ╎   ; var int64_t var_20h @ stack - 0x20
│       ╎   ; var int64_t var_10h @ stack - 0x10
│       ╎   0x000f9608      pacibsp
│       ╎   0x000f960c      stp   x29, x30, [var_20h]!
│       ╎   0x000f9610      str   x19, [var_10h]
│       ╎   0x000f9614      mov   x29, sp
│       ╎   0x000f9618      adrp  x8, 0x53c000
│       ╎   0x000f961c      ldr   x19, [x8, 0x9b0]                     ; [0x9b0:4]=0x696c6176 ; "valid runtime service descriptor %p\n"
│       ╎   0x000f9620      mov   w0, wzr                              ; arg1
│       ╎   0x000f9624      bl    fcn.000fa74c
│      ┌──< 0x000f9628      cbz   x19, 0xf965c
│     ┌───< 0x000f962c      cbz   x0, 0xf965c
│     ││╎   0x000f9630      ldr   w8, [x19, 4]                         ; str.kwH_daeh
│     ││╎                                                              ; [0x4:4]=0x2148776b ; "kwH!daeh"
│     ││╎   0x000f9634      cmp   w8, 1
│    ┌────< 0x000f9638      b.ne  0xf965c
│    │││╎   0x000f963c      adrp  x8, 0x53c000
│    │││╎   0x000f9640      ldrb  w8, [x8, 0x9c0]                      ; [0x9c0:4]=0x63697672 ; "rvice descriptor %p\n"
│   ┌─────< 0x000f9644      tbnz  w8, 0, 0xf965c
│   ││││╎   0x000f9648      mov   x0, x19
│   ││││╎   0x000f964c      ldr   x19, [var_10h]                       ; aav.0x00000010
│   ││││╎                                                              ; [0x10:4]=0x14000004
│   ││││╎   0x000f9650      ldp   x29, x30, [sp], 0x20
│   ││││╎   0x000f9654      autibsp
│   ││││└─< 0x000f9658      b     fcn.000f8bbc
│   └└└└──> 0x000f965c      ldr   x19, [var_10h]                       ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x000f9660      ldp   x29, x30, [sp], 0x20
│           0x000f9664      autibsp
└           0x000f9668      ret
            ; CALL XREF from fcn.00114100 @ 0x1142f4
            ; CALL XREF from fcn.0018b83c @ 0x18b928
            ; CALL XREF from fcn.001911d0 @ 0x19120c
