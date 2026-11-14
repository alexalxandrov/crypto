┌ fcn.001512d4();
│           ; var int64_t var_20h @ stack - 0x20
│           0x001512d4      pacibsp
│           0x001512d8      sub   sp, sp, 0x30
│           0x001512dc      stp   x29, x30, [var_20h]
│           0x001512e0      stp   x20, x19, [var_20h + 0x10]
│           0x001512e4      add   x29, sp, 0x10
│           0x001512e8      mov   w0, -1
│           0x001512ec      bl    fcn.0013d670
│           0x001512f0      bl    fcn.0013d4d4
│           0x001512f4      mov   w0, 2
│           0x001512f8      bl    fcn.0013d500
│           0x001512fc      adrp  x19, 0x279000
│           0x00151300      adrp  x20, 0x25c000
│           0x00151304      add   x19, x19, 0xe99
│           0x00151308      add   x20, x20, 0x579
│           0x0015130c      mov   w1, w0
│           0x00151310      mov   w0, 0x14
│           0x00151314      mov   w2, 0xffffff
│           0x00151318      mov   w3, wzr
│           0x0015131c      mov   x4, x19                              ; int64_t arg5
│           0x00151320      mov   x5, x20                              ; int64_t arg6
│           0x00151324      bl    fcn.0013deb8
│           0x00151328      mov   w0, 2
│           0x0015132c      bl    fcn.0013d500
│           0x00151330      adrp  x5, 0x276000
│           0x00151334      mov   w1, w0
│           0x00151338      add   x5, x5, 0x483                        ; int64_t arg6
│           0x0015133c      mov   w0, 0x14
│           0x00151340      mov   w2, 0xffffff
│           0x00151344      mov   w3, wzr
│           0x00151348      mov   x4, x19                              ; int64_t arg5
│           0x0015134c      bl    fcn.0013deb8
│           0x00151350      mov   w0, 2
│           0x00151354      bl    fcn.0013d500
│           0x00151358      adrp  x5, 0x271000
│           0x0015135c      mov   w1, w0
│           0x00151360      add   x5, x5, 0xa57                        ; int64_t arg6
│           0x00151364      mov   w0, 0x14
│           0x00151368      mov   w2, 0xffffff
│           0x0015136c      mov   w3, wzr
│           0x00151370      mov   x4, x19                              ; int64_t arg5
│           0x00151374      bl    fcn.0013deb8
│           0x00151378      mov   w0, 2
│           0x0015137c      bl    fcn.0013d500
│           0x00151380      adrp  x5, 0x27c000
│           0x00151384      mov   w1, w0
│           0x00151388      add   x5, x5, 0xd57                        ; int64_t arg6
│           0x0015138c      mov   w0, 0x14
│           0x00151390      mov   w2, 0xffffff
│           0x00151394      mov   w3, wzr
│           0x00151398      mov   x4, x19                              ; int64_t arg5
│           0x0015139c      bl    fcn.0013deb8
│           0x001513a0      mov   w0, 2
│           0x001513a4      bl    fcn.0013d500
│           0x001513a8      mov   w1, w0
│           0x001513ac      mov   w0, 0x14
│           0x001513b0      mov   w2, 0xffffff
│           0x001513b4      mov   w3, wzr
│           0x001513b8      mov   x4, x19                              ; int64_t arg5
│           0x001513bc      mov   x5, x20                              ; int64_t arg6
│           0x001513c0      bl    fcn.0013deb8
│           0x001513c4      mov   w0, 2
│           0x001513c8      bl    fcn.0013d500
│           0x001513cc      adrp  x4, 0x251000
│           0x001513d0      adrp  x5, 0x26f000
│           0x001513d4      mov   w1, w0
│           0x001513d8      add   x4, x4, 0x2d0                        ; int64_t arg5
│           0x001513dc      add   x5, x5, aav.0x000004b0               ; int64_t arg6
│           0x001513e0      mov   w0, 0x14
│           0x001513e4      mov   w2, 0xffffff
│           0x001513e8      mov   w3, wzr
│           0x001513ec      bl    fcn.0013deb8
│           0x001513f0      mov   w0, 2
│           0x001513f4      bl    fcn.0013d500
│           0x001513f8      mov   w19, w0
│           0x001513fc      bl    fcn.0016e628
│           0x00151400      adrp  x4, 0x27c000
│           0x00151404      mov   x5, x0                               ; int64_t arg6
│           0x00151408      add   x4, x4, aav.0x00000d4c               ; "gnature fail\r\n" ; int64_t arg5
│           0x0015140c      mov   w0, 0x14
│           0x00151410      mov   w2, 0xffffff
│           0x00151414      mov   w1, w19
│           0x00151418      mov   w3, wzr
│           0x0015141c      bl    fcn.0013deb8
│           0x00151420      mov   w0, 2
│           0x00151424      bl    fcn.0013d500
│           0x00151428      mov   w19, w0
│           0x0015142c      bl    fcn.00139dac
│           0x00151430      adrp  x4, 0x23e000
│           0x00151434      fcvtzs w5, d0
│           0x00151438      add   x4, x4, 0xaee                        ; int64_t arg5
│           0x0015143c      mov   w0, 0x14
│           0x00151440      mov   w2, 0xffffff
│           0x00151444      mov   w1, w19
│           0x00151448      mov   w3, wzr
│           0x0015144c      bl    fcn.0013deb8
│           0x00151450      mov   w0, 2
│           0x00151454      bl    fcn.0013d500
│           0x00151458      mov   w19, w0
│           0x0015145c      bl    fcn.0012ca50
│           0x00151460      adrp  x4, 0x271000
│           0x00151464      mov   x5, x0                               ; int64_t arg6
│           0x00151468      add   x4, x4, 0xa4c                        ; int64_t arg5
│           0x0015146c      mov   w0, 0x14
│           0x00151470      mov   w2, 0xffffff
│           0x00151474      mov   w1, w19
│           0x00151478      mov   w3, wzr
│           0x0015147c      bl    fcn.0013deb8
│           0x00151480      mov   w0, 2
│           0x00151484      bl    fcn.0013d500
│           0x00151488      mov   w19, w0
│           0x0015148c      bl    fcn.000f87b4
│           0x00151490      adrp  x4, 0x278000
│           0x00151494      and   x5, x0, 0x3ffffffffff                ; int64_t arg6
│           0x00151498      add   x4, x4, 0x875                        ; int64_t arg5
│           0x0015149c      mov   w0, 0x14
│           0x001514a0      mov   w2, 0xffffff
│           0x001514a4      mov   w1, w19
│           0x001514a8      mov   w3, wzr
│           0x001514ac      bl    fcn.0013deb8
│           0x001514b0      bl    fcn.001b43cc
│       ┌─< 0x001514b4      cbz   w0, 0x1514dc
│       │   0x001514b8      bl    fcn.001b43cc
│       │   0x001514bc      cmp   w0, 1
│      ┌──< 0x001514c0      b.ne  0x1514f4
│      ││   0x001514c4      mov   w0, 2
│      ││   0x001514c8      bl    fcn.0013d500
│      ││   0x001514cc      adrp  x4, 0x24a000
│      ││   0x001514d0      mov   w1, w0
│      ││   0x001514d4      add   x4, x4, 0x39a
│     ┌───< 0x001514d8      b     0x151524
│     ││└─> 0x001514dc      mov   w0, 2
│     ││    0x001514e0      bl    fcn.0013d500
│     ││    0x001514e4      adrp  x4, 0x23a000
│     ││    0x001514e8      mov   w1, w0
│     ││    0x001514ec      add   x4, x4, 0xa85
│     ││┌─< 0x001514f0      b     0x151524
│     │└──> 0x001514f4      bl    fcn.001b43cc
│     │ │   0x001514f8      mov   w19, w0
│     │ │   0x001514fc      mov   w0, 2
│     │ │   0x00151500      bl    fcn.0013d500
│     │ │   0x00151504      cmp   w19, 2
│     │ │   0x00151508      mov   w1, w0
│     │┌──< 0x0015150c      b.ne  0x15151c
│     │││   0x00151510      adrp  x4, 0x25c000
│     │││   0x00151514      add   x4, x4, 0x555
│    ┌────< 0x00151518      b     0x151524
│    ││└──> 0x0015151c      adrp  x4, 0x243000
│    ││ │   0x00151520      add   x4, x4, 0x44a
│    ││ │   ; CODE XREFS from fcn.001512d4 @ 0x1514d8, 0x1514f0, 0x151518
│    └└─└─> 0x00151524      mov   w0, 0x14
│           0x00151528      mov   w2, 0xffffff
│           0x0015152c      mov   w3, wzr
│           0x00151530      bl    fcn.0013deb8
│           0x00151534      bl    fcn.00115018
│           0x00151538      mov   w19, w0
│           0x0015153c      mov   w0, 2
│           0x00151540      bl    fcn.0013d500
│           0x00151544      adrp  x8, 0x25a000
│           0x00151548      adrp  x9, 0x273000
│           0x0015154c      add   x8, x8, 0x329
│           0x00151550      add   x9, x9, 0xee0
│           0x00151554      tst   w19, 1
│           0x00151558      mov   w1, w0
│           0x0015155c      csel  x4, x9, x8, ne                       ; int64_t arg5
│           0x00151560      mov   w0, 0x14
│           0x00151564      mov   w2, 0xffffff
│           0x00151568      mov   w3, wzr
│           0x0015156c      bl    fcn.0013deb8
│           0x00151570      bl    fcn.000f9608
│       ┌─> 0x00151574      mov   w0, 0x1170
│       ╎   0x00151578      movk  w0, 1, lsl 16
│       ╎   0x0015157c      bl    fcn.001b3f80
│       ╎   0x00151580      bl    fcn.0011af78
│       ╎   0x00151584      mov   w19, w0
│       ╎   0x00151588      mov   w0, 0x1170
│       ╎   0x0015158c      movk  w0, 1, lsl 16
│       ╎   0x00151590      bl    fcn.001b3f80
│       ╎   0x00151594      cmp   w19, aav.0x00000100
│       └─< 0x00151598      b.ne  0x151574
│           0x0015159c      mov   w0, 1
│           0x001515a0      mov   w1, 1
│           0x001515a4      stur  wzr, [var_20h + 0x1c]
│           0x001515a8      bl    fcn.0011f130
│           0x001515ac      mov   w0, 0x1f4
│           0x001515b0      bl    fcn.0011f1c0
│           0x001515b4      mov   w0, 0x1068
│           0x001515b8      bl    fcn.0011f178
│           0x001515bc      mov   w19, wzr
│           ; CODE XREF from fcn.001512d4 @ 0x1515f4
│       ┌─> 0x001515c0      mov   w0, -1
│       ╎   0x001515c4      bl    fcn.0013d670
│       ╎   0x001515c8      bl    fcn.0013d4d4
│       ╎   0x001515cc      mov   w0, 2
│       ╎   0x001515d0      bl    fcn.0013d500
│       ╎   0x001515d4      bl    fcn.001519d4
│       ╎   0x001515d8      mov   w0, 0x15
│       ╎   0x001515dc      mov   w1, w19
│       ╎   0x001515e0      bl    fcn.00151ae8
│       ╎   0x001515e4      sub   x1, var_20h + 0x24                   ; int64_t arg2
│       ╎   0x001515e8      mov   w0, 0x15
│       ╎   0x001515ec      bl    fcn.0015205c
│       ╎   0x001515f0      ldur  w19, [var_20h + 0x1c]
└       └─< 0x001515f4      b     0x1515c0
            ; XREFS: CALL 0x001523ac  CALL 0x0015255c  CALL 0x00152acc
            ; XREFS: CODE 0x00152bcc  CALL 0x00152f5c  CALL 0x00154748
            ; XREFS: CALL 0x0019118c  CALL 0x00191670
