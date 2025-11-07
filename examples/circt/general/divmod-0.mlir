#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/divmod-0.mlir":3:50)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/divmod-0.mlir":3:67)
#loc2 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/divmod-0.mlir":13:50)
#loc3 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/divmod-0.mlir":13:67)
#loc4 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/divmod-0.mlir":21:50)
#loc5 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/divmod-0.mlir":21:67)
#loc6 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/divmod-0.mlir":31:74)
#loc7 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/divmod-0.mlir":31:92)
#loc8 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/divmod-0.mlir":31:110)
#loc9 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/divmod-0.mlir":31:128)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input lhs : i3, input rhs : i3, output out_div : i3, output out_mod : i3>, parameters = [], result_locs = [#loc, #loc1], sym_name = "divmodu"}> ({
  ^bb0(%arg6: i3, %arg7: i3):
    %14 = "hw.constant"() <{value = 0 : i3}> : () -> i3
    %15 = "comb.icmp"(%arg7, %14) <{predicate = 1 : i64}> : (i3, i3) -> i1
    "verif.assume"(%15) : (i1) -> ()
    %16 = "comb.divu"(%arg6, %arg7) : (i3, i3) -> i3
    %17 = "comb.modu"(%arg6, %arg7) : (i3, i3) -> i3
    "hw.output"(%16, %17) : (i3, i3) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input lhs : i8, output out_div : i8, output out_mod : i8>, parameters = [], result_locs = [#loc2, #loc3], sym_name = "divmodu_power_of_two"}> ({
  ^bb0(%arg5: i8):
    %11 = "hw.constant"() <{value = 16 : i8}> : () -> i8
    %12 = "comb.divu"(%arg5, %11) : (i8, i8) -> i8
    %13 = "comb.modu"(%arg5, %11) : (i8, i8) -> i8
    "hw.output"(%12, %13) : (i8, i8) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input lhs : i3, input rhs : i3, output out_div : i3, output out_mod : i3>, parameters = [], result_locs = [#loc4, #loc5], sym_name = "divmods"}> ({
  ^bb0(%arg3: i3, %arg4: i3):
    %7 = "hw.constant"() <{value = 0 : i3}> : () -> i3
    %8 = "comb.icmp"(%arg4, %7) <{predicate = 1 : i64}> : (i3, i3) -> i1
    "verif.assume"(%8) : (i1) -> ()
    %9 = "comb.divs"(%arg3, %arg4) : (i3, i3) -> i3
    %10 = "comb.mods"(%arg3, %arg4) : (i3, i3) -> i3
    "hw.output"(%9, %10) : (i3, i3) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input in : i1, input lhs : i1, input rhs : i1, output out_divu : i4, output out_modu : i4, output out_divs : i4, output out_mods : i4>, parameters = [], result_locs = [#loc6, #loc7, #loc8, #loc9], sym_name = "divmod_mix_constant"}> ({
  ^bb0(%arg0: i1, %arg1: i1, %arg2: i1):
    %0 = "hw.constant"() <{value = -2 : i2}> : () -> i2
    %1 = "comb.concat"(%arg0, %0, %arg1) : (i1, i2, i1) -> i4
    %2 = "comb.concat"(%0, %arg2, %arg0) : (i2, i1, i1) -> i4
    %3 = "comb.divu"(%1, %2) : (i4, i4) -> i4
    %4 = "comb.modu"(%1, %2) : (i4, i4) -> i4
    %5 = "comb.divs"(%1, %2) : (i4, i4) -> i4
    %6 = "comb.mods"(%1, %2) : (i4, i4) -> i4
    "hw.output"(%3, %4, %5, %6) : (i4, i4, i4, i4) -> ()
  }) : () -> ()
}) : () -> ()

