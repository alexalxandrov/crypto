# A26 J6 SBoot focused extraction — boot property and OEM getter xref audit

Firmware: SM-A266B / A266BXXUCDZJ6, SBoot static analysis.
Source: `a26-analysis/current/global-functions.asm` (blob SHA `5b2de6c11f32872218b002fcc2254c53aad69327`).
Extraction date: 2026-11-14.

## Finding A — SBoot passes androidboot.other.locked=%d with value 1

In `fcn.0016f3e0`, address `0x0016fe84` loads string address `0x26b317` (string scan: `androidboot.other.locked=%d`), sets `w1=1`, then calls `fcn.0017184c` at `0x0016fe90`.

This is a direct code xref to the string and a direct integer argument of 1. `fcn.0017184c` is used throughout this routine for key/value-like boot parameter formatting. Its own body is not included in this extraction, so the exact downstream append/serialization semantics remain to be inspected. The handset's previously recorded runtime property `ro.boot.other.locked=1` is consistent with this SBoot path.

This property is not, by itself, proof of the protected OEM unlock state. The Android-side `resetprop` override changes the runtime property after SBoot has already made its decision; it can expose the Settings switch but cannot alter the signed STEADY policy or the protected lock-state cache.

`fcn.0016f3e0` has caller annotations from `fcn.001558e4 @ 0x155d2c` and `fcn.0018efb4 @ 0x18efe8`.

## Finding B — revalidate the old fcn.0017af7c caller map

The prior ESS note attributed a call to `fcn.0017af7c` to `fcn.00183e40 @ +0x25c` and to `fcn.00187cf0 @ 0x187e7c`. The full body of `fcn.00183e40` in this extraction contains no direct call to `fcn.0017af7c`. The instruction at `0x00187e7c` in `fcn.00187cf0` is explicitly `bl fcn.00179f90`, not `fcn.0017af7c`. Those two xref attributions must therefore not be treated as verified direct callers.

The available xref comment still lists `fcn.0017bfac @ 0x17c758` as a caller candidate, but the body of `fcn.0017bfac` is not present in the extracted assembly file. It remains unverified pending extraction.

## Function fcn.0016f3e0

