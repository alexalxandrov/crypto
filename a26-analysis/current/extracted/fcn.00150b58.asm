┌ fcn.00150b58(unsigned long arg1);
│           ; arg unsigned long arg1 @ x0
│           0x00150b58      cmp   w0, 0x3f                             ; '?' ; arg1
│       ┌─< 0x00150b5c      b.hi  0x150b74
│       │   0x00150b60      adrp  x8, 0x573000
│       │   0x00150b64      add   x8, x8, 0x6a4
│       │   0x00150b68      add   x8, x8, w0, uxtw 2                   ; arg1
│       │   0x00150b6c      add   x8, x8, str.k__9Ki_8                 ; 0x200 ; "k\t@9Ki(8\b\U00000005"
│      ┌──< 0x00150b70      b     0x150bc4
│      │└─> 0x00150b74      sub   w8, w0, 0x40                         ; arg1
│      │    0x00150b78      cmp   w8, 0x13
│      │┌─< 0x00150b7c      b.hi  0x150b98
│      ││   0x00150b80      adrp  x9, 0x573000
│      ││   0x00150b84      mov   w8, w8
│      ││   0x00150b88      add   x9, x9, 0x6a4
│      ││   0x00150b8c      add   x8, x9, x8, lsl 11
│      ││   0x00150b90      add   x8, x8, aav.0x00000300
│     ┌───< 0x00150b94      b     0x150bc4
│     ││└─> 0x00150b98      sub   w8, w0, 0x54                         ; arg1
│     ││    0x00150b9c      cmp   w8, 9
│     ││┌─< 0x00150ba0      b.hi  0x150bc0
│     │││   0x00150ba4      adrp  x9, 0x573000
│     │││   0x00150ba8      add   x9, x9, 0x6a4
│     │││   0x00150bac      mov   w10, aav.0x00002800                  ; "(#\xc8\U000000120#\xc8\U000000128#\xc8\U00000012@#\xc8\U00000012\bC\xc8\U00000012\U00000010C\xc8\U00000012\U00000018C\xc8\U00000"
│     │││   0x00150bb0      umaddl x8, w8, w10, x9
│     │││   0x00150bb4      mov   w9, 0xa300
│     │││   0x00150bb8      add   x8, x8, x9
│    ┌────< 0x00150bbc      b     0x150bc4
│    │││└─> 0x00150bc0      mov   x8, xzr
│    │││    ; CODE XREFS from fcn.00150b58 @ 0x150b70, 0x150b94, 0x150bbc
│    └└└──> 0x00150bc4      pacibsp
│           0x00150bc8      ldr   w0, [x8]
│           0x00150bcc      autibsp
└           0x00150bd0      ret
            ; CALL XREF from fcn.00114100 @ 0x114150
