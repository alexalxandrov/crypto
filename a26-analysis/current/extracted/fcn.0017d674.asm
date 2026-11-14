┌ fcn.0017d674();
│           ; var int64_t var_10h @ stack - 0x10
│           0x0017d674      pacibsp
│           0x0017d678      stp   x29, x30, [var_10h]!
│           0x0017d67c      mov   x29, sp
│           0x0017d680      bl    fcn.0017bae4
│           0x0017d684      ldr   x8, [x0, 0x68]                       ; aav.0x00000068
│                                                                      ; [0x68:4]=0xd61f0000
│       ┌─< 0x0017d688      cbz   x8, 0x17d694
│      ┌──> 0x0017d68c      mov   w0, wzr
│     ┌───< 0x0017d690      b     0x17d6a0
│     │╎└─> 0x0017d694      ldr   x8, [x0, 0x70]                       ; aav.0x00000070
│     │╎                                                               ; [0x70:4]=0xd51ec000
│     │└──< 0x0017d698      cbz   x8, 0x17d68c
│     │     0x0017d69c      mov   w0, 1
│     │     ; CODE XREF from fcn.0017d674 @ 0x17d690
│     └───> 0x0017d6a0      ldp   x29, x30, [sp], 0x10
│           0x0017d6a4      autibsp
└           0x0017d6a8      ret
            ; XREFS: CALL 0x001114b0  CALL 0x0017bc98  CALL 0x0017d568
            ; XREFS: CALL 0x00184488  CALL 0x001851b0  CALL 0x00185440
            ; XREFS: CALL 0x0018546c  CALL 0x00185490  CALL 0x001854b4
            ; XREFS: CALL 0x00189a30