FUNCTION: fcn.0016f3e0
================================================================================
┌ fcn.0016f3e0(int64_t arg1);
│           ; arg int64_t arg1 @ x0
│           ; var int64_t var_138h @ stack - 0x138
│           ; var int64_t var_124h @ stack - 0x124
│           ; var int64_t var_50h @ stack - 0x50
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0016f3e0      pacibsp
│           0x0016f3e4      sub   sp, sp, aav.0x00000140
│           0x0016f3e8      stp   x29, x30, [var_50h]
│           0x0016f3ec      stp   x28, x25, [var_40h]
│           0x0016f3f0      stp   x24, x23, [var_30h]
│           0x0016f3f4      stp   x22, x21, [var_20h]
│           0x0016f3f8      stp   x20, x19, [var_10h]
│           0x0016f3fc      add   x29, sp, 0xf0
│           0x0016f400      sturb wzr, [var_30h]                       ; arg1
│           0x0016f404      stp   xzr, xzr, [var_40h]
│           0x0016f408      stp   xzr, xzr, [var_50h]
│           0x0016f40c      bl    fcn.0016e548
│           0x0016f410      mov   x20, x0
│           0x0016f414      mov   w0, 2
│           0x0016f418      bl    fcn.00150b58
│           0x0016f41c      mov   w19, w0
│           0x0016f420      mov   w0, 0x11
│           0x0016f424      bl    fcn.00150b58
│           0x0016f428      mov   w23, w0
│           0x0016f42c      mov   w0, wzr
│           0x0016f430      bl    fcn.00150b58
│           0x0016f434      mov   w21, w0
│           0x0016f438      bl    fcn.00171eb4
│           0x0016f43c      mov   w0, 0xc
│           0x0016f440      bl    fcn.00150b58
│           0x0016f444      mov   w22, w0
│           0x0016f448      bl    fcn.0012caf0
│           0x0016f44c      mov   x1, x0                               ; int64_t arg2
│           0x0016f450      adrp  x0, 0x25e000
│           0x0016f454      add   x0, x0, 0x8d5                        ; int64_t arg1
│           0x0016f458      bl    fcn.0017184c
│           0x0016f45c      cmp   w21, 4
│       ┌─< 0x0016f460      b.ne  0x16f498
│       │   0x0016f464      adrp  x0, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│       │   0x0016f468      add   x0, x0, 0xc0e                        ; int64_t arg1
│       │   0x0016f46c      bl    fcn.0017184c
│       │   0x0016f470      adrp  x0, 0x25c000
│       │   0x0016f474      add   x0, x0, 0x7d6                        ; int64_t arg1
│       │   0x0016f478      bl    fcn.0017184c
│       │   0x0016f47c      mov   w0, 0x47                             ; 'G'
│       │   0x0016f480      bl    fcn.00150ad4
│       │   0x0016f484      mov   x1, x0                               ; int64_t arg4
│       │   0x0016f488      mov   w0, 0x116
│       │   0x0016f48c      bl    fcn.001a88d0
│       │   0x0016f490      bl    fcn.00196b10
│      ┌──< 0x0016f494      b     0x16f4cc
│      │└─> 0x0016f498      cmp   w21, 9
│      │┌─< 0x0016f49c      b.eq  0x16f4c0
│      ││   0x0016f4a0      cmp   w21, 5
│     ┌───< 0x0016f4a4      b.ne  0x16f4cc
│     │││   0x0016f4a8      adrp  x0, 0x24f000
│     │││   0x0016f4ac      add   x0, x0, 0x5cc                        ; int64_t arg1
│     │││   0x0016f4b0      bl    fcn.0017184c
│     │││   0x0016f4b4      adrp  x0, 0x25e000
│     │││   0x0016f4b8      add   x0, x0, str.Kernel_Baremetal         ; 0x8f6 ; "Kernel Baremetal"
│    ┌────< 0x0016f4bc      b     0x16f4c8
│    │││└─> 0x0016f4c0      adrp  x0, 0x248000
│    │││    0x0016f4c4      add   x0, x0, 0x24b
│    │││    ; CODE XREF from fcn.0016f3e0 @ 0x16f4bc
│    └────> 0x0016f4c8      bl    fcn.0017184c
│     ││    ; CODE XREF from fcn.0016f3e0 @ 0x16f494
│     └└──> 0x0016f4cc      mov   w8, 0x4948                           ; 'HI'
│           0x0016f4d0      cmp   w19, w8
│       ┌─< 0x0016f4d4      b.eq  0x16f4fc
│       │   0x0016f4d8      mov   w8, 0x494d                           ; 'MI'
│       │   0x0016f4dc      cmp   w19, w8
│      ┌──< 0x0016f4e0      b.eq  0x16f4f0
│      ││   0x0016f4e4      mov   w8, 0x5541                           ; 'AU'
│      ││   0x0016f4e8      cmp   w19, w8
│     ┌───< 0x0016f4ec      b.ne  0x16f510
│     │└──> 0x0016f4f0      adrp  x0, 0x27a000
│     │ │   0x0016f4f4      add   x0, x0, 0xd71
│     │┌──< 0x0016f4f8      b     0x16f524
│     ││└─> 0x0016f4fc      adrp  x0, 0x248000
│     ││    0x0016f500      add   x0, x0, 0x261                        ; int64_t arg1
│     ││    0x0016f504      mov   w1, 1
│     ││    0x0016f508      bl    fcn.0017184c
│     ││┌─< 0x0016f50c      b     0x16f528
│     └───> 0x0016f510      adrp  x0, 0x26b000
│      ││   0x0016f514      add   x0, x0, 0x2bf                        ; int64_t arg1
│      ││   0x0016f518      bl    fcn.0017184c
│      ││   0x0016f51c      adrp  x0, 0x24f000
│      ││   0x0016f520      add   x0, x0, 0x5d7
│      ││   ; CODE XREF from fcn.0016f3e0 @ 0x16f4f8
│      └──> 0x0016f524      bl    fcn.0017184c
│       │   ; CODE XREF from fcn.0016f3e0 @ 0x16f50c
│       └─> 0x0016f528      adrp  x0, 0x25c000
│           0x0016f52c      add   x0, x0, 0x7ee                        ; int64_t arg1
│           0x0016f530      mov   w1, w19
│           0x0016f534      bl    fcn.0017184c
│           0x0016f538      adrp  x0, 0x271000
│           0x0016f53c      add   x0, x0, 0xd76                        ; int64_t arg1
│           0x0016f540      mov   w1, w23
│           0x0016f544      bl    fcn.0017184c
│           0x0016f548      adrp  x0, 0x27d000
│           0x0016f54c      add   x0, x0, 0xdd                         ; int64_t arg1
│           0x0016f550      mov   w1, w19
│           0x0016f554      bl    fcn.0017184c
│           0x0016f558      mov   w0, 0x17
│           0x0016f55c      bl    fcn.00150b58
│           0x0016f560      mov   w1, w0
│           0x0016f564      adrp  x0, 0x25c000
│           0x0016f568      add   x0, x0, 0x80b                        ; int64_t arg1
│           0x0016f56c      bl    fcn.0017184c
│           0x0016f570      mov   w0, 0x18
│           0x0016f574      bl    fcn.00150b58
│           0x0016f578      mov   w1, w0
│           0x0016f57c      adrp  x0, 0x23e000
│           0x0016f580      add   x0, x0, 0xecc                        ; int64_t arg1
│           0x0016f584      bl    fcn.0017184c
│           0x0016f588      mov   w1, 0x18
│           0x0016f58c      mov   w0, wzr
│           0x0016f590      bl    fcn.aav.0x00000340                   ; fcn.001500b4
│           0x0016f594      mov   w1, w0
│           0x0016f598      adrp  x0, 0x267000
│           0x0016f59c      add   x0, x0, 0xff                         ; int64_t arg1
│           0x0016f5a0      bl    fcn.0017184c
│           0x0016f5a4      bl    fcn.00139e78
│           0x0016f5a8      mov   w23, w0
│           0x0016f5ac      bl    fcn.00139ea8
│           0x0016f5b0      mov   w24, w0
│           0x0016f5b4      bl    fcn.00139e90
│           0x0016f5b8      mov   w25, w0
│           0x0016f5bc      bl    fcn.00139dac
│           0x0016f5c0      adrp  x0, 0x243000
│           0x0016f5c4      add   x0, x0, 0x8d0                        ; int64_t arg1
│           0x0016f5c8      mov   w1, w23
│           0x0016f5cc      mov   w2, w24
│           0x0016f5d0      mov   w3, w25
│           0x0016f5d4      bl    fcn.0017184c
│           0x0016f5d8      bl    fcn.00139dac
│           0x0016f5dc      adrp  x0, 0x25e000
│           0x0016f5e0      add   x0, x0, 0x90e                        ; int64_t arg1
│           0x0016f5e4      bl    fcn.0017184c
│           0x0016f5e8      adrp  x0, 0x243000
│           0x0016f5ec      add   x0, x0, 0x8fb                        ; int64_t arg1
│           0x0016f5f0      mov   x1, x20                              ; int64_t arg2
│           0x0016f5f4      bl    fcn.0017184c
│           0x0016f5f8      mov   w1, 0xc
│           0x0016f5fc      mov   w0, wzr
│           0x0016f600      bl    fcn.aav.0x00000340                   ; fcn.001500b4
│           0x0016f604      mov   w1, w0
│           0x0016f608      adrp  x0, 0x241000
│           0x0016f60c      add   x0, x0, 0x317                        ; int64_t arg1
│           0x0016f610      bl    fcn.0017184c
│           0x0016f614      mov   w1, 0x24
│           0x0016f618      mov   w0, wzr
│           0x0016f61c      bl    fcn.aav.0x00000340                   ; fcn.001500b4
│           0x0016f620      mov   w1, w0
│           0x0016f624      adrp  x0, 0x27d000
│           0x0016f628      add   x0, x0, 0xfe                         ; int64_t arg2
│           0x0016f62c      bl    fcn.0017184c
│           0x0016f630      bl    fcn.000f2910
│           0x0016f634      mov   w1, w0
│           0x0016f638      adrp  x0, 0x24f000
│           0x0016f63c      add   x0, x0, 0x5ee                        ; int64_t arg1
│           0x0016f640      bl    fcn.0017184c
│           0x0016f644      adrp  x0, 0x256000
│           0x0016f648      add   x0, x0, 0x4f                         ; int64_t arg1
│           0x0016f64c      bl    fcn.0017184c
│           0x0016f650      adrp  x0, 0x251000
│           0x0016f654      add   x0, x0, 0x63b                        ; int64_t arg1
│           0x0016f658      bl    fcn.0017184c
│           0x0016f65c      bl    fcn.aav.0x00000340                   ; fcn.00150098
│           0x0016f660      add   w1, w0, 0xa0
│           0x0016f664      adrp  x0, 0x23c000
│           0x0016f668      add   x0, x0, 0xf3e                        ; int64_t arg1
│           0x0016f66c      bl    fcn.0017184c
│           0x0016f670      bl    fcn.aav.0x00000340                   ; fcn.00150098
│           0x0016f674      mov   w1, w0
│           0x0016f678      adrp  x0, 0x248000
│           0x0016f67c      add   x0, x0, 0x279                        ; int64_t arg1
│           0x0016f680      bl    fcn.0017184c
│           0x0016f684      bl    fcn.aav.0x00000340                   ; fcn.00150098
│           0x0016f688      add   w1, w0, 0x50
│           0x0016f68c      adrp  x0, 0x267000
│           0x0016f690      add   x0, x0, 0x113                        ; int64_t arg1
│           0x0016f694      bl    fcn.0017184c
│           0x0016f698      bl    fcn.aav.0x00000340                   ; fcn.00150098
│           0x0016f69c      add   w1, w0, 0xf0
│           0x0016f6a0      adrp  x0, 0x27a000
│           0x0016f6a4      add   x0, x0, 0xd83                        ; int64_t arg1
│           0x0016f6a8      bl    fcn.0017184c
│           0x0016f6ac      bl    fcn.aav.0x00000340                   ; fcn.00150098
│           0x0016f6b0      add   w1, w0, aav.0x00000140
│           0x0016f6b4      adrp  x0, 0x251000
│           0x0016f6b8      add   x0, x0, 0x650                        ; int64_t arg1
│           0x0016f6bc      bl    fcn.0017184c
│           0x0016f6c0      mov   w0, 1
│           0x0016f6c4      mov   w1, 0x45                             ; 'E'
│           0x0016f6c8      bl    fcn.aav.0x00000340                   ; fcn.001500b4
│           0x0016f6cc      mov   w1, w0
│           0x0016f6d0      adrp  x0, 0x246000
│           0x0016f6d4      add   x0, x0, 0xcb                         ; int64_t arg1
│           0x0016f6d8      bl    fcn.0017184c
│           0x0016f6dc      mov   w0, 1
│           0x0016f6e0      mov   w1, 0x47                             ; 'G'
│           0x0016f6e4      bl    fcn.aav.0x00000340                   ; fcn.001500b4
│           0x0016f6e8      mov   w1, w0
│           0x0016f6ec      adrp  x0, 0x276000
│           0x0016f6f0      add   x0, x0, 0x80b                        ; int64_t arg1
│           0x0016f6f4      bl    fcn.0017184c
│           0x0016f6f8      mov   w0, 1
│           0x0016f6fc      mov   w1, 0x4d                             ; 'M'
│           0x0016f700      bl    fcn.aav.0x00000340                   ; fcn.001500b4
│           0x0016f704      mov   w1, w0
│           0x0016f708      adrp  x0, 0x278000
│           0x0016f70c      add   x0, x0, 0xc1d                        ; int64_t arg1
│           0x0016f710      bl    fcn.0017184c
│           0x0016f714      adrp  x0, 0x23a000
│           0x0016f718      add   x0, x0, 0xedd                        ; int64_t arg1
│           0x0016f71c      mov   w1, -0x3000000
│           0x0016f720      bl    fcn.0017184c
│           0x0016f724      adrp  x0, 0x25e000
│           0x0016f728      add   x0, x0, 0x928                        ; int64_t arg1
│           0x0016f72c      mov   w1, aav.0x00200000
│           0x0016f730      mov   w2, -0x6ee00000
│           0x0016f734      bl    fcn.0017184c
│           0x0016f738      adrp  x8, 0x56f000
│           0x0016f73c      ldr   w8, [x8, 0x478]                      ; [0x478:4]=0xb940dd09
│       ┌─< 0x0016f740      cbz   w8, 0x16f750
│       │   0x0016f744      adrp  x0, 0x27a000
│       │   0x0016f748      add   x0, x0, 0xda2                        ; int64_t arg1
│       │   0x0016f74c      bl    fcn.0017184c
│       └─> 0x0016f750      mov   w0, 0x24
│           0x0016f754      bl    fcn.00150b58
│           0x0016f758      mov   w1, w0
│           0x0016f75c      adrp  x0, 0x23e000
│           0x0016f760      add   x0, x0, 0xee6                        ; int64_t arg1
│           0x0016f764      bl    fcn.0017184c
│           0x0016f768      adrp  x0, 0x25e000
│           0x0016f76c      add   x0, x0, 0x941                        ; int64_t arg1
│           0x0016f770      mov   w1, w22
│           0x0016f774      bl    fcn.0017184c
│           0x0016f778      adrp  x8, 0x56f000
│           0x0016f77c      ldrb  w8, [x8, aav.0x0000046c]             ; [0x46c:4]=0xb940d509 ; "\t\xd5@\xb9\xea'\U00000003)\n\xd9@\xb9\t\xdd@\xb9\xea'\U00000004)\n\xe1@\xb9\t\xe5@\xb9\xea'\U00000005)\n\xe9@\xb9\t\xed@\xb9\xe"
│       ┌─< 0x0016f780      cbz   w8, 0x16f7a8
│       │   0x0016f784      adrp  x0, 0x246000
│       │   0x0016f788      add   x0, x0, 0xf1                         ; int64_t arg1
│       │   0x0016f78c      bl    fcn.0017184c
│       │   0x0016f790      adrp  x0, 0x24a000
│       │   0x0016f794      add   x0, x0, 0x7a8                        ; int64_t arg1
│       │   0x0016f798      bl    fcn.0017184c
│       │   0x0016f79c      adrp  x0, 0x257000
│       │   0x0016f7a0      add   x0, x0, 0xdb8                        ; int64_t arg1
│       │   0x0016f7a4      bl    fcn.0017184c
│       └─> 0x0016f7a8      adrp  x0, 0x271000
│           0x0016f7ac      add   x0, x0, 0xd94                        ; int64_t arg1
│           0x0016f7b0      mov   w1, -0x5e00000
│           0x0016f7b4      bl    fcn.0017184c
│           0x0016f7b8      adrp  x23, 0x2b9000
│           0x0016f7bc      ldr   w1, [x23, 0x2fc]                     ; [0x2fc:4]=0xb9003909
│           0x0016f7c0      adrp  x0, 0x246000
│           0x0016f7c4      add   x0, x0, aav.0x0000010c               ; int64_t arg1
│           0x0016f7c8      bl    fcn.0017184c
│           0x0016f7cc      ldr   w1, [x23, 0x2fc]                     ; [0x2fc:4]=0xb9003909
│           0x0016f7d0      adrp  x0, 0x26f000
│           0x0016f7d4      add   x0, x0, 0xd4f                        ; int64_t arg1
│           0x0016f7d8      bl    fcn.0017184c
│           0x0016f7dc      ldr   w8, [x23, 0x2fc]                     ; [0x2fc:4]=0xb9003909
│           0x0016f7e0      adrp  x0, 0x267000
│           0x0016f7e4      add   x0, x0, 0x132                        ; int64_t arg1
│           0x0016f7e8      cmn   w8, 1
│           0x0016f7ec      cset  w1, eq
│           0x0016f7f0      bl    fcn.0017184c
│           0x0016f7f4      bl    fcn.000f2994
│           0x0016f7f8      mov   w1, w0
│           0x0016f7fc      adrp  x0, 0x253000
│           0x0016f800      add   x0, x0, 0xef9                        ; int64_t arg1
│           0x0016f804      bl    fcn.0017184c
│           0x0016f808      mov   w0, 0x29                             ; ')'
│           0x0016f80c      bl    fcn.00150b58
│       ┌─< 0x0016f810      cbz   w0, 0x16f82c
│       │   0x0016f814      mov   w0, 0x29                             ; ')'
│       │   0x0016f818      bl    fcn.00150b58
│       │   0x0016f81c      mov   w1, w0
│       │   0x0016f820      adrp  x0, 0x260000
│       │   0x0016f824      add   x0, x0, 0xe11                        ; int64_t arg1
│       │   0x0016f828      bl    fcn.0017184c
│       └─> 0x0016f82c      mov   w1, 0xd
│           0x0016f830      mov   w0, wzr
│           0x0016f834      bl    fcn.aav.0x00000340                   ; fcn.001500b4
│           0x0016f838      mov   w1, w0
│           0x0016f83c      adrp  x0, 0x265000
│           0x0016f840      add   x0, x0, 0x2c7                        ; int64_t arg1
│           0x0016f844      bl    fcn.0017184c
│           0x0016f848      sub   x0, var_10h + 0x34                   ; int64_t arg1
│           0x0016f84c      mov   w2, 4
│           0x0016f850      mov   w1, wzr
│           0x0016f854      bl    fcn.0014d8fc
│           0x0016f858      mov   w0, 0xd
│           0x0016f85c      bl    fcn.00150b58
│           0x0016f860      stur  w0, [var_124h + 0xd0]
│           0x0016f864      sub   x0, var_10h + 0x34                   ; int64_t arg1
│           0x0016f868      sub   x1, var_10h + 0x64                   ; int64_t arg2
│           0x0016f86c      mov   w2, 4
│           0x0016f870      bl    fcn.0014d60c
│           0x0016f874      adrp  x0, 0x241000
│           0x0016f878      add   x0, x0, 0x336                        ; int64_t arg1
│           0x0016f87c      sub   x1, var_10h + 0x34                   ; int64_t arg2
│           0x0016f880      bl    fcn.0017184c
│           0x0016f884      adrp  x0, 0x241000
│           0x0016f888      add   x0, x0, 0x34f                        ; int64_t arg1
│           0x0016f88c      bl    fcn.0017184c
│           0x0016f890      mov   w1, 0x21                             ; '!'
│           0x0016f894      mov   w0, wzr
│           0x0016f898      bl    fcn.aav.0x00000340                   ; fcn.001500b4
│           0x0016f89c      mov   w1, w0
│           0x0016f8a0      adrp  x0, 0x276000
│           0x0016f8a4      add   x0, x0, 0x82a                        ; int64_t arg1
│           0x0016f8a8      bl    fcn.0017184c
│           0x0016f8ac      bl    fcn.0016e568
│           0x0016f8b0      mov   w8, w0
│           0x0016f8b4      mov   w0, wzr
│       ┌─< 0x0016f8b8      tbz   w8, 0x12, 0x16f8e4
│       │   0x0016f8bc      adrp  x0, 0x25a000
│       │   0x0016f8c0      add   x0, x0, 0x5eb                        ; int64_t arg1
│       │   0x0016f8c4      bl    fcn.0017184c
│       │   0x0016f8c8      adrp  x0, 0x25c000
│       │   0x0016f8cc      add   x0, x0, 0x824                        ; int64_t arg1
│       │   0x0016f8d0      bl    fcn.0017184c
│       │   0x0016f8d4      adrp  x0, 0x23e000
│       │   0x0016f8d8      add   x0, x0, 0xf01                        ; int64_t arg1
│       │   0x0016f8dc      bl    fcn.0017184c
│       │   0x0016f8e0      mov   w0, 1
│       └─> 0x0016f8e4      bl    fcn.0017047c
│           0x0016f8e8      adrp  x0, 0x26b000
│           0x0016f8ec      add   x0, x0, 0x2d1                        ; int64_t arg1
│           0x0016f8f0      bl    fcn.0017184c
│           0x0016f8f4      adrp  x0, 0x23e000
│           0x0016f8f8      add   x0, x0, 0xf1c                        ; int64_t arg1
│           0x0016f8fc      bl    fcn.0017184c
│           0x0016f900      mov   w0, 1
│           0x0016f904      bl    fcn.00150b58
│           0x0016f908      mov   w23, w0
│           0x0016f90c      bl    fcn.0011fa44
│           0x0016f910      and   w24, w0, 0xff
│           0x0016f914      mov   w0, w23
│           0x0016f918      bl    fcn.0011f9dc
│           0x0016f91c      orr   w8, w23, w0, lsl 3
│           0x0016f920      adrp  x0, 0x241000
│           0x0016f924      orr   w1, w8, w24, lsl 4
│           0x0016f928      add   x0, x0, 0x35e                        ; int64_t arg4
│           0x0016f92c      bl    fcn.0017184c
│           0x0016f930      bl    fcn.0011ff1c
│           0x0016f934      mov   w1, w0
│           0x0016f938      adrp  x0, 0x24a000
│           0x0016f93c      add   x0, x0, 0x7d7                        ; int64_t arg1
│           0x0016f940      bl    fcn.0017184c
│           0x0016f944      adrp  x0, 0x251000
│           0x0016f948      ubfx  w1, w22, 8, 8
│           0x0016f94c      add   x0, x0, 0x670                        ; int64_t arg1
│           0x0016f950      bl    fcn.0017184c
│           0x0016f954      bl    fcn.0016e568
│           0x0016f958      adrp  x8, 0x25a000
│           0x0016f95c      adrp  x9, 0x271000
│           0x0016f960      add   x8, x8, 0x604
│           0x0016f964      add   x9, x9, 0xdac
│           0x0016f968      tst   w0, aav.0x00040000                   ; "6J@\xf6\ec\xc1\xf2"
│           0x0016f96c      csel  x0, x9, x8, eq                       ; int64_t arg1
│           0x0016f970      bl    fcn.0017184c
│           0x0016f974      mov   w0, wzr
│           0x0016f978      bl    fcn.00150b58
│           0x0016f97c      cmp   w0, 4
│       ┌─< 0x0016f980      b.ne  0x16f990
│       │   0x0016f984      adrp  x0, 0x251000
│       │   0x0016f988      add   x0, x0, 0x695                        ; int64_t arg1
│       │   0x0016f98c      bl    fcn.0017184c
│       └─> 0x0016f990      mov   w0, 5
│           0x0016f994      bl    fcn.00150b58
│           0x0016f998      mov   w1, w0
│           0x0016f99c      adrp  x0, 0x276000
│           0x0016f9a0      add   x0, x0, 0x84e                        ; int64_t arg1
│           0x0016f9a4      bl    fcn.0017184c
│           0x0016f9a8      mov   w1, 6
│           0x0016f9ac      mov   w0, wzr
│           0x0016f9b0      bl    fcn.aav.0x00000340                   ; fcn.001500b4
│           0x0016f9b4      mov   w1, w0
│           0x0016f9b8      adrp  x0, 0x256000
│           0x0016f9bc      add   x0, x0, 0x67                         ; int64_t arg1
│           0x0016f9c0      bl    fcn.0017184c
│           0x0016f9c4      sub   x0, var_10h + 0x38                   ; int64_t arg1
│           0x0016f9c8      mov   w2, 4
│           0x0016f9cc      mov   w1, wzr
│           0x0016f9d0      bl    fcn.0014d8fc
│           0x0016f9d4      mov   w0, 6
│           0x0016f9d8      bl    fcn.00150b58
│           0x0016f9dc      stur  w0, [var_124h + 0xd0]
│           0x0016f9e0      sub   x0, var_10h + 0x38                   ; int64_t arg1
│           0x0016f9e4      sub   x1, var_10h + 0x64                   ; int64_t arg2
│           0x0016f9e8      mov   w2, 4
│           0x0016f9ec      bl    fcn.0014d60c
│           0x0016f9f0      ldur  w8, [var_124h + 0xd0]
│       ┌─< 0x0016f9f4      cbz   w8, 0x16fa18
│       │   0x0016f9f8      adrp  x0, 0x268000
│       │   0x0016f9fc      add   x0, x0, 0xf9a                        ; int64_t arg1
│       │   0x0016fa00      sub   x1, var_10h + 0x38                   ; int64_t arg2
│       │   0x0016fa04      bl    fcn.0017184c
│       │   0x0016fa08      adrp  x0, 0x26b000
│       │   0x0016fa0c      add   x0, x0, 0x2e1                        ; int64_t arg1
│       │   0x0016fa10      sub   x1, var_10h + 0x38                   ; int64_t arg2
│       │   0x0016fa14      bl    fcn.0017184c
│       └─> 0x0016fa18      adrp  x0, str.E__s:_d_Failed_to_get_command_type_0x_08x ; 0x263000
│           0x0016fa1c      adrp  x1, 0x268000
│           0x0016fa20      add   x0, x0, 0xaa                         ; int64_t arg1
│           0x0016fa24      add   x1, x1, 0x688                        ; int64_t arg2
│           0x0016fa28      bl    fcn.0017184c
│           0x0016fa2c      adrp  x0, 0x274000
│           0x0016fa30      adrp  x1, 0x25a000
│           0x0016fa34      add   x0, x0, 0x3cb                        ; int64_t arg_8h
│           0x0016fa38      add   x1, x1, 0x27c                        ; int64_t arg2
│           0x0016fa3c      bl    fcn.0017184c
│           0x0016fa40      bl    fcn.0017a684
│           0x0016fa44      mov   w1, w0
│           0x0016fa48      adrp  x0, str.E__s:_d_Failed_to_get_command_type_0x_08x ; 0x263000
│           0x0016fa4c      add   x0, x0, 0xc4                         ; int64_t arg1
│           0x0016fa50      bl    fcn.0017184c
│           0x0016fa54      bl    fcn.0017a100
│           0x0016fa58      mov   w1, w0
│           0x0016fa5c      adrp  x0, 0x248000
│           0x0016fa60      add   x0, x0, aav.0x00000298               ; int64_t arg1
│           0x0016fa64      bl    fcn.0017184c
│           0x0016fa68      bl    fcn.000f2994
│           0x0016fa6c      mov   w1, w0
│           0x0016fa70      adrp  x0, 0x248000
│           0x0016fa74      add   x0, x0, 0x2b5                        ; int64_t arg1
│           0x0016fa78      bl    fcn.0017184c
│           0x0016fa7c      adrp  x1, 0x242000
│           0x0016fa80      adrp  x2, 0x27a000
│           0x0016fa84      add   x1, x1, 0xac1                        ; int64_t arg2
│           0x0016fa88      add   x2, x2, 0x3eb                        ; int64_t arg3
│           0x0016fa8c      sub   x0, var_10h + 0x60                   ; int64_t arg1
│           0x0016fa90      bl    fcn.0014aff0
│           0x0016fa94      adrp  x0, 0x25c000
│           0x0016fa98      add   x0, x0, 0x83b                        ; int64_t arg1
│           0x0016fa9c      sub   x1, var_10h + 0x60                   ; int64_t arg2
│           0x0016faa0      bl    fcn.0017184c
│           0x0016faa4      adrp  x0, 0x260000
│           0x0016faa8      add   x0, x0, 0xe24                        ; int64_t arg1
│           0x0016faac      sub   x1, var_10h + 0x60                   ; int64_t arg2
│           0x0016fab0      bl    fcn.0017184c
│           0x0016fab4      bl    fcn.0017bae4
│           0x0016fab8      ldr   w8, [x0, 0x18]                       ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│       ┌─< 0x0016fabc      cbz   w8, 0x16faf8
│       │   0x0016fac0      bl    fcn.0017bae4
│       │   0x0016fac4      ldr   x1, [x0, 0x50]                       ; aav.0x00000050
│       │                                                              ; [0x50:4]=0xd2810600 ; int64_t arg2
│       │   0x0016fac8      adrp  x0, 0x246000
│       │   0x0016facc      add   x0, x0, 0x117                        ; int64_t arg1
│       │   0x0016fad0      bl    fcn.0017184c
│       │   0x0016fad4      bl    fcn.0017bae4
│       │   0x0016fad8      ldr   x8, [x0, 0x50]                       ; aav.0x00000050
│       │                                                              ; [0x50:4]=0xd2810600
│      ┌──< 0x0016fadc      cbz   x8, 0x16fb04
│      ││   0x0016fae0      bl    fcn.0017a0d0
│      ││   0x0016fae4      mov   w1, w0
│      ││   0x0016fae8      adrp  x0, 0x268000
│      ││   0x0016faec      add   x0, x0, 0xfa8                        ; int64_t arg1
│      ││   0x0016faf0      bl    fcn.0017184c
│     ┌───< 0x0016faf4      b     0x16fb04
│     ││└─> 0x0016faf8      adrp  x0, 0x278000
│     ││    0x0016fafc      add   x0, x0, 0xc43                        ; int64_t arg1
│     ││    0x0016fb00      bl    fcn.0017184c
│     ││    ; CODE XREF from fcn.0016f3e0 @ 0x16faf4
│     └└──> 0x0016fb04      bl    fcn.0017bae4
│           0x0016fb08      ldr   x8, [x0, 0x48]                       ; aav.0x00000048
│                                                                      ; [0x48:4]=0xaa0203f6
│       ┌─< 0x0016fb0c      cbz   x8, 0x16fb20
│       │   0x0016fb10      adrp  x0, 0x271000
│       │   0x0016fb14      add   x0, x0, 0xdd7                        ; int64_t arg1
│       │   0x0016fb18      bl    fcn.0017184c
│      ┌──< 0x0016fb1c      b     0x16fb34
│      │└─> 0x0016fb20      bl    fcn.0017bae4
│      │    0x0016fb24      ldr   x1, [x0, 0x30]                       ; aav.0x00000030
│      │                                                               ; [0x30:4]=0x58000911 ; int64_t arg2
│      │    0x0016fb28      adrp  x0, 0x25e000
│      │    0x0016fb2c      add   x0, x0, 0x960                        ; int64_t arg1
│      │    0x0016fb30      bl    fcn.0017184c
│      │    ; CODE XREF from fcn.0016f3e0 @ 0x16fb1c
│      └──> 0x0016fb34      bl    fcn.00179e58
│           0x0016fb38      mov   x22, x0
│           0x0016fb3c      bl    fcn.0017bae4
│           0x0016fb40      ldr   x8, [x0, 0x50]                       ; aav.0x00000050
│                                                                      ; [0x50:4]=0xd2810600
│       ┌─< 0x0016fb44      cbz   x8, 0x16fb58
│       │   0x0016fb48      adrp  x0, 0x278000
│       │   0x0016fb4c      add   x1, x22, 0x10                        ; int64_t arg2
│       │   0x0016fb50      add   x0, x0, 0xc5e                        ; int64_t arg1
│       │   0x0016fb54      bl    fcn.0017184c
│       └─> 0x0016fb58      bl    fcn.001a313c
│           0x0016fb5c      and   w1, w0, 0xff
│           0x0016fb60      adrp  x0, 0x271000
│           0x0016fb64      add   x0, x0, 0xdea                        ; int64_t arg1
│           0x0016fb68      bl    fcn.0017184c
│           0x0016fb6c      adrp  x8, 0x56f000
│           0x0016fb70      ldr   w1, [x8, aav.0x00000900]             ; [0x900:4]=0x74656d65 ; "emetal"
│           0x0016fb74      adrp  x0, 0x23e000
│           0x0016fb78      add   x0, x0, 0xf27                        ; int64_t arg1
│           0x0016fb7c      bl    fcn.0017184c
│           0x0016fb80      adrp  x0, 0x260000
│           0x0016fb84      add   x0, x0, 0xe40                        ; int64_t arg1
│           0x0016fb88      bl    fcn.0017184c
│           0x0016fb8c      mov   w0, 0x41                             ; 'A'
│           0x0016fb90      bl    fcn.00150ad4
│           0x0016fb94      mov   x22, x0
│           0x0016fb98      sub   x0, var_10h + 0x30                   ; int64_t arg1
│           0x0016fb9c      mov   w2, 0xc
│           0x0016fba0      mov   w1, wzr
│           0x0016fba4      bl    fcn.0014d8fc
│           0x0016fba8      adrp  x23, 0x27a000
│           0x0016fbac      adrp  x24, 0x242000
│           0x0016fbb0      mov   x25, xzr
│           0x0016fbb4      add   x23, x23, 0x49
│           0x0016fbb8      add   x24, x24, 0xac1
│       ┌─< 0x0016fbbc      b     0x16fbcc
│       │   ; CODE XREF from fcn.0016f3e0 @ 0x16fbfc
│    ┌┌┌──> 0x0016fbc0      add   x25, x25, 1
│    ╎╎╎│   0x0016fbc4      cmp   x25, aav.0x00000400
│   ┌─────< 0x0016fbc8      b.eq  0x16fc00
│   │╎╎╎│   ; CODE XREF from fcn.0016f3e0 @ 0x16fbbc
│   │╎╎╎└─> 0x0016fbcc      adds  x0, x22, x25
│   │└────< 0x0016fbd0      b.eq  0x16fbc0
│   │ ╎╎    0x0016fbd4      mov   w2, 7
│   │ ╎╎    0x0016fbd8      mov   x1, x23                              ; int64_t arg2
│   │ ╎╎    0x0016fbdc      bl    fcn.0014dbd8
│   │ └───< 0x0016fbe0      cbnz  w0, 0x16fbc0
│   │  ╎    0x0016fbe4      add   x8, x22, x25
│   │  ╎    0x0016fbe8      add   x3, x8, 7                            ; 0x48
│   │  ╎                                                               ; aav.0x00000048 ; int64_t arg5
│   │  ╎    0x0016fbec      sub   x0, var_10h + 0x30                   ; int64_t arg1
│   │  ╎    0x0016fbf0      mov   w1, 0xc
│   │  ╎    0x0016fbf4      mov   x2, x24                              ; int64_t arg4
│   │  ╎    0x0016fbf8      bl    fcn.0014b120
│   │  └──< 0x0016fbfc      b     0x16fbc0
│   └─────> 0x0016fc00      adrp  x1, 0x273000
│           0x0016fc04      add   x1, x1, 0x281                        ; int64_t arg2
│           0x0016fc08      sub   x0, var_10h + 0x30                   ; int64_t arg1
│           0x0016fc0c      mov   w2, 0xb
│           0x0016fc10      sub   x22, var_10h + 0x30
│           0x0016fc14      bl    fcn.0014dbd8
│       ┌─< 0x0016fc18      cbnz  w0, 0x16fc28
│       │   0x0016fc1c      sub   x0, var_10h + 0x24                   ; int64_t arg1
│       │   0x0016fc20      sub   x22, var_10h + 0x24
│       │   0x0016fc24      bl    fcn.0013957c
│       └─> 0x0016fc28      adrp  x0, 0x24a000
│           0x0016fc2c      add   x0, x0, 0x7fb                        ; int64_t arg1
│           0x0016fc30      mov   x1, x22                              ; int64_t arg2
│           0x0016fc34      bl    fcn.0017184c
│           0x0016fc38      adrp  x0, 0x26b000
│           0x0016fc3c      add   x0, x0, 0x2fb                        ; int64_t arg1
│           0x0016fc40      mov   w1, 0x3e8
│           0x0016fc44      bl    fcn.0017184c
│           0x0016fc48      adrp  x8, 0x59a000
│           0x0016fc4c      ldr   w8, [x8, aav.0x0000044c]             ; [0x44c:4]=0xb940c509 ; "\t\xc5@\xb9\xf3\U00000003\U0000001f*7"
│           0x0016fc50      cmp   w8, 1
│       ┌─< 0x0016fc54      b.ne  0x16fc68
│       │   0x0016fc58      adrp  x0, 0x23a000
│       │   0x0016fc5c      add   x0, x0, 0xeec                        ; int64_t arg1
│       │   0x0016fc60      mov   w1, 1
│       │   0x0016fc64      bl    fcn.0017184c
│       └─> 0x0016fc68      mov   w0, 0xe
│           0x0016fc6c      bl    fcn.00150b58
│       ┌─< 0x0016fc70      cbz   w0, 0x16fc84
│       │   0x0016fc74      mov   w0, 0xe
│       │   0x0016fc78      bl    fcn.00150b58
│       │   0x0016fc7c      cmp   w0, 1
│      ┌──< 0x0016fc80      b     0x16fc8c
│      │└─> 0x0016fc84      mov   w8, 0x494d                           ; 'MI'
│      │    0x0016fc88      cmp   w19, w8
│      │    ; CODE XREF from fcn.0016f3e0 @ 0x16fc80
│      └──> 0x0016fc8c      cset  w8, eq
│           0x0016fc90      adrp  x9, 0x268000
│           0x0016fc94      adrp  x10, 0x240000
│           0x0016fc98      add   x9, x9, 0x2c3
│           0x0016fc9c      add   x10, x10, 0x496
│           0x0016fca0      cmp   w8, 0
│           0x0016fca4      csel  x22, x10, x9, ne
│           0x0016fca8      adrp  x0, 0x25a000
│           0x0016fcac      add   x0, x0, 0x62f                        ; int64_t arg1
│           0x0016fcb0      mov   x1, x22                              ; int64_t arg2
│           0x0016fcb4      bl    fcn.0017184c
│           0x0016fcb8      adrp  x0, 0x274000
│           0x0016fcbc      add   x0, x0, 0x3e2                        ; int64_t arg1
│           0x0016fcc0      mov   x1, x22                              ; int64_t arg2
│           0x0016fcc4      bl    fcn.0017184c
│           0x0016fcc8      bl    fcn.0016e5cc
│           0x0016fccc      mov   w1, w0
│           0x0016fcd0      adrp  x0, 0x25c000
│           0x0016fcd4      add   x0, x0, 0x853                        ; int64_t arg1
│           0x0016fcd8      bl    fcn.0017184c
│           0x0016fcdc      bl    fcn.0017bae4
│           0x0016fce0      ldr   x22, [x0, 0x68]                      ; aav.0x00000068
│                                                                      ; [0x68:4]=0xd61f0000
│           0x0016fce4      bl    fcn.0017bae4
│           0x0016fce8      ldr   x4, [x0, 0x70]                       ; aav.0x00000070
│                                                                      ; [0x70:4]=0xd51ec000 ; int64_t arg5
│           0x0016fcec      adrp  x0, 0x278000
│           0x0016fcf0      add   x0, x0, 0xc77                        ; int64_t arg1
│           0x0016fcf4      mov   w1, 0x1e
│           0x0016fcf8      mov   x2, x20                              ; int64_t arg3
│           0x0016fcfc      mov   x3, x22                              ; int64_t arg4
│           0x0016fd00      bl    fcn.0017184c
│           0x0016fd04      adrp  x0, 0x23c000
│           0x0016fd08      adrp  x1, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│           0x0016fd0c      add   x0, x0, 0xf5d                        ; int64_t arg1
│           0x0016fd10      add   x1, x1, 0x433                        ; int64_t arg2
│           0x0016fd14      bl    fcn.0017184c
│           0x0016fd18      adrp  x22, 0x5a6000
│           0x0016fd1c      ldr   w1, [x22, 0xa88]                     ; [0xa88:4]=0x4c204253
│       ┌─< 0x0016fd20      cbnz  w1, 0x16fd3c
│       │   0x0016fd24      mov   w0, wzr
│       │   0x0016fd28      bl    fcn.001895dc
│       │   0x0016fd2c      ldr   w8, [x22, 0xa88]                     ; [0xa88:4]=0x4c204253
│       │   0x0016fd30      cmp   w0, 0
│       │   0x0016fd34      mov   w9, 2
│       │   0x0016fd38      csel  w1, w8, w9, eq
│       └─> 0x0016fd3c      adrp  x0, 0x23a000
│           0x0016fd40      add   x0, x0, 0xf06                        ; int64_t arg1
│           0x0016fd44      bl    fcn.0017184c
│           0x0016fd48      cmp   w21, 4
│           0x0016fd4c      adrp  x21, 0x25a000
│           0x0016fd50      adrp  x22, 0x248000
│           0x0016fd54      add   x21, x21, 0x64e
│           0x0016fd58      add   x22, x22, 0x2cd
│       ┌─< 0x0016fd5c      b.ne  0x16fd7c
│       │   0x0016fd60      mov   w0, 0x25                             ; '%'
│       │   0x0016fd64      bl    fcn.001895dc
│       │   0x0016fd68      cmp   w0, 0
│       │   0x0016fd6c      adrp  x0, 0x24f000
│       │   0x0016fd70      csel  x1, x22, x21, eq                     ; int64_t arg2
│       │   0x0016fd74      add   x0, x0, 0x604                        ; int64_t arg1
│       │   0x0016fd78      bl    fcn.0017184c
│       └─> 0x0016fd7c      bl    fcn.0016e568
│       ┌─< 0x0016fd80      tbnz  w0, 0x13, 0x16fd8c
│       │   0x0016fd84      mov   w1, wzr
│      ┌──< 0x0016fd88      b     0x16fd9c
│      │└─> 0x0016fd8c      mov   w0, 0xb
│      │    0x0016fd90      bl    fcn.001895dc
│      │    0x0016fd94      cmp   w0, 0
│      │    0x0016fd98      cset  w1, eq
│      │    ; CODE XREF from fcn.0016f3e0 @ 0x16fd88
│      └──> 0x0016fd9c      adrp  x0, 0x265000
│           0x0016fda0      add   x0, x0, 0x2ed                        ; int64_t arg1
│           0x0016fda4      bl    fcn.0017184c
│           0x0016fda8      mov   w0, 0x26                             ; '&'
│           0x0016fdac      bl    fcn.001895dc
│           0x0016fdb0      cmp   w0, 0
│           0x0016fdb4      adrp  x0, 0x274000
│           0x0016fdb8      csel  x1, x22, x21, eq                     ; int64_t arg2
│           0x0016fdbc      add   x0, x0, 0x3f1                        ; int64_t arg1
│           0x0016fdc0      bl    fcn.0017184c
│           0x0016fdc4      mov   w0, wzr
│           0x0016fdc8      bl    fcn.00189be8
│           0x0016fdcc      mov   x21, x0
│           0x0016fdd0      mov   w0, 1
│           0x0016fdd4      bl    fcn.00189be8
│           0x0016fdd8      mov   x22, x0
│           0x0016fddc      mov   w0, 2
│           0x0016fde0      bl    fcn.00189be8
│           0x0016fde4      mov   x23, x0
│           0x0016fde8      mov   w0, 3
│           0x0016fdec      bl    fcn.00189be8
│           0x0016fdf0      mov   x4, x0                               ; int64_t arg5
│           0x0016fdf4      adrp  x0, 0x271000
│           0x0016fdf8      add   x0, x0, 0xdfb                        ; int64_t arg1
│           0x0016fdfc      mov   x1, x21                              ; int64_t arg2
│           0x0016fe00      mov   x2, x22                              ; int64_t arg3
│           0x0016fe04      mov   x3, x23                              ; int64_t arg4
│           0x0016fe08      bl    fcn.0017184c
│           0x0016fe0c      adrp  x0, 0x5a6000
│           0x0016fe10      add   x0, x0, 0xe9                         ; int64_t arg1
│           0x0016fe14      bl    fcn.00184328
│           0x0016fe18      mov   w1, w0
│           0x0016fe1c      adrp  x0, 0x25a000
│           0x0016fe20      add   x0, x0, 0x653                        ; int64_t arg1
│           0x0016fe24      bl    fcn.0017184c
│           0x0016fe28      bl    fcn.0017bae4
│           0x0016fe2c      ldr   x1, [x0, 0xa8]                       ; aav.0x000000a8
│                                                                      ; [0xa8:4]=0xf2c00080 ; int64_t arg2
│           0x0016fe30      adrp  x0, 0x256000
│           0x0016fe34      add   x0, x0, 0x89                         ; int64_t arg1
│           0x0016fe38      bl    fcn.0017184c
│           0x0016fe3c      adrp  x0, 0x256000
│           0x0016fe40      lsr   x3, x20, 0x20                        ; int64_t arg4
│           0x0016fe44      and   x4, x20, 0xffffffff                  ; int64_t arg5
│           0x0016fe48      add   x0, x0, 0x9f                         ; int64_t arg1
│           0x0016fe4c      mov   w1, -0x44450000
│           0x0016fe50      mov   w2, wzr
│           0x0016fe54      bl    fcn.0017184c
│           0x0016fe58      adrp  x20, 0x242000
│           0x0016fe5c      add   x20, x20, 0xac1
│           0x0016fe60      adrp  x1, 0x2c1000
│           0x0016fe64      add   x1, x1, 0x786                        ; int64_t arg2
│           0x0016fe68      mov   x0, x20                              ; int64_t arg1
│           0x0016fe6c      bl    fcn.0017184c
│           0x0016fe70      adrp  x0, 0x24f000
│           0x0016fe74      adrp  x1, 0x274000
│           0x0016fe78      add   x0, x0, 0x61d                        ; int64_t arg1
│           0x0016fe7c      add   x1, x1, aav.0x0000040c               ; "\t\x80\x80R\xc9\U00000002" ; int64_t arg2
│           0x0016fe80      bl    fcn.0017184c
│           0x0016fe84      adrp  x0, 0x26b000
│           0x0016fe88      add   x0, x0, 0x317                        ; int64_t arg1
│           0x0016fe8c      mov   w1, 1
│           0x0016fe90      bl    fcn.0017184c
│           0x0016fe94      mov   w0, wzr
│           0x0016fe98      bl    fcn.0017b7c8
│           0x0016fe9c      mov   w1, w0
│           0x0016fea0      adrp  x0, 0x274000
│           0x0016fea4      add   x0, x0, 0x413                        ; int64_t arg1
│           0x0016fea8      bl    fcn.0017184c
│           0x0016feac      adrp  x1, 0x55c000
│           0x0016feb0      add   x1, x1, 0xd04                        ; int64_t arg2
│           0x0016feb4      mov   x0, x20                              ; int64_t arg1
│           0x0016feb8      bl    fcn.0017184c
│           0x0016febc      add   x0, var_124h                         ; int64_t arg1
│           0x0016fec0      mov   w2, 0x80
│           0x0016fec4      mov   w1, wzr
│           0x0016fec8      bl    fcn.0014d8fc
│           0x0016fecc      add   x0, var_124h                         ; int64_t arg1
│           0x0016fed0      mov   w1, wzr
│           0x0016fed4      bl    fcn.001807e0
│       ┌─< 0x0016fed8      cbz   w0, 0x16fefc
│       │   0x0016fedc      adrp  x0, 0x26b000
│       │   0x0016fee0      add   x0, x0, 0x333                        ; int64_t arg1
│       │   0x0016fee4      add   x1, var_124h                         ; int64_t arg2
│       │   0x0016fee8      bl    fcn.0017184c
│       │   0x0016feec      adrp  x0, 0x248000
│       │   0x0016fef0      add   x0, x0, 0x2d3                        ; int64_t arg1
│       │   0x0016fef4      add   x1, var_124h                         ; int64_t arg2
│       │   0x0016fef8      bl    fcn.0017184c
│       └─> 0x0016fefc      add   x0, var_138h                         ; int64_t arg1
│           0x0016ff00      mov   w1, 0x10
│           0x0016ff04      stp   xzr, xzr, [var_138h]
│           0x0016ff08      bl    fcn.00109f7c
│           0x0016ff0c      adrp  x0, 0x23a000
│           0x0016ff10      add   x0, x0, 0xf21                        ; int64_t arg1
│           0x0016ff14      add   x1, var_138h                         ; int64_t arg2
│           0x0016ff18      bl    fcn.0017184c
│           0x0016ff1c      bl    fcn.0016e568
│       ┌─< 0x0016ff20      tbnz  w0, 0x13, 0x16ff6c
│       │   0x0016ff24      mov   w0, wzr
│       │   0x0016ff28      bl    fcn.0016e504
│       │   0x0016ff2c      mov   x1, x0                               ; int64_t arg2
│       │   0x0016ff30      adrp  x0, 0x268000
│       │   0x0016ff34      add   x0, x0, 0xfbf                        ; int64_t arg1
│       │   0x0016ff38      bl    fcn.0017184c
│       │   0x0016ff3c      mov   w0, 1
│       │   0x0016ff40      bl    fcn.0016e504
│       │   0x0016ff44      mov   x1, x0                               ; int64_t arg2
│       │   0x0016ff48      adrp  x0, 0x26d000
│       │   0x0016ff4c      add   x0, x0, 0x4f3                        ; int64_t arg1
│       │   0x0016ff50      bl    fcn.0017184c
│       │   0x0016ff54      mov   w0, 2
│       │   0x0016ff58      bl    fcn.0016e504
│       │   0x0016ff5c      mov   x1, x0                               ; int64_t arg2
│       │   0x0016ff60      adrp  x0, 0x271000
│       │   0x0016ff64      add   x0, x0, 0xe2d                        ; int64_t arg1
│       │   0x0016ff68      bl    fcn.0017184c
│       └─> 0x0016ff6c      bl    fcn.0016e568
│       ┌─< 0x0016ff70      tbnz  w0, 0x13, 0x16ff80
│       │   0x0016ff74      adrp  x0, 0x265000
│       │   0x0016ff78      add   x0, x0, 0x30e                        ; int64_t arg1
│       │   0x0016ff7c      bl    fcn.0017184c
│       └─> 0x0016ff80      mov   w8, 0x4f4c                           ; 'LO'
│           0x0016ff84      cmp   w19, w8
│       ┌─< 0x0016ff88      b.ne  0x16ff98
│       │   0x0016ff8c      adrp  x0, 0x24c000
│       │   0x0016ff90      add   x0, x0, 0xb56                        ; int64_t arg1
│       │   0x0016ff94      bl    fcn.0017184c
│       └─> 0x0016ff98      bl    fcn.001a4acc
│       ┌─< 0x0016ff9c      tbz   w0, 0, 0x16ffac
│       │   0x0016ffa0      mov   w0, 1
│       │   0x0016ffa4      bl    fcn.001a46a4
│       │   0x0016ffa8      bl    fcn.00197864
│       └─> 0x0016ffac      mov   w0, wzr
│           0x0016ffb0      bl    fcn.001a49b8
│           0x0016ffb4      mov   w0, 1
│           0x0016ffb8      bl    fcn.00189be8
│       ┌─< 0x0016ffbc      tbnz  w0, 0xb, 0x16ffdc
│       │   0x0016ffc0      adrp  x0, 0x257000
│       │   0x0016ffc4      add   x0, x0, 0xdd7                        ; int64_t arg1
│       │   0x0016ffc8      bl    fcn.0017184c
│       │   0x0016ffcc      adrp  x0, 0x25c000
│       │   0x0016ffd0      add   x0, x0, 0x86b                        ; int64_t arg1
│       │   0x0016ffd4      bl    fcn.0017184c
│      ┌──< 0x0016ffd8      b     0x17000c
│      │└─> 0x0016ffdc      mov   w0, 0x2d                             ; '-'
│      │    0x0016ffe0      bl    fcn.00150b58
│      │    0x0016ffe4      mov   w1, w0
│      │    0x0016ffe8      adrp  x0, 0x25e000
│      │    0x0016ffec      add   x0, x0, 0x972                        ; int64_t arg1
│      │    0x0016fff0      bl    fcn.0017184c
│      │    0x0016fff4      mov   w0, 0x2d                             ; '-'
│      │    0x0016fff8      bl    fcn.00150b58
│      │    0x0016fffc      mov   w1, w0
│      │    0x00170000      adrp  x0, 0x27a000
│      │    0x00170004      add   x0, x0, str.rn_value_of_cmd0_is_not_correct_0x_x ; 0xdb9 ; "rn value of cmd0 is not correct 0x%x\n" ; int64_t arg1
│      │    0x00170008      bl    fcn.0017184c
│      │    ; CODE XREF from fcn.0016f3e0 @ 0x16ffd8
│      └──> 0x0017000c      ldp   x20, x19, [var_10h]
│           0x00170010      ldp   x22, x21, [var_20h]
│           0x00170014      ldp   x24, x23, [var_30h]
│           0x00170018      ldp   x28, x25, [var_40h]
│           0x0017001c      ldp   x29, x30, [var_50h]
│           0x00170020      add   sp, sp, aav.0x00000140
│           0x00170024      autibsp
└           0x00170028      ret
            ; CALL XREF from fcn.001558e4 @ 0x155d2c
            ; CALL XREF from fcn.0018efb4 @ 0x18efe8

