; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple riscv32 -o - %s | FileCheck %s
; This test has been minimized from GCC Torture Suite's regstack-1.c
; and checks that RISCVInstrInfo::storeRegToStackSlot works at the basic
; level.

@U = external local_unnamed_addr global fp128, align 16
@Y1 = external local_unnamed_addr global fp128, align 16
@X = external local_unnamed_addr global fp128, align 16
@Y = external local_unnamed_addr global fp128, align 16
@T = external local_unnamed_addr global fp128, align 16
@S = external local_unnamed_addr global fp128, align 16

define void @main() local_unnamed_addr nounwind {
; CHECK-LABEL: main:
; CHECK:       # %bb.0:
; CHECK-NEXT:    addi sp, sp, -688
; CHECK-NEXT:    sw ra, 684(sp) # 4-byte Folded Spill
; CHECK-NEXT:    sw s0, 680(sp) # 4-byte Folded Spill
; CHECK-NEXT:    sw s1, 676(sp) # 4-byte Folded Spill
; CHECK-NEXT:    sw s2, 672(sp) # 4-byte Folded Spill
; CHECK-NEXT:    sw s3, 668(sp) # 4-byte Folded Spill
; CHECK-NEXT:    sw s4, 664(sp) # 4-byte Folded Spill
; CHECK-NEXT:    sw s5, 660(sp) # 4-byte Folded Spill
; CHECK-NEXT:    sw s6, 656(sp) # 4-byte Folded Spill
; CHECK-NEXT:    sw s7, 652(sp) # 4-byte Folded Spill
; CHECK-NEXT:    sw s8, 648(sp) # 4-byte Folded Spill
; CHECK-NEXT:    sw s9, 644(sp) # 4-byte Folded Spill
; CHECK-NEXT:    sw s10, 640(sp) # 4-byte Folded Spill
; CHECK-NEXT:    sw s11, 636(sp) # 4-byte Folded Spill
; CHECK-NEXT:    lui a0, %hi(U)
; CHECK-NEXT:    lw s6, %lo(U)(a0)
; CHECK-NEXT:    lw s7, %lo(U+4)(a0)
; CHECK-NEXT:    lw s8, %lo(U+8)(a0)
; CHECK-NEXT:    lw s0, %lo(U+12)(a0)
; CHECK-NEXT:    sw zero, 612(sp)
; CHECK-NEXT:    sw zero, 608(sp)
; CHECK-NEXT:    sw zero, 604(sp)
; CHECK-NEXT:    sw zero, 600(sp)
; CHECK-NEXT:    sw s0, 596(sp)
; CHECK-NEXT:    sw s8, 592(sp)
; CHECK-NEXT:    sw s7, 588(sp)
; CHECK-NEXT:    addi a0, sp, 616
; CHECK-NEXT:    addi a1, sp, 600
; CHECK-NEXT:    addi a2, sp, 584
; CHECK-NEXT:    sw s6, 584(sp)
; CHECK-NEXT:    call __subtf3
; CHECK-NEXT:    lw s1, 616(sp)
; CHECK-NEXT:    lw s2, 620(sp)
; CHECK-NEXT:    lw s3, 624(sp)
; CHECK-NEXT:    lw s4, 628(sp)
; CHECK-NEXT:    sw s0, 548(sp)
; CHECK-NEXT:    sw s8, 544(sp)
; CHECK-NEXT:    sw s7, 540(sp)
; CHECK-NEXT:    sw s6, 536(sp)
; CHECK-NEXT:    sw s4, 564(sp)
; CHECK-NEXT:    sw s3, 560(sp)
; CHECK-NEXT:    sw s2, 556(sp)
; CHECK-NEXT:    addi a0, sp, 568
; CHECK-NEXT:    addi a1, sp, 552
; CHECK-NEXT:    addi a2, sp, 536
; CHECK-NEXT:    sw s1, 552(sp)
; CHECK-NEXT:    call __subtf3
; CHECK-NEXT:    lw a0, 568(sp)
; CHECK-NEXT:    sw a0, 40(sp) # 4-byte Folded Spill
; CHECK-NEXT:    lw a0, 572(sp)
; CHECK-NEXT:    sw a0, 28(sp) # 4-byte Folded Spill
; CHECK-NEXT:    lw a0, 576(sp)
; CHECK-NEXT:    sw a0, 20(sp) # 4-byte Folded Spill
; CHECK-NEXT:    lw a0, 580(sp)
; CHECK-NEXT:    sw a0, 48(sp) # 4-byte Folded Spill
; CHECK-NEXT:    sw zero, 500(sp)
; CHECK-NEXT:    sw zero, 496(sp)
; CHECK-NEXT:    sw zero, 492(sp)
; CHECK-NEXT:    sw zero, 488(sp)
; CHECK-NEXT:    sw s0, 516(sp)
; CHECK-NEXT:    sw s8, 512(sp)
; CHECK-NEXT:    sw s7, 508(sp)
; CHECK-NEXT:    addi a0, sp, 520
; CHECK-NEXT:    addi a1, sp, 504
; CHECK-NEXT:    addi a2, sp, 488
; CHECK-NEXT:    sw s6, 504(sp)
; CHECK-NEXT:    call __addtf3
; CHECK-NEXT:    lw s9, 520(sp)
; CHECK-NEXT:    lw s11, 524(sp)
; CHECK-NEXT:    lw s5, 528(sp)
; CHECK-NEXT:    lw s10, 532(sp)
; CHECK-NEXT:    sw s10, 16(sp) # 4-byte Folded Spill
; CHECK-NEXT:    lui a0, %hi(Y1)
; CHECK-NEXT:    lw a1, %lo(Y1)(a0)
; CHECK-NEXT:    sw a1, 52(sp) # 4-byte Folded Spill
; CHECK-NEXT:    lw a2, %lo(Y1+4)(a0)
; CHECK-NEXT:    sw a2, 12(sp) # 4-byte Folded Spill
; CHECK-NEXT:    lw a3, %lo(Y1+8)(a0)
; CHECK-NEXT:    sw a3, 8(sp) # 4-byte Folded Spill
; CHECK-NEXT:    lw a0, %lo(Y1+12)(a0)
; CHECK-NEXT:    sw a0, 4(sp) # 4-byte Folded Spill
; CHECK-NEXT:    sw a0, 308(sp)
; CHECK-NEXT:    sw a3, 304(sp)
; CHECK-NEXT:    sw a2, 300(sp)
; CHECK-NEXT:    sw a1, 296(sp)
; CHECK-NEXT:    sw s4, 324(sp)
; CHECK-NEXT:    sw s3, 320(sp)
; CHECK-NEXT:    sw s2, 316(sp)
; CHECK-NEXT:    addi a0, sp, 328
; CHECK-NEXT:    addi a1, sp, 312
; CHECK-NEXT:    addi a2, sp, 296
; CHECK-NEXT:    sw s1, 312(sp)
; CHECK-NEXT:    call __multf3
; CHECK-NEXT:    lw a0, 328(sp)
; CHECK-NEXT:    sw a0, 44(sp) # 4-byte Folded Spill
; CHECK-NEXT:    lw a0, 332(sp)
; CHECK-NEXT:    sw a0, 36(sp) # 4-byte Folded Spill
; CHECK-NEXT:    lw a0, 336(sp)
; CHECK-NEXT:    sw a0, 32(sp) # 4-byte Folded Spill
; CHECK-NEXT:    lw a0, 340(sp)
; CHECK-NEXT:    sw a0, 24(sp) # 4-byte Folded Spill
; CHECK-NEXT:    sw s0, 468(sp)
; CHECK-NEXT:    sw s8, 464(sp)
; CHECK-NEXT:    sw s7, 460(sp)
; CHECK-NEXT:    sw s6, 456(sp)
; CHECK-NEXT:    sw s10, 452(sp)
; CHECK-NEXT:    sw s5, 448(sp)
; CHECK-NEXT:    sw s11, 444(sp)
; CHECK-NEXT:    addi a0, sp, 472
; CHECK-NEXT:    addi a1, sp, 456
; CHECK-NEXT:    addi a2, sp, 440
; CHECK-NEXT:    sw s9, 440(sp)
; CHECK-NEXT:    call __addtf3
; CHECK-NEXT:    lw a3, 472(sp)
; CHECK-NEXT:    lw a0, 476(sp)
; CHECK-NEXT:    lw a1, 480(sp)
; CHECK-NEXT:    lw a2, 484(sp)
; CHECK-NEXT:    sw zero, 420(sp)
; CHECK-NEXT:    sw zero, 416(sp)
; CHECK-NEXT:    sw zero, 412(sp)
; CHECK-NEXT:    sw zero, 408(sp)
; CHECK-NEXT:    sw a2, 404(sp)
; CHECK-NEXT:    sw a1, 400(sp)
; CHECK-NEXT:    sw a0, 396(sp)
; CHECK-NEXT:    addi a0, sp, 424
; CHECK-NEXT:    addi a1, sp, 408
; CHECK-NEXT:    addi a2, sp, 392
; CHECK-NEXT:    sw a3, 392(sp)
; CHECK-NEXT:    call __subtf3
; CHECK-NEXT:    lw a0, 432(sp)
; CHECK-NEXT:    lw a1, 436(sp)
; CHECK-NEXT:    lw a2, 424(sp)
; CHECK-NEXT:    lw a3, 428(sp)
; CHECK-NEXT:    lui a4, %hi(X)
; CHECK-NEXT:    sw a1, %lo(X+12)(a4)
; CHECK-NEXT:    sw a0, %lo(X+8)(a4)
; CHECK-NEXT:    sw a3, %lo(X+4)(a4)
; CHECK-NEXT:    sw a2, %lo(X)(a4)
; CHECK-NEXT:    lw s8, 4(sp) # 4-byte Folded Reload
; CHECK-NEXT:    sw s8, 212(sp)
; CHECK-NEXT:    lw s4, 8(sp) # 4-byte Folded Reload
; CHECK-NEXT:    sw s4, 208(sp)
; CHECK-NEXT:    lw s3, 12(sp) # 4-byte Folded Reload
; CHECK-NEXT:    sw s3, 204(sp)
; CHECK-NEXT:    lw a0, 52(sp) # 4-byte Folded Reload
; CHECK-NEXT:    sw a0, 200(sp)
; CHECK-NEXT:    lw a0, 48(sp) # 4-byte Folded Reload
; CHECK-NEXT:    sw a0, 228(sp)
; CHECK-NEXT:    lw s10, 20(sp) # 4-byte Folded Reload
; CHECK-NEXT:    sw s10, 224(sp)
; CHECK-NEXT:    lw s2, 28(sp) # 4-byte Folded Reload
; CHECK-NEXT:    sw s2, 220(sp)
; CHECK-NEXT:    addi a0, sp, 232
; CHECK-NEXT:    addi a1, sp, 216
; CHECK-NEXT:    addi a2, sp, 200
; CHECK-NEXT:    lw s0, 40(sp) # 4-byte Folded Reload
; CHECK-NEXT:    sw s0, 216(sp)
; CHECK-NEXT:    call __multf3
; CHECK-NEXT:    lw s1, 232(sp)
; CHECK-NEXT:    lw a0, 236(sp)
; CHECK-NEXT:    sw a0, 0(sp) # 4-byte Folded Spill
; CHECK-NEXT:    lw s6, 240(sp)
; CHECK-NEXT:    lw s7, 244(sp)
; CHECK-NEXT:    sw zero, 356(sp)
; CHECK-NEXT:    sw zero, 352(sp)
; CHECK-NEXT:    sw zero, 348(sp)
; CHECK-NEXT:    sw zero, 344(sp)
; CHECK-NEXT:    lw a0, 16(sp) # 4-byte Folded Reload
; CHECK-NEXT:    sw a0, 372(sp)
; CHECK-NEXT:    sw s5, 368(sp)
; CHECK-NEXT:    sw s11, 364(sp)
; CHECK-NEXT:    addi a0, sp, 376
; CHECK-NEXT:    addi a1, sp, 360
; CHECK-NEXT:    addi a2, sp, 344
; CHECK-NEXT:    sw s9, 360(sp)
; CHECK-NEXT:    call __multf3
; CHECK-NEXT:    lw a0, 384(sp)
; CHECK-NEXT:    lw a1, 388(sp)
; CHECK-NEXT:    lw a2, 376(sp)
; CHECK-NEXT:    lw a3, 380(sp)
; CHECK-NEXT:    lui a4, %hi(S)
; CHECK-NEXT:    sw a1, %lo(S+12)(a4)
; CHECK-NEXT:    sw a0, %lo(S+8)(a4)
; CHECK-NEXT:    sw a3, %lo(S+4)(a4)
; CHECK-NEXT:    sw a2, %lo(S)(a4)
; CHECK-NEXT:    lw a0, 48(sp) # 4-byte Folded Reload
; CHECK-NEXT:    sw a0, 260(sp)
; CHECK-NEXT:    sw s10, 256(sp)
; CHECK-NEXT:    sw s2, 252(sp)
; CHECK-NEXT:    sw s0, 248(sp)
; CHECK-NEXT:    lw a0, 24(sp) # 4-byte Folded Reload
; CHECK-NEXT:    sw a0, 276(sp)
; CHECK-NEXT:    lw a0, 32(sp) # 4-byte Folded Reload
; CHECK-NEXT:    sw a0, 272(sp)
; CHECK-NEXT:    lw a0, 36(sp) # 4-byte Folded Reload
; CHECK-NEXT:    sw a0, 268(sp)
; CHECK-NEXT:    addi a0, sp, 280
; CHECK-NEXT:    addi a1, sp, 264
; CHECK-NEXT:    addi a2, sp, 248
; CHECK-NEXT:    lw a3, 44(sp) # 4-byte Folded Reload
; CHECK-NEXT:    sw a3, 264(sp)
; CHECK-NEXT:    call __subtf3
; CHECK-NEXT:    lw a0, 288(sp)
; CHECK-NEXT:    lw a1, 292(sp)
; CHECK-NEXT:    lw a2, 280(sp)
; CHECK-NEXT:    lw a3, 284(sp)
; CHECK-NEXT:    lui a4, %hi(T)
; CHECK-NEXT:    sw a1, %lo(T+12)(a4)
; CHECK-NEXT:    sw a0, %lo(T+8)(a4)
; CHECK-NEXT:    sw a3, %lo(T+4)(a4)
; CHECK-NEXT:    sw a2, %lo(T)(a4)
; CHECK-NEXT:    sw zero, 164(sp)
; CHECK-NEXT:    sw zero, 160(sp)
; CHECK-NEXT:    sw zero, 156(sp)
; CHECK-NEXT:    sw zero, 152(sp)
; CHECK-NEXT:    sw s7, 180(sp)
; CHECK-NEXT:    sw s6, 176(sp)
; CHECK-NEXT:    lw a0, 0(sp) # 4-byte Folded Reload
; CHECK-NEXT:    sw a0, 172(sp)
; CHECK-NEXT:    addi a0, sp, 184
; CHECK-NEXT:    addi a1, sp, 168
; CHECK-NEXT:    addi a2, sp, 152
; CHECK-NEXT:    sw s1, 168(sp)
; CHECK-NEXT:    call __addtf3
; CHECK-NEXT:    lw a0, 192(sp)
; CHECK-NEXT:    lw a1, 196(sp)
; CHECK-NEXT:    lw a2, 184(sp)
; CHECK-NEXT:    lw a3, 188(sp)
; CHECK-NEXT:    lui a4, %hi(Y)
; CHECK-NEXT:    sw a1, %lo(Y+12)(a4)
; CHECK-NEXT:    sw a0, %lo(Y+8)(a4)
; CHECK-NEXT:    sw a3, %lo(Y+4)(a4)
; CHECK-NEXT:    sw a2, %lo(Y)(a4)
; CHECK-NEXT:    sw zero, 116(sp)
; CHECK-NEXT:    sw zero, 112(sp)
; CHECK-NEXT:    sw zero, 108(sp)
; CHECK-NEXT:    sw zero, 104(sp)
; CHECK-NEXT:    sw s8, 132(sp)
; CHECK-NEXT:    sw s4, 128(sp)
; CHECK-NEXT:    sw s3, 124(sp)
; CHECK-NEXT:    addi a0, sp, 136
; CHECK-NEXT:    addi a1, sp, 120
; CHECK-NEXT:    addi a2, sp, 104
; CHECK-NEXT:    lw a3, 52(sp) # 4-byte Folded Reload
; CHECK-NEXT:    sw a3, 120(sp)
; CHECK-NEXT:    call __multf3
; CHECK-NEXT:    lw a3, 136(sp)
; CHECK-NEXT:    lw a0, 140(sp)
; CHECK-NEXT:    lw a1, 144(sp)
; CHECK-NEXT:    lw a2, 148(sp)
; CHECK-NEXT:    lui a4, 786400
; CHECK-NEXT:    sw a4, 68(sp)
; CHECK-NEXT:    sw zero, 64(sp)
; CHECK-NEXT:    sw zero, 60(sp)
; CHECK-NEXT:    sw zero, 56(sp)
; CHECK-NEXT:    sw a2, 84(sp)
; CHECK-NEXT:    sw a1, 80(sp)
; CHECK-NEXT:    sw a0, 76(sp)
; CHECK-NEXT:    addi a0, sp, 88
; CHECK-NEXT:    addi a1, sp, 72
; CHECK-NEXT:    addi a2, sp, 56
; CHECK-NEXT:    sw a3, 72(sp)
; CHECK-NEXT:    call __addtf3
; CHECK-NEXT:    lw a0, 96(sp)
; CHECK-NEXT:    lw a1, 100(sp)
; CHECK-NEXT:    lw a2, 88(sp)
; CHECK-NEXT:    lw a3, 92(sp)
; CHECK-NEXT:    lui a4, %hi(Y1)
; CHECK-NEXT:    sw a0, %lo(Y1+8)(a4)
; CHECK-NEXT:    sw a1, %lo(Y1+12)(a4)
; CHECK-NEXT:    sw a2, %lo(Y1)(a4)
; CHECK-NEXT:    sw a3, %lo(Y1+4)(a4)
; CHECK-NEXT:    lw ra, 684(sp) # 4-byte Folded Reload
; CHECK-NEXT:    lw s0, 680(sp) # 4-byte Folded Reload
; CHECK-NEXT:    lw s1, 676(sp) # 4-byte Folded Reload
; CHECK-NEXT:    lw s2, 672(sp) # 4-byte Folded Reload
; CHECK-NEXT:    lw s3, 668(sp) # 4-byte Folded Reload
; CHECK-NEXT:    lw s4, 664(sp) # 4-byte Folded Reload
; CHECK-NEXT:    lw s5, 660(sp) # 4-byte Folded Reload
; CHECK-NEXT:    lw s6, 656(sp) # 4-byte Folded Reload
; CHECK-NEXT:    lw s7, 652(sp) # 4-byte Folded Reload
; CHECK-NEXT:    lw s8, 648(sp) # 4-byte Folded Reload
; CHECK-NEXT:    lw s9, 644(sp) # 4-byte Folded Reload
; CHECK-NEXT:    lw s10, 640(sp) # 4-byte Folded Reload
; CHECK-NEXT:    lw s11, 636(sp) # 4-byte Folded Reload
; CHECK-NEXT:    addi sp, sp, 688
; CHECK-NEXT:    ret
  %1 = load fp128, ptr @U, align 16
  %2 = fsub fp128 0xL00000000000000000000000000000000, %1
  %3 = fsub fp128 %2, %1
  %4 = fadd fp128 %1, 0xL00000000000000000000000000000000
  %5 = load fp128, ptr @Y1, align 16
  %6 = fmul fp128 %2, %5
  %7 = fadd fp128 %1, %4
  %8 = fsub fp128 0xL00000000000000000000000000000000, %7
  store fp128 %8, ptr @X, align 16
  %9 = fmul fp128 %3, %5
  %10 = fmul fp128 0xL00000000000000000000000000000000, %4
  store fp128 %10, ptr @S, align 16
  %11 = fsub fp128 %6, %3
  store fp128 %11, ptr @T, align 16
  %12 = fadd fp128 0xL00000000000000000000000000000000, %9
  store fp128 %12, ptr @Y, align 16
  %13 = fmul fp128 0xL00000000000000000000000000000000, %5
  %14 = fadd fp128 %13, 0xL0000000000000000BFFE000000000000
  store fp128 %14, ptr @Y1, align 16
  ret void
}
