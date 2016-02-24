00000000  0000080e  LL    0x8 (D 8) // a = *(sp+8), a = port
00000004  00001026  LBL   0x10 (D 16) // b = *(sp+16), b = val
00000008  0000009a  BOUT // output
0000000c  00000002  LEV   0x0 (D 0) // pc = *sp, sp += 0 + 8
00000010  fffff801  ENT   0xfffffff8 (D -8) // int i, sp += -8, 分配空间
00000014  00000123  LI    0x1 (D 1) // a = 1
00000018  00000045  SG    0x0 (D 0) // ret = a
0000001c  0000200e  LL    0x20 (D 32) // a = n
00000020  00000440  SL    0x4 (D 4) // *(sp+4) = a, i = a
00000024  00000003  JMP   <fwd> // pc += <fwd>, jump
00000028  0000180e  LL    0x18 (D 24) // a = *s
0000002c  ffffff57  SUBI  0xffffffff (D -1) // a -= -1
00000030  00001840  SL    0x18 (D 24) //*(sp+24) = a
00000034  ffffff1f  LXC   0xffffffff (D -1) // a = content(vir2phy(-1))
00000038  0000009d  PSHA // sp -= -8, *sp = a
0000003c  0000180e  LL    0x18 (D 24) // a = *s
00000040  0000009d  PSHA // sp -= -8, *sp = a
00000044  ffffb805  JSR   0xffffffb8 (TO 0x0) // save current pc, 
                                              // *sp=pc, sp -= 8; 
                                              // jump to 0x0.
                                              // call function out
00000048  00001001  ENT   0x10 (D 16) // sp += 16
0000004c  0000040e  LL    0x4 (D 4) // a = i
00000050  00000157  SUBI  0x1 (D 1) // a -= 1
00000054  00000440  SL    0x4 (D 4) // *(sp+4) = a, i = a
00000058  00000154  ADDI  0x1 (D 1) // a += 1
0000005c  00000086  BNZ   <fwd> // if a != 0, jump to <fwd> [ return i(when i = 0)]
00000060  0000040e  LL    0x4 (D 4) // a = i
00000064  00000802  LEV   0x8 (D 8) // pc= *sp, sp + = 8+8
00000068  00000802  LEV   0x8 (D 8)
0000006c  00000a9e  PSHI  0xa (D 10) // sp -= 8, *sp = 10
00000070  00000008  LEAG  0x0 (D 0) // a = pc
00000074  0000009d  PSHA // sp -= -8, *sp = a
00000078  0000019e  PSHI  0x1 (D 1) // sp -= 8, *sp = 1
0000007c  ffff9005  JSR   0xffffff90 (TO 0x10) // save current pc
                                                // *sp = pc, sp -= 8
                                                // jump to 0x10
                                                // call write function
00000080  00001801  ENT   0x18 (D 24) // sp += 24
00000084  00000045  SG    0x0 (D 0) // *(pc+0) = a
                                    // ret = 0
00000088  00000000  HALT
0000008c  00000002  LEV   0x0 (D 0) // pc= *sp, sp + = 0+8,
