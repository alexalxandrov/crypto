┌ fcn.0014b120(int64_t arg1, int64_t arg2, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_b0h @ stack - 0xb0
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0014b120      pacibsp
│           0x0014b124      sub   sp, sp, aav.0x00000130
│           0x0014b128      stp   x29, x30, [var_30h]
│           0x0014b12c      str   x28, [var_20h]
│           0x0014b130      stp   x20, x19, [var_10h]
│           0x0014b134      add   x29, sp, aav.0x00000100
│           0x0014b138      mov   x20, x0                              ; arg1
│           0x0014b13c      mov   x8, -0x28
│           0x0014b140      mov   x9, sp
│           0x0014b144      add   x10, var_b0h
│           0x0014b148      stp   x0, x1, [var_20h + 0x8]              ; arg2
│           0x0014b14c      adrp  x0, 0x14b000
│           0x0014b150      mov   x19, x1                              ; arg2
│           0x0014b154      stp   x3, x4, [var_b0h]                    ; arg5
│           0x0014b158      movk  x8, 0xff80, lsl 32
│           0x0014b15c      add   x11, var_10h + 0x40
│           0x0014b160      add   x9, x9, 0x80
│           0x0014b164      add   x10, x10, 0x28
│           0x0014b168      add   x0, x0, str.cmd0_is_not_correct_0x_x ; 0xdc4 ; " cmd0 is not correct 0x%x\n" ; int64_t arg1
│           0x0014b16c      sub   x1, var_10h + 0x28                   ; int64_t arg2
│           0x0014b170      sub   x3, var_10h + 0x48                   ; int64_t arg4
│           0x0014b174      stp   x5, x6, [var_b0h + 0x10]             ; arg7
│           0x0014b178      str   x7, [var_b0h + 0x20]                 ; arg8
│           0x0014b17c      stp   q0, q1, [sp]
│           0x0014b180      stp   q2, q3, [sp, 0x20]
│           0x0014b184      stp   q4, q5, [sp, 0x40]
│           0x0014b188      stp   q6, q7, [sp, 0x60]
│           0x0014b18c      stur  xzr, [var_10h + 0x8]
│           0x0014b190      stp   x9, x8, [var_b0h + 0x68]
│           0x0014b194      stp   x11, x10, [var_b0h + 0x58]
│           0x0014b198      stp   x11, x10, [var_b0h + 0x78]
│           0x0014b19c      stp   x9, x8, [var_30h + 0x8]
│           0x0014b1a0      bl    fcn.0014b248
│           0x0014b1a4      ldur  x8, [var_10h + 0x8]
│           0x0014b1a8      sxtw  x9, w0
│           0x0014b1ac      sub   x10, x19, 1
│           0x0014b1b0      ldr   x28, [var_20h]                       ; aav.0x00000110
│                                                                      ; [0x110:4]=0xb4000020 ; " "
│           0x0014b1b4      cmp   x8, x19
│           0x0014b1b8      csel  x8, x9, x10, lo
│           0x0014b1bc      strb  wzr, [x20, x8]
│           0x0014b1c0      ldp   x20, x19, [var_10h]
│           0x0014b1c4      ldp   x29, x30, [var_30h]
│           0x0014b1c8      add   sp, sp, aav.0x00000130
│           0x0014b1cc      autibsp
└           0x0014b1d0      ret
            ; XREFS: CALL 0x0013df4c  CALL 0x0013e058  CALL 0x0013e140
            ; XREFS: CALL 0x0013e238  CALL 0x0014cbb8  CALL 0x0015128c
            ; XREFS: CALL 0x00154808  CALL 0x00158314  CALL 0x0016d6d8
            ; XREFS: CALL 0x001718f8  CALL 0x00194038  CALL 0x001a406c
            ; XREFS: CALL 0x001a4110
