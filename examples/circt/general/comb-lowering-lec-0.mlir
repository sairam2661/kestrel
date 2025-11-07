#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-lec-0.mlir":3:35)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-lec-0.mlir":3:50)
#loc2 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-lec-0.mlir":3:65)
#loc3 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-lec-0.mlir":3:80)
#loc4 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-lec-0.mlir":12:37)
#loc5 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-lec-0.mlir":17:63)
#loc6 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-lec-0.mlir":22:46)
#loc7 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-lec-0.mlir":27:62)
#loc8 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-lec-0.mlir":32:53)
#loc9 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-lec-0.mlir":32:69)
#loc10 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-lec-0.mlir":38:64)
#loc11 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-lec-0.mlir":38:81)
#loc12 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-lec-0.mlir":38:98)
#loc13 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-lec-0.mlir":38:115)
#loc14 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-lec-0.mlir":46:62)
#loc15 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-lec-0.mlir":46:79)
#loc16 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-lec-0.mlir":46:96)
#loc17 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-lec-0.mlir":46:113)
#loc18 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-lec-0.mlir":54:49)
#loc19 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-lec-0.mlir":54:66)
#loc20 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/comb-lowering-lec-0.mlir":54:83)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input arg0 : i32, input arg1 : i32, input arg2 : i32, input arg3 : i32, input cond : i1, output out0 : i32, output out1 : i32, output out2 : i32, output out3 : i32>, parameters = [], result_locs = [#loc, #loc1, #loc2, #loc3], sym_name = "bit_logical"}> ({
  ^bb0(%arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: i1):
    %17 = "comb.or"(%arg17, %arg18, %arg19, %arg20) : (i32, i32, i32, i32) -> i32
    %18 = "comb.and"(%arg17, %arg18, %arg19, %arg20) : (i32, i32, i32, i32) -> i32
    %19 = "comb.xor"(%arg17, %arg18, %arg19, %arg20) : (i32, i32, i32, i32) -> i32
    %20 = "comb.mux"(%arg21, %arg17, %arg18) : (i1, i32, i32) -> i32
    "hw.output"(%17, %18, %19, %20) : (i32, i32, i32, i32) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input arg0 : i4, output out : i1>, parameters = [], result_locs = [#loc4], sym_name = "parity"}> ({
  ^bb0(%arg16: i4):
    %16 = "comb.parity"(%arg16) : (i4) -> i1
    "hw.output"(%16) : (i1) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input arg0 : i4, input arg1 : i4, input arg2 : i4, output add : i4>, parameters = [], result_locs = [#loc5], sym_name = "add"}> ({
  ^bb0(%arg13: i4, %arg14: i4, %arg15: i4):
    %15 = "comb.add"(%arg13, %arg14, %arg15) : (i4, i4, i4) -> i4
    "hw.output"(%15) : (i4) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input lhs : i4, input rhs : i4, output out : i4>, parameters = [], result_locs = [#loc6], sym_name = "sub"}> ({
  ^bb0(%arg11: i4, %arg12: i4):
    %14 = "comb.sub"(%arg11, %arg12) : (i4, i4) -> i4
    "hw.output"(%14) : (i4) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input arg0 : i3, input arg1 : i3, input arg2 : i3, output add : i3>, parameters = [], result_locs = [#loc7], sym_name = "mul"}> ({
  ^bb0(%arg8: i3, %arg9: i3, %arg10: i3):
    %13 = "comb.mul"(%arg8, %arg9, %arg10) : (i3, i3, i3) -> i3
    "hw.output"(%13) : (i3) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input lhs : i3, input rhs : i3, output out_eq : i1, output out_ne : i1>, parameters = [], result_locs = [#loc8, #loc9], sym_name = "icmp_eq_ne"}> ({
  ^bb0(%arg6: i3, %arg7: i3):
    %11 = "comb.icmp"(%arg6, %arg7) <{predicate = 0 : i64}> : (i3, i3) -> i1
    %12 = "comb.icmp"(%arg6, %arg7) <{predicate = 1 : i64}> : (i3, i3) -> i1
    "hw.output"(%11, %12) : (i1, i1) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input lhs : i3, input rhs : i3, output out_ugt : i1, output out_uge : i1, output out_ult : i1, output out_ule : i1>, parameters = [], result_locs = [#loc10, #loc11, #loc12, #loc13], sym_name = "icmp_unsigned_compare"}> ({
  ^bb0(%arg4: i3, %arg5: i3):
    %7 = "comb.icmp"(%arg4, %arg5) <{predicate = 8 : i64}> : (i3, i3) -> i1
    %8 = "comb.icmp"(%arg4, %arg5) <{predicate = 9 : i64}> : (i3, i3) -> i1
    %9 = "comb.icmp"(%arg4, %arg5) <{predicate = 6 : i64}> : (i3, i3) -> i1
    %10 = "comb.icmp"(%arg4, %arg5) <{predicate = 7 : i64}> : (i3, i3) -> i1
    "hw.output"(%7, %8, %9, %10) : (i1, i1, i1, i1) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input lhs : i3, input rhs : i3, output out_sgt : i1, output out_sge : i1, output out_slt : i1, output out_sle : i1>, parameters = [], result_locs = [#loc14, #loc15, #loc16, #loc17], sym_name = "icmp_signed_compare"}> ({
  ^bb0(%arg2: i3, %arg3: i3):
    %3 = "comb.icmp"(%arg2, %arg3) <{predicate = 4 : i64}> : (i3, i3) -> i1
    %4 = "comb.icmp"(%arg2, %arg3) <{predicate = 5 : i64}> : (i3, i3) -> i1
    %5 = "comb.icmp"(%arg2, %arg3) <{predicate = 2 : i64}> : (i3, i3) -> i1
    %6 = "comb.icmp"(%arg2, %arg3) <{predicate = 3 : i64}> : (i3, i3) -> i1
    "hw.output"(%3, %4, %5, %6) : (i1, i1, i1, i1) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input lhs : i5, input rhs : i5, output out_shl : i5, output out_shr : i5, output out_shrs : i5>, parameters = [], result_locs = [#loc18, #loc19, #loc20], sym_name = "shift5"}> ({
  ^bb0(%arg0: i5, %arg1: i5):
    %0 = "comb.shl"(%arg0, %arg1) : (i5, i5) -> i5
    %1 = "comb.shru"(%arg0, %arg1) : (i5, i5) -> i5
    %2 = "comb.shrs"(%arg0, %arg1) : (i5, i5) -> i5
    "hw.output"(%0, %1, %2) : (i5, i5, i5) -> ()
  }) : () -> ()
}) : () -> ()