================================================================================

## Function fcn.00183e40

FUNCTION: fcn.00183e40
================================================================================
┌ fcn.00183e40(int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_48h @ stack - 0x48
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x00183e40      pacibsp
│           0x00183e44      sub   sp, sp, 0x50
│           0x00183e48      stp   x29, x30, [var_40h]
│           0x00183e4c      str   x23, [var_30h]
│           0x00183e50      stp   x22, x21, [var_20h]
│           0x00183e54      stp   x20, x19, [var_10h]
│           0x00183e58      add   x29, sp, 0x10
│           0x00183e5c      adrp  x8, 0x2cd000
│           0x00183e60      ldr   w0, [x8, 0x730]                      ; [0x730:4]=0xb94053e8
│           0x00183e64      strh  wzr, [var_10h + 0x2c]
│           0x00183e68      str   xzr, [var_48h]
│           0x00183e6c      cmn   w0, 2
│       ┌─< 0x00183e70      b.ne  0x183fec
│       │   0x00183e74      adrp  x19, 0x241000
│       │   0x00183e78      adrp  x0, 0x251000
│       │   0x00183e7c      add   x19, x19, 0x7a2
│       │   0x00183e80      add   x0, x0, 0xf45                        ; int64_t arg1
│       │   0x00183e84      mov   x1, x19                              ; int64_t arg2
│       │   0x00183e88      bl    fcn.0014c9f8
│       │   0x00183e8c      adrp  x0, 0x24a000
│       │   0x00183e90      add   x0, x0, 0xc1e                        ; int64_t arg1
│       │   0x00183e94      mov   x1, x19                              ; int64_t arg2
│       │   0x00183e98      bl    fcn.0014c9f8
│       │   0x00183e9c      mov   w0, aav.0x00000100
│       │   0x00183ea0      mov   w1, wzr
│       │   0x00183ea4      bl    fcn.0018461c
│      ┌──< 0x00183ea8      cbz   x0, 0x183f34
│      ││   0x00183eac      mov   x19, x0
│      ││   0x00183eb0      mov   w0, aav.0x00000c00                   ; "ect 0x%x\n"
│      ││   0x00183eb4      mov   w1, wzr
│      ││   0x00183eb8      bl    fcn.0018461c
│     ┌───< 0x00183ebc      cbz   x0, 0x183f5c
│     │││   0x00183ec0      mov   x20, x0
│     │││   0x00183ec4      mov   w0, aav.0x00000100
│     │││   0x00183ec8      mov   w1, wzr
│     │││   0x00183ecc      bl    fcn.0018461c
│     │││   0x00183ed0      mov   x21, x0
│    ┌────< 0x00183ed4      cbz   x0, 0x183f90
│    ││││   0x00183ed8      mov   w8, 4
│    ││││   0x00183edc      mov   w9, 0xd2
│    ││││   0x00183ee0      add   x3, var_10h + 0x2c                   ; int64_t arg4
│    ││││   0x00183ee4      mov   w0, aav.0x00003c00
│    ││││   0x00183ee8      mov   w1, 1
│    ││││   0x00183eec      mov   x2, x19                              ; int64_t arg3
│    ││││   0x00183ef0      strb  wzr, [x19, 3]
│    ││││   0x00183ef4      strb  wzr, [x19, 2]
│    ││││   0x00183ef8      strb  w8, [x19, 1]
│    ││││   0x00183efc      strb  w9, [x19]
│    ││││   0x00183f00      bl    fcn.001243f4
│   ┌─────< 0x00183f04      cbz   w0, 0x184008
│   │││││   0x00183f08      adrp  x0, 0x5a6000
│   │││││   0x00183f0c      adrp  x1, 0x24d000
│   │││││   0x00183f10      add   x0, x0, 0xe9                         ; int64_t arg1
│   │││││   0x00183f14      add   x1, x1, 0x6cc                        ; int64_t arg2
│   │││││   0x00183f18      mov   w2, 6
│   │││││   0x00183f1c      bl    fcn.0014d60c
│   │││││   0x00183f20      ldrh  w1, [var_10h + 0x2c]                 ; aav.0x0000001c
│   │││││                                                              ; [0x1c:4]=0
│   │││││   0x00183f24      adrp  x0, 0x269000
│   │││││   0x00183f28      add   x0, x0, 0x2db                        ; int64_t arg1
│   │││││   0x00183f2c      bl    fcn.0014c9f8
│  ┌──────< 0x00183f30      b     0x183fbc
│  ││││└──> 0x00183f34      adrp  x0, 0x254000
│  ││││ │   0x00183f38      add   x0, x0, 0x25a                        ; int64_t arg1
│  ││││ │   0x00183f3c      bl    fcn.0014c9f8
│  ││││ │   0x00183f40      adrp  x0, 0x5a6000
│  ││││ │   0x00183f44      adrp  x1, 0x24d000
│  ││││ │   0x00183f48      add   x0, x0, 0xe9                         ; int64_t arg1
│  ││││ │   0x00183f4c      add   x1, x1, 0x6cc                        ; int64_t arg2
│  ││││ │   0x00183f50      mov   w2, 6
│  ││││ │   0x00183f54      bl    fcn.0014d60c
│  ││││┌──< 0x00183f58      b     0x183fe8
│  │││└───> 0x00183f5c      adrp  x0, 0x244000
│  │││ ││   0x00183f60      adrp  x1, 0x241000
│  │││ ││   0x00183f64      add   x0, x0, 0x212                        ; int64_t arg1
│  │││ ││   0x00183f68      add   x1, x1, 0x7a2                        ; int64_t arg2
│  │││ ││   0x00183f6c      bl    fcn.0014c9f8
│  │││ ││   0x00183f70      adrp  x0, 0x5a6000
│  │││ ││   0x00183f74      adrp  x1, 0x24d000
│  │││ ││   0x00183f78      add   x0, x0, 0xe9                         ; int64_t arg1
│  │││ ││   0x00183f7c      add   x1, x1, 0x6cc                        ; int64_t arg2
│  │││ ││   0x00183f80      mov   w2, 6
│  │││ ││   0x00183f84      bl    fcn.0014d60c
│  │││ ││   0x00183f88      mov   x0, x19
│  │││┌───< 0x00183f8c      b     0x183fe4
│  ││└────> 0x00183f90      adrp  x0, 0x24d000
│  ││ │││   0x00183f94      adrp  x1, 0x241000
│  ││ │││   0x00183f98      add   x0, x0, 0x6d3                        ; int64_t arg1
│  ││ │││   0x00183f9c      add   x1, x1, 0x7a2                        ; int64_t arg2
│  ││ │││   0x00183fa0      bl    fcn.0014c9f8
│  ││ │││   0x00183fa4      adrp  x0, 0x5a6000
│  ││ │││   0x00183fa8      adrp  x1, 0x24d000
│  ││ │││   0x00183fac      add   x0, x0, 0xe9
│  ││ │││   0x00183fb0      add   x1, x1, 0x6cc
│  ││ │││   0x00183fb4      mov   w2, 6
│  ││ │││   ; CODE XREFS from fcn.00183e40 @ 0x184054, 0x1840e0
│  ││┌────> 0x00183fb8      bl    fcn.0014d60c
│  ││╎│││   ; CODE XREF from fcn.00183e40 @ 0x183f30
│  └──────> 0x00183fbc      mov   x22, xzr
│   │╎│││   ; CODE XREF from fcn.00183e40 @ 0x184264
│   │╎│││   0x00183fc0      mov   x0, x19                              ; int64_t arg1
│   │╎│││   0x00183fc4      bl    fcn.001424a4
│   │╎│││   0x00183fc8      mov   x0, x20                              ; int64_t arg1
│   │╎│││   0x00183fcc      bl    fcn.001424a4
│  ┌──────< 0x00183fd0      cbz   x21, 0x183fdc
│  ││╎│││   0x00183fd4      mov   x0, x21                              ; int64_t arg1
│  ││╎│││   0x00183fd8      bl    fcn.001424a4
│ ┌└──────> 0x00183fdc      cbz   x22, 0x183fe8
│ │ │╎│││   0x00183fe0      mov   x0, x22
│ │ │╎│││   ; CODE XREF from fcn.00183e40 @ 0x183f8c
│ │ │╎└───> 0x00183fe4      bl    fcn.001424a4
│ │ │╎ ││   ; CODE XREF from fcn.00183e40 @ 0x183f58
│ └────└──> 0x00183fe8      mov   w0, wzr
│   │╎  └─> 0x00183fec      ldp   x20, x19, [var_10h]
│   │╎      0x00183ff0      ldp   x22, x21, [var_20h]
│   │╎      0x00183ff4      ldr   x23, [var_30h]                       ; aav.0x00000020
│   │╎                                                                 ; [0x20:4]=0x58000940 ; "@\t"
│   │╎      0x00183ff8      ldp   x29, x30, [var_40h]
│   │╎      0x00183ffc      add   sp, sp, 0x50
│   │╎      0x00184000      autibsp
│   │╎      0x00184004      ret
│   └─────> 0x00184008      ldrb  w8, [x19, 3]                         ; [0x3:4]=0x48776b00
│    ╎      0x0018400c      ldrb  w9, [x19, 2]                         ; [0x2:4]=0x776b0000
│    ╎      0x00184010      ldrb  w10, [x19, 1]                        ; [0x1:4]=0x6b000000
│    ╎      0x00184014      ldrb  w1, [x19]                            ; [0x100:4]=0x34000040 ; "@"
│    ╎      0x00184018      bfi   w9, w8, 8, 8
│    ╎      0x0018401c      mov   w8, -0x15fd0000
│    ╎      0x00184020      bfi   w1, w10, 8, 8
│    ╎      0x00184024      bfi   w1, w9, 0x10, 0x10
│    ╎      0x00184028      cmp   w1, w8
│    ╎  ┌─< 0x0018402c      b.eq  0x184058
│    ╎ ┌──< 0x00184030      cbnz  w1, 0x1840c0
│    ╎ ││   0x00184034      adrp  x0, 0x246000
│    ╎ ││   0x00184038      add   x0, x0, 0x481                        ; int64_t arg1
│    ╎ ││   0x0018403c      bl    fcn.0014c9f8
│    ╎ ││   0x00184040      adrp  x0, 0x5a6000
│    ╎ ││   0x00184044      adrp  x1, 0x241000
│    ╎ ││   0x00184048      add   x0, x0, 0xe9
│    ╎ ││   0x0018404c      add   x1, x1, 0x7b1
│    ╎ ││   0x00184050      mov   w2, 8
│    └────< 0x00184054      b     0x183fb8
│      │└─> 0x00184058      mov   x8, x19
│      │    0x0018405c      ldrb  w1, [x8, 0x74]!                      ; aav.0x00000074
│      │                                                               ; [0x74:4]=0xd5033fdf
│      │    0x00184060      ldrb  w9, [x8, 3]                          ; [0x3:4]=0x48776b00
│      │    0x00184064      ldrb  w10, [x8, 2]                         ; [0x2:4]=0x776b0000
│      │    0x00184068      ldrb  w8, [x8, 1]                          ; [0x1:4]=0x6b000000
│      │    0x0018406c      bfi   w10, w9, 8, 8
│      │    0x00184070      bfi   w1, w8, 8, 8
│      │    0x00184074      bfi   w1, w10, 0x10, 0x10
│      │    0x00184078      cmp   w1, 4
│      │┌─< 0x0018407c      b.hi  0x1840e4
│      ││   0x00184080      adrp  x8, 0x28d000
│      ││   0x00184084      add   x8, x8, 0x6b0
│      ││   0x00184088      adr   x9, 0x184098
│      ││   0x0018408c      ldrb  w10, [x8, x1]
│      ││   0x00184090      add   x9, x9, x10, lsl 2
│      ││   0x00184094      br    x9
       ││   ; STRING XREF from fcn.00183e40 @ 0x184088
..
│      └──> 0x001840c0      adrp  x0, 0x24f000
│       │   0x001840c4      add   x0, x0, 0x888                        ; int64_t arg1
│       │   0x001840c8      bl    fcn.0014c9f8
│       │   0x001840cc      adrp  x0, 0x5a6000
│       │   0x001840d0      adrp  x1, 0x269000
│       │   0x001840d4      add   x0, x0, 0xe9
│       │   0x001840d8      add   x1, x1, 0x14d
│       │   0x001840dc      mov   w2, 5
│       │   0x001840e0      b     0x183fb8
│       └─> 0x001840e4      adrp  x0, 0x251000
│           0x001840e8      add   x0, x0, 0xf54                        ; int64_t arg1
│           0x001840ec      bl    fcn.0014c9f8
│           0x001840f0      adrp  x0, 0x5a6000
│           0x001840f4      adrp  x1, 0x269000
│           0x001840f8      add   x0, x0, 0xe9
│           0x001840fc      add   x1, x1, 0x14d
│           0x00184100      mov   w2, 5
│           0x00184104      b     0x1841cc
..
│           ; CODE XREFS from fcn.00183e40 @ 0x27c, 0x184104
│           ; CODE XREFS from fcn.00183e40 @ +0x2dc, +0x2f4, +0x30c
│           0x001841cc      bl    fcn.0014d60c
│           0x001841d0      mov   x22, xzr
│           ; CODE XREFS from fcn.00183e40 @ +0x374, +0x440
│           0x001841d4      mov   x23, x19
│           0x001841d8      ldrb  w1, [x23, 0x74]!                     ; aav.0x00000074
│                                                                      ; [0x74:4]=0xd5033fdf
│           0x001841dc      adrp  x0, 0x24f000
│           0x001841e0      add   x0, x0, 0x8af                        ; int64_t arg1
│           0x001841e4      ldrb  w8, [x23, 3]                         ; [0x3:4]=0x48776b00
│           0x001841e8      ldrb  w9, [x23, 2]                         ; [0x2:4]=0x776b0000
│           0x001841ec      ldrb  w10, [x23, 1]                        ; [0x1:4]=0x6b000000
│           0x001841f0      bfi   w9, w8, 8, 8
│           0x001841f4      bfi   w1, w10, 8, 8
│           0x001841f8      bfi   w1, w9, 0x10, 0x10
│           0x001841fc      bl    fcn.0014c9f8
│           0x00184200      ldrb  w8, [x23, 3]                         ; [0x3:4]=0x48776b00
│           0x00184204      ldrb  w9, [x23, 2]                         ; [0x2:4]=0x776b0000
│           0x00184208      ldrb  w10, [x23, 1]                        ; [0x1:4]=0x6b000000
│           0x0018420c      ldrb  w11, [x23]
│           0x00184210      bfi   w9, w8, 8, 8
│           0x00184214      bfi   w11, w10, 8, 8
│           0x00184218      bfi   w11, w9, 0x10, 0x10
│           0x0018421c      and   w8, w11, 0xfffffffe
│           0x00184220      cmp   w8, 2
│           0x00184224      b.ne  0x183fc0
│           0x00184228      add   x0, var_48h                          ; int64_t arg1
│           0x0018422c      bl    fcn.0010cf84
│           0x00184230      ldr   x2, [var_48h]                        ; aav.0x00000008
│                                                                      ; [0x8:4]=0x68656164 ; "daeh" ; unsigned long arg3
│           0x00184234      mov   x1, x0                               ; int64_t arg2
│           0x00184238      adrp  x0, 0x23f000
│           0x0018423c      add   x0, x0, 0x1ec                        ; int64_t arg1
│           0x00184240      bl    fcn.0014c9f8
│           0x00184244      ldr   x8, [var_48h]                        ; aav.0x00000008
│                                                                      ; [0x8:4]=0x68656164 ; "daeh"
│           0x00184248      cmp   x8, str.k__9Ki_8                     ; 0x200 ; "k\t@9Ki(8\b\U00000005"
│           0x0018424c      b.eq  0x183fc0
│           0x00184250      bl    fcn.0010cedc
│           0x00184254      mov   x1, x0                               ; int64_t arg2
│           0x00184258      adrp  x0, 0x24f000
│           0x0018425c      add   x0, x0, str.S_EL2_can_not_be_used_in_AArch32. ; 0x8c6 ; "\nS-EL2 can not be used in AArch32." ; int64_t arg1
│           0x00184260      bl    fcn.0014c9f8
└           0x00184264      b     0x183fc0
            ; CALL XREF from fcn.00183e40 @ +0x340

================================================================================

## Function fcn.00187cf0

FUNCTION: fcn.00187cf0
================================================================================
┌ fcn.00187cf0();
│           ; var int64_t var_af8h @ stack - 0xaf8
│           ; var int64_t var_af4h @ stack - 0xaf4
│           ; var int64_t var_9b8h @ stack - 0x9b8
│           ; var int64_t var_9b7h @ stack - 0x9b7
│           ; var int64_t var_9b6h @ stack - 0x9b6
│           ; var int64_t var_9b5h @ stack - 0x9b5
│           ; var int64_t var_9b4h @ stack - 0x9b4
│           ; var int64_t var_9b3h @ stack - 0x9b3
│           ; var int64_t var_9b2h @ stack - 0x9b2
│           ; var int64_t var_9b1h @ stack - 0x9b1
│           ; var int64_t var_9b0h @ stack - 0x9b0
│           ; var int64_t var_9afh @ stack - 0x9af
│           ; var int64_t var_9aeh @ stack - 0x9ae
│           ; var int64_t var_9adh @ stack - 0x9ad
│           ; var int64_t var_8a8h @ stack - 0x8a8
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x00187cf0      pacibsp
│           0x00187cf4      stp   x29, x30, [var_40h]!
│           0x00187cf8      str   x28, [var_30h]
│           0x00187cfc      stp   x22, x21, [var_20h]
│           0x00187d00      stp   x20, x19, [var_10h]
│           0x00187d04      mov   x29, sp
│           0x00187d08      sub   sp, sp, 0xac0
│           0x00187d0c      add   x0, var_af8h                         ; int64_t arg1
│           0x00187d10      bl    fcn.0017ba20
│           0x00187d14      bl    fcn.0016e568
│       ┌─< 0x00187d18      tbnz  w0, 0x13, 0x187d2c
│       │   0x00187d1c      bl    fcn.0016e568
│      ┌──< 0x00187d20      tbz   w0, 0x12, 0x187d40
│      ││   0x00187d24      mov   w8, 4
│     ┌───< 0x00187d28      b     0x187d30
│     ││└─> 0x00187d2c      mov   w8, 2
│     ││    ; CODE XREF from fcn.00187cf0 @ 0x187d28
│     └───> 0x00187d30      sub   x1, var_10h + 0x30                   ; int64_t arg2
│      │    0x00187d34      mov   w0, wzr
│      │    0x00187d38      sturb w8, [var_20h]
│      │    0x00187d3c      bl    fcn.00188310
│      └──> 0x00187d40      bl    fcn.00187ac4
│           0x00187d44      adrp  x8, 0x573000
│           0x00187d48      ldr   w8, [x8, 0x5f8]                      ; [0x5f8:4]=0x3828693f ; "?i(8\b\U00000005"
│           0x00187d4c      adrp  x19, 0x5a6000
│           0x00187d50      adrp  x0, 0x5a6000
│           0x00187d54      add   x19, x19, 0x9c0
│           0x00187d58      add   x0, x0, 0xe9                         ; int64_t arg1
│           0x00187d5c      strb  w8, [x19, 0x47]
│           0x00187d60      bl    fcn.00184328
│           0x00187d64      cmp   w0, 0
│           0x00187d68      csinv w8, w0, wzr, ge
│           0x00187d6c      strb  w8, [x19, 0x4a]
│           0x00187d70      bl    fcn.001842f4
│           0x00187d74      strb  w0, [x19, 0x4b]
│           0x00187d78      bl    fcn.0017ca10
│           0x00187d7c      strb  w0, [x19, 0x42]
│           0x00187d80      bl    fcn.0017a0d0
│           0x00187d84      str   w0, [x19]
│           0x00187d88      bl    fcn.0017bae4
│       ┌─< 0x00187d8c      cbz   x0, 0x187dd4
│       │   0x00187d90      ldr   x8, [x0, 0x30]                       ; aav.0x00000030
│       │                                                              ; [0x30:4]=0x58000911
│       │   0x00187d94      mov   w9, -2
│       │   0x00187d98      mov   w10, -1
│       │   0x00187d9c      adrp  x11, 0x5a6000
│       │   0x00187da0      cmp   x8, 0xfe
│       │   0x00187da4      csel  w12, w8, w9, lo
│       │   0x00187da8      cmp   x8, x10
│       │   0x00187dac      add   x11, x11, 0x9fd
│       │   0x00187db0      csinv w8, w12, wzr, ne
│       │   0x00187db4      strb  w8, [x11]
│       │   0x00187db8      ldr   x8, [x0, 0x48]                       ; aav.0x00000048
│       │                                                              ; [0x48:4]=0xaa0203f6
│       │   0x00187dbc      cmp   x8, 0xfe
│       │   0x00187dc0      csel  w9, w8, w9, lo
│       │   0x00187dc4      cmp   x8, x10
│       │   0x00187dc8      csinv w8, w9, wzr, ne
│       │   0x00187dcc      strb  w8, [x11, 3]
│      ┌──< 0x00187dd0      b     0x187de8
│      │└─> 0x00187dd4      adrp  x0, 0x24f000
│      │    0x00187dd8      adrp  x1, 0x261000
│      │    0x00187ddc      add   x0, x0, 0x9ff                        ; int64_t arg1
│      │    0x00187de0      add   x1, x1, 0x2c3                        ; int64_t arg2
│      │    0x00187de4      bl    fcn.0014c9f8
│      │    ; CODE XREF from fcn.00187cf0 @ 0x187dd0
│      └──> 0x00187de8      mov   w0, wzr
│           0x00187dec      bl    fcn.0017d024
│           0x00187df0      adrp  x8, 0x5a6000
│           0x00187df4      strb  w0, [x8, 0x9fe]
│           0x00187df8      adrp  x0, 0x27a000
│           0x00187dfc      add   x0, x0, 0xf53                        ; int64_t arg1
│           0x00187e00      bl    fcn.0017cc58
│           0x00187e04      cmn   w0, 1
│       ┌─< 0x00187e08      b.eq  0x187e28
│       │   0x00187e0c      adrp  x0, 0x27a000
│       │   0x00187e10      add   x0, x0, 0xf53                        ; int64_t arg1
│       │   0x00187e14      bl    fcn.0017cc58
│       │   0x00187e18      cmp   w0, 0xfe
│      ┌──< 0x00187e1c      b.ls  0x187e30
│      ││   0x00187e20      mov   w0, 0xfe
│     ┌───< 0x00187e24      b     0x187e3c
│     ││└─> 0x00187e28      mov   w0, 0xff
│     ││┌─< 0x00187e2c      b     0x187e3c
│     │└──> 0x00187e30      adrp  x0, 0x27a000
│     │ │   0x00187e34      add   x0, x0, 0xf53                        ; int64_t arg1
│     │ │   0x00187e38      bl    fcn.0017cc58
│     │ │   ; CODE XREFS from fcn.00187cf0 @ 0x187e24, 0x187e2c
│     └─└─> 0x00187e3c      adrp  x8, 0x5a6000
│           0x00187e40      strb  w0, [x8, 0x9ff]
│           0x00187e44      bl    fcn.001b43cc
│       ┌─< 0x00187e48      cbz   w0, 0x187e58
│       │   0x00187e4c      bl    fcn.001b43cc
│       │   0x00187e50      cmp   w0, 1
│      ┌──< 0x00187e54      b.ne  0x188088
│      │└─> 0x00187e58      mov   w8, wzr
│      │    ; CODE XREF from fcn.00187cf0 @ 0x188098
│      │┌─> 0x00187e5c      adrp  x9, 0x5a6000
│      │╎   0x00187e60      strb  w8, [x9, 0x9db]
│     ┌───> 0x00187e64      bl    fcn.0017b0a0
│     ╎│╎   0x00187e68      adrp  x19, 0x5a6000
│     ╎│╎   0x00187e6c      add   x19, x19, 0x986
│     ╎│╎   0x00187e70      strb  w0, [x19, 0x87]
│     ╎│╎   0x00187e74      bl    fcn.0017b1f8
│     ╎│╎   0x00187e78      strb  w0, [x19, 0x88]
│     ╎│╎   0x00187e7c      bl    fcn.00179f90
│     ╎│╎   0x00187e80      adrp  x8, 0x5a6000
│     ╎│╎   0x00187e84      ldr   w8, [x8, 0xa88]                      ; [0xa88:4]=0x4c204253
│     ╎│╎   0x00187e88      strh  w0, [x19, 0x4e]
│     ╎│╎   0x00187e8c      add   x0, x19, 0x8a                        ; int64_t arg1
│     ╎│╎   0x00187e90      strb  w8, [x19, 0x83]
│     ╎│╎   0x00187e94      bl    fcn.00189614
│     ╎│╎   0x00187e98      ldrb  w8, [var_9b8h]                       ; [0x148:4]=0x11860990
│     ╎│╎   0x00187e9c      ldrb  w9, [var_9b7h]                       ; [0x149:4]=0x118609
│     ╎│╎   0x00187ea0      ldrb  w10, [var_9b6h]                      ; [0x14a:4]=0x1186
│     ╎│╎   0x00187ea4      ldrb  w11, [var_9b5h]                      ; [0x14b:4]=17
│     ╎│╎   0x00187ea8      ldrb  w12, [var_9b4h]                      ; [0x14c:4]=0
│     ╎│╎   0x00187eac      ldrb  w13, [var_9b3h]                      ; [0x14d:4]=0
│     ╎│╎   0x00187eb0      ldrb  w14, [var_9b2h]                      ; [0x14e:4]=0x3e000000
│     ╎│╎   0x00187eb4      ldrb  w15, [var_9b1h]                      ; [0x14f:4]=0x33e0000
│     ╎│╎   0x00187eb8      ldrb  w16, [var_9b0h]                      ; aav.0x00000150
│     ╎│╎                                                              ; [0x150:4]=0x2033e00
│     ╎│╎   0x00187ebc      orr   w8, w9, w8, lsl 4
│     ╎│╎   0x00187ec0      ldrb  w9, [var_9afh]                       ; [0x151:4]=0x2033e
│     ╎│╎   0x00187ec4      orr   w10, w11, w10, lsl 4
│     ╎│╎   0x00187ec8      ldrb  w11, [var_9aeh]                      ; [0x152:4]=0x203
│     ╎│╎   0x00187ecc      orr   w12, w13, w12, lsl 4
│     ╎│╎   0x00187ed0      ldrb  w13, [var_9adh]                      ; [0x153:4]=2
│     ╎│╎   0x00187ed4      orr   w14, w15, w14, lsl 4
│     ╎│╎   0x00187ed8      orr   w9, w9, w16, lsl 4
│     ╎│╎   0x00187edc      ldp   w16, w15, [var_af4h]
│     ╎│╎   0x00187ee0      strb  w8, [x19, 0xac]
│     ╎│╎   0x00187ee4      ldr   w8, [var_8a8h]                       ; [0x258:4]=0x52800808
│     ╎│╎   0x00187ee8      orr   w11, w13, w11, lsl 4
│     ╎│╎   0x00187eec      lsr   w13, w15, 0x18
│     ╎│╎   0x00187ef0      strb  w13, [x19, 0xaa]
│     ╎│╎   0x00187ef4      mov   w13, -2
│     ╎│╎   0x00187ef8      strh  w15, [x19, 0x52]
│     ╎│╎   0x00187efc      lsr   w15, w15, 0x10
│     ╎│╎   0x00187f00      cmp   w16, 0xfe
│     ╎│╎   0x00187f04      strb  w15, [x19, 0x89]
│     ╎│╎   0x00187f08      csel  w15, w16, w13, lo
│     ╎│╎   0x00187f0c      cmn   w16, 1
│     ╎│╎   0x00187f10      strb  w9, [x19, 0xb0]
│     ╎│╎   0x00187f14      csinv w9, w15, wzr, ne
│     ╎│╎   0x00187f18      cmp   w8, 0xfe
│     ╎│╎   0x00187f1c      strb  w10, [x19, 0xad]
│     ╎│╎   0x00187f20      csel  w10, w8, w13, lo
│     ╎│╎   0x00187f24      cmn   w8, 1
│     ╎│╎   0x00187f28      adrp  x0, 0x26f000
│     ╎│╎   0x00187f2c      strb  w9, [x19, 0x7d]
│     ╎│╎   0x00187f30      mov   w9, 2
│     ╎│╎   0x00187f34      csinv w8, w10, wzr, ne
│     ╎│╎   0x00187f38      add   x0, x0, aav.0x000004b0
│     ╎│╎   0x00187f3c      strb  w12, [x19, 0xae]
│     ╎│╎   0x00187f40      strb  w14, [x19, 0xaf]
│     ╎│╎   0x00187f44      strb  w11, [x19, 0xb1]
│     ╎│╎   0x00187f48      strb  w8, [x19, 0x82]
│     ╎│╎   0x00187f4c      strb  w9, [x19]
│     ╎│╎   0x00187f50      bl    fcn.0014a98c
│     ╎│╎   0x00187f54      stur  w0, [x19, 0x22]
│     ╎│╎   0x00187f58      adrp  x0, 0x268000
│     ╎│╎   0x00187f5c      add   x0, x0, 0x688                        ; int64_t arg1
│     ╎│╎   0x00187f60      bl    fcn.0014db58
│     ╎│╎   0x00187f64      cmp   x0, 0x20
│    ┌────< 0x00187f68      b.hi  0x187f8c
│    │╎│╎   0x00187f6c      adrp  x0, 0x5a6000
│    │╎│╎   0x00187f70      adrp  x2, 0x242000
│    │╎│╎   0x00187f74      adrp  x3, 0x268000
│    │╎│╎   0x00187f78      add   x0, x0, 0x988                        ; int64_t arg1
│    │╎│╎   0x00187f7c      add   x2, x2, 0xac1                        ; int64_t arg4
│    │╎│╎   0x00187f80      add   x3, x3, 0x688                        ; int64_t arg5
│    │╎│╎   0x00187f84      mov   w1, 0x20
│    │╎│╎   0x00187f88      bl    fcn.0014b120
│    └────> 0x00187f8c      bl    fcn.001805d8
│    ┌────< 0x00187f90      cbz   x0, 0x18804c
│    │╎│╎   0x00187f94      mov   x19, x0
│    │╎│╎   0x00187f98      sub   x0, var_10h + 0x30                   ; int64_t arg1
│    │╎│╎   0x00187f9c      add   x1, x19, 0xac                        ; int64_t arg2
│    │╎│╎   0x00187fa0      mov   w2, 0x11
│    │╎│╎   0x00187fa4      bl    fcn.0014daf4
│    │╎│╎   0x00187fa8      sub   x0, var_10h + 0x44                   ; int64_t arg1
│    │╎│╎   0x00187fac      add   x1, x19, 0xbc                        ; int64_t arg2
│    │╎│╎   0x00187fb0      mov   w2, 0x11
│    │╎│╎   0x00187fb4      bl    fcn.0014daf4
│    │╎│╎   0x00187fb8      add   x20, x19, 0x10
│    │╎│╎   0x00187fbc      mov   x0, x20
│    │╎│╎   0x00187fc0      bl    fcn.0014a98c
│    │╎│╎   0x00187fc4      adrp  x21, 0x5a6000
│    │╎│╎   0x00187fc8      add   x21, x21, 0x9b0
│    │╎│╎   0x00187fcc      str   w0, [x21]
│    │╎│╎   0x00187fd0      sub   x0, var_10h + 0x30
│    │╎│╎   0x00187fd4      bl    fcn.0014a98c
│    │╎│╎   0x00187fd8      str   w0, [x21, 4]
│    │╎│╎   0x00187fdc      sub   x0, var_10h + 0x44
│    │╎│╎   0x00187fe0      bl    fcn.0014a98c
│    │╎│╎   0x00187fe4      mov   w19, w0
│    │╎│╎   0x00187fe8      str   w0, [x21, 8]
│    │╎│╎   0x00187fec      mov   w1, 0x52                             ; 'R'
│    │╎│╎   0x00187ff0      mov   x0, x20                              ; int64_t arg1
│    │╎│╎   0x00187ff4      bl    fcn.0014da14
│   ┌─────< 0x00187ff8      cbnz  x0, 0x18800c
│   ││╎│╎   0x00187ffc      adrp  x8, 0x5a6000
│   ││╎│╎   0x00188000      ldr   w9, [x8, 0x9b0]                      ; [0x9b0:4]=0x696c6176
│   ││╎│╎   0x00188004      eor   w9, w9, 0x80000000
│   ││╎│╎   0x00188008      str   w9, [x8, 0x9b0]
│   └─────> 0x0018800c      sub   x0, var_10h + 0x30                   ; int64_t arg1
│    │╎│╎   0x00188010      mov   w1, 0x52                             ; 'R'
│    │╎│╎   0x00188014      bl    fcn.0014da14
│   ┌─────< 0x00188018      cbnz  x0, 0x18802c
│   ││╎│╎   0x0018801c      adrp  x8, 0x5a6000
│   ││╎│╎   0x00188020      ldr   w9, [x8, 0x9b4]                      ; [0x9b4:4]=0x75722064
│   ││╎│╎   0x00188024      eor   w9, w9, 0x80000000
│   ││╎│╎   0x00188028      str   w9, [x8, 0x9b4]
│   └─────> 0x0018802c      sub   x0, var_10h + 0x44                   ; int64_t arg1
│    │╎│╎   0x00188030      mov   w1, 0x52                             ; 'R'
│    │╎│╎   0x00188034      bl    fcn.0014da14
│   ┌─────< 0x00188038      cbnz  x0, 0x188060
│   ││╎│╎   0x0018803c      eor   w8, w19, 0x80000000
│   ││╎│╎   0x00188040      adrp  x9, 0x5a6000
│   ││╎│╎   0x00188044      str   w8, [x9, 0x9b8]
│  ┌──────< 0x00188048      b     0x188060
│  ││└────> 0x0018804c      adrp  x0, 0x258000
│  ││ ╎│╎   0x00188050      adrp  x1, 0x27d000
│  ││ ╎│╎   0x00188054      add   x0, x0, 0x8c7                        ; int64_t arg1
│  ││ ╎│╎   0x00188058      add   x1, x1, 0x49f                        ; int64_t arg2
│  ││ ╎│╎   0x0018805c      bl    fcn.0014c9f8
│  ││ ╎│╎   ; CODE XREF from fcn.00187cf0 @ 0x188048
│  └└─────> 0x00188060      adrp  x8, 0x56f000
│     ╎│╎   0x00188064      ldr   w8, [x8, 0x4dc]                      ; [0x4dc:4]=0xb900451f
│    ┌────< 0x00188068      cbz   w8, 0x188080
│    │╎│╎   0x0018806c      adrp  x8, 0x56f000
│    │╎│╎   0x00188070      ldr   w8, [x8, aav.0x00000900]             ; [0x900:4]=0x74656d65 ; "emetal"
│   ┌─────< 0x00188074      cbz   w8, 0x18809c
│   ││╎│╎   0x00188078      mov   w8, 1
│  ┌──────< 0x0018807c      b     0x1880b4
│  ││└────> 0x00188080      mov   w8, 2
│  ││┌────< 0x00188084      b     0x1880b4
│  │││╎└──> 0x00188088      bl    fcn.001b43cc
│  │││╎ ╎   0x0018808c      cmp   w0, 2
│  │││└───< 0x00188090      b.ne  0x187e64
│  │││  ╎   0x00188094      mov   w8, 1
│  │││  └─< 0x00188098      b     0x187e5c
│  │└─────> 0x0018809c      adrp  x0, 0x5a6000
│  │ │      0x001880a0      add   x0, x0, 0xe9                         ; int64_t arg1
│  │ │      0x001880a4      bl    fcn.00184328
│  │ │      0x001880a8      cmp   w0, 7
│  │ │      0x001880ac      mov   w8, 3
│  │ │      0x001880b0      csel  w8, w8, wzr, eq
│  │ │      ; CODE XREFS from fcn.00187cf0 @ 0x18807c, 0x188084
│  └─└────> 0x001880b4      adrp  x0, 0x55c000
│           0x001880b8      adrp  x1, 0x246000
│           0x001880bc      adrp  x9, 0x5a6000
│           0x001880c0      add   x0, x0, 0xd04                        ; int64_t arg1
│           0x001880c4      add   x1, x1, 0x53d                        ; int64_t arg2
│           0x001880c8      strb  w8, [x9, 0xa31]
│           0x001880cc      bl    fcn.001473d8
│           0x001880d0      adrp  x22, 0x5a6000
│       ┌─< 0x001880d4      cbz   x0, 0x1881a8
│       │   0x001880d8      mov   x19, x0
│       │   0x001880dc      adrp  x0, 0x246000
│       │   0x001880e0      add   x0, x0, 0x53d                        ; int64_t arg1
│       │   0x001880e4      bl    fcn.0014db58
│       │   0x001880e8      add   x20, x19, x0
│       │   0x001880ec      adrp  x19, 0x2ce000
│       │   0x001880f0      add   x19, x19, fcn.00000158               ; 0x158
│       │   0x001880f4      mov   x0, x19                              ; int64_t arg1
│       │   0x001880f8      bl    fcn.0014db58
│       │   0x001880fc      mov   x2, x0
│       │   0x00188100      mov   x0, x20                              ; int64_t arg1
│       │   0x00188104      mov   x1, x19                              ; int64_t arg2
│       │   0x00188108      bl    fcn.0014dbd8
│      ┌──< 0x0018810c      cbz   w0, 0x188184
│      ││   0x00188110      adrp  x21, 0x2ce000
│      ││   0x00188114      add   x21, x21, 0x16b
│      ││   0x00188118      mov   x0, x21                              ; int64_t arg1
│      ││   0x0018811c      bl    fcn.0014db58
│      ││   0x00188120      mov   x2, x0
│      ││   0x00188124      mov   x0, x20                              ; int64_t arg1
│      ││   0x00188128      mov   x1, x21                              ; int64_t arg2
│      ││   0x0018812c      bl    fcn.0014dbd8
│     ┌───< 0x00188130      cbz   w0, 0x18818c
│     │││   0x00188134      adrp  x21, 0x2ce000
│     │││   0x00188138      add   x21, x21, 0x17e
│     │││   0x0018813c      mov   x0, x21                              ; int64_t arg1
│     │││   0x00188140      bl    fcn.0014db58
│     │││   0x00188144      mov   x2, x0
│     │││   0x00188148      mov   x0, x20                              ; int64_t arg1
│     │││   0x0018814c      mov   x1, x21                              ; int64_t arg2
│     │││   0x00188150      bl    fcn.0014dbd8
│    ┌────< 0x00188154      cbz   w0, 0x188194
│    ││││   0x00188158      adrp  x21, 0x2ce000
│    ││││   0x0018815c      add   x21, x21, 0x191
│    ││││   0x00188160      mov   x0, x21                              ; int64_t arg1
│    ││││   0x00188164      bl    fcn.0014db58
│    ││││   0x00188168      mov   x2, x0
│    ││││   0x0018816c      mov   x0, x20                              ; int64_t arg1
│    ││││   0x00188170      mov   x1, x21                              ; int64_t arg2
│    ││││   0x00188174      bl    fcn.0014dbd8
│   ┌─────< 0x00188178      cbnz  w0, 0x1881a8
│   │││││   0x0018817c      mov   w8, 3
│  ┌──────< 0x00188180      b     0x188198
│  ││││└──> 0x00188184      mov   x8, xzr
│  ││││┌──< 0x00188188      b     0x188198
│  │││└───> 0x0018818c      mov   w8, 1
│  │││┌───< 0x00188190      b     0x188198
│  ││└────> 0x00188194      mov   w8, 2
│  ││ │││   ; CODE XREFS from fcn.00187cf0 @ 0x188180, 0x188188, 0x188190
│  └──└└──> 0x00188198      mov   w9, 0x13
│   │   │   0x0018819c      madd  x8, x8, x9, x19
│   │   │   0x001881a0      ldrb  w8, [x8, 0x12]                       ; [0x12:4]=0x1400
│   │   │   0x001881a4      strb  w8, [x22, 0xa06]
│   └───└─> 0x001881a8      adrp  x0, 0x55c000
│           0x001881ac      adrp  x1, 0x25a000
│           0x001881b0      add   x0, x0, 0xd04                        ; int64_t arg1
│           0x001881b4      add   x1, x1, 0xaf3                        ; int64_t arg2
│           0x001881b8      bl    fcn.001473d8
│       ┌─< 0x001881bc      cbz   x0, 0x1881cc
│       │   0x001881c0      ldrb  w8, [x22, 0xa06]                     ; [0xa06:4]=0x5355205d
│       │   0x001881c4      orr   w8, w8, 0x80
│       │   0x001881c8      strb  w8, [x22, 0xa06]
│       └─> 0x001881cc      adrp  x0, 0x55c000
│           0x001881d0      adrp  x1, 0x27b000
│           0x001881d4      add   x0, x0, 0xd04                        ; int64_t arg1
│           0x001881d8      add   x1, x1, 0x22c                        ; int64_t arg2
│           0x001881dc      bl    fcn.001473d8
│           0x001881e0      ldrb  w8, [x22, 0xa06]                     ; [0xa06:4]=0x5355205d
│           0x001881e4      cmp   x0, 0
│           0x001881e8      orr   w9, w8, 0x40
│           0x001881ec      csel  w8, w8, w9, eq
│           0x001881f0      mvn   w9, w8
│           0x001881f4      tst   w9, 0xff
│       ┌─< 0x001881f8      b.eq  0x188200
│      ┌──< 0x001881fc      cbz   x0, 0x188210
│      │└─> 0x00188200      mov   w9, 0xff
│      │    0x00188204      bics  wzr, w9, w8
│      │    0x00188208      csel  w8, wzr, w8, eq
│      │    0x0018820c      strb  w8, [x22, 0xa06]
│      └──> 0x00188210      adrp  x8, 0x5a0000
│           0x00188214      add   x8, x8, 0x680
│           0x00188218      ldp   w12, w9, [x8]
│           0x0018821c      adrp  x10, 0x5a6000
│           0x00188220      add   x10, x10, 0x9c4
│           0x00188224      adrp  x11, 0x5a6000
│           0x00188228      strb  w9, [x10, 0x41]
│           0x0018822c      ldp   w9, w13, [x8, 8]
│           0x00188230      strb  w12, [x10, 0x40]
│           0x00188234      ldp   w12, w8, [x8, 0x30]
│           0x00188238      ldr   w11, [x11, 0xa60]                    ; [0xa60:4]=0x6d69746e
│           0x0018823c      stp   w9, w13, [x10]
│           0x00188240      stp   w12, w8, [x10, 8]
│       ┌─< 0x00188244      cbz   w11, 0x1882a0
│       │   0x00188248      adrp  x19, 0x5a6000
│       │   0x0018824c      add   x19, x19, 0xa64
│       │   0x00188250      ldrb  w20, [x19], 1
│       │   0x00188254      adrp  x21, 0x5a6000
│       │   0x00188258      add   x21, x21, 0x9dc
│       │   0x0018825c      mov   w1, 0x20
│       │   0x00188260      mov   x0, x19                              ; int64_t arg1
│       │   0x00188264      strb  w20, [x21, 0x20]
│       │   0x00188268      bl    fcn.0014dcc4
│       │   0x0018826c      mov   x2, x0                               ; int64_t arg3
│       │   0x00188270      mov   x0, x21                              ; int64_t arg1
│       │   0x00188274      mov   x1, x19                              ; int64_t arg2
│       │   0x00188278      bl    fcn.0014d60c
│       │   0x0018827c      mov   w0, w20
│       │   0x00188280      mov   x1, x19                              ; int64_t arg2
│       │   0x00188284      bl    fcn.00179508
│      ┌──< 0x00188288      cbz   w0, 0x1882a0
│      ││   0x0018828c      adrp  x0, 0x27d000
│      ││   0x00188290      adrp  x1, str.EFUSE__Set_usb_disable_se1   ; 0x23b000
│      ││   0x00188294      add   x0, x0, 0x465                        ; int64_t arg1
│      ││   0x00188298      add   x1, x1, 0x151                        ; int64_t arg2
│      ││   0x0018829c      bl    fcn.0014c9f8
│      └└─> 0x001882a0      adrp  x0, 0x5a6000
│           0x001882a4      add   x0, x0, 0x980                        ; int64_t arg1
│           0x001882a8      mov   w8, 0x1000000
│           0x001882ac      sub   x3, var_10h + 0x30                   ; int64_t arg4
│           0x001882b0      mov   w1, 0xe0
│           0x001882b4      mov   w2, 1
│           0x001882b8      strh  wzr, [x0, 4]
│           0x001882bc      str   w8, [x0]
│           0x001882c0      bl    fcn.001b45d8
│       ┌─< 0x001882c4      cbz   w0, 0x1882e0
│       │   0x001882c8      adrp  x0, 0x24f000
│       │   0x001882cc      adrp  x1, 0x252000
│       │   0x001882d0      add   x0, x0, 0xa22                        ; int64_t arg1
│       │   0x001882d4      add   x1, x1, 0xf7                         ; int64_t arg2
│       │   0x001882d8      bl    fcn.0014c9f8
│      ┌──< 0x001882dc      b     0x1882f4
│      │└─> 0x001882e0      adrp  x0, 0x5a6000
│      │    0x001882e4      add   x0, x0, 0x960                        ; int64_t arg1
│      │    0x001882e8      sub   x1, var_10h + 0x30                   ; int64_t arg2
│      │    0x001882ec      mov   w2, 0x20
│      │    0x001882f0      bl    fcn.0014d60c
│      │    ; CODE XREF from fcn.00187cf0 @ 0x1882dc
│      └──> 0x001882f4      add   sp, sp, 0xac0
│           0x001882f8      ldp   x20, x19, [var_10h]
│           0x001882fc      ldp   x22, x21, [var_20h]
│           0x00188300      ldr   x28, [var_30h]                       ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x00188304      ldp   x29, x30, [sp], 0x40
│           0x00188308      autibsp
└           0x0018830c      ret
        ╎   ; XREFS: CALL 0x001142a8  CALL 0x00114440  CALL 0x00114764
        ╎   ; XREFS: CALL 0x00154f3c  CALL 0x001777dc  CODE 0x0017ab98
        ╎   ; XREFS: CALL 0x0017db00  CALL 0x00187d3c  CALL 0x00190f58
        ╎   ; XREFS: CALL 0x00191614  CALL 0x00192b54  CALL 0x00192be4
        ╎   ; XREFS: CALL 0x00192c98  CALL 0x00192d08  CALL 0x00192d7c
        ╎   ; XREFS: CALL 0x00192df4

================================================================================
