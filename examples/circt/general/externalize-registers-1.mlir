#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/externalize-registers-1.mlir":2:76)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/externalize-registers-1.mlir":8:84)
#loc2 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/externalize-registers-1.mlir":15:79)
#loc3 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/externalize-registers-1.mlir":22:86)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, input in0 : i32, input in1 : i32, output out : i32>, parameters = [], result_locs = [#loc], sym_name = "one_firreg"}> ({
  ^bb0(%arg9: !seq.clock, %arg10: i32, %arg11: i32):
    %8 = "comb.add"(%arg10, %arg11) : (i32, i32) -> i32
    %9 = "seq.firreg"(%8, %arg9) <{name = "single_reg", preset = 0 : i32}> : (i32, !seq.clock) -> i32
    "hw.output"(%9) : (i32) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, input in0 : i32, input in1 : i32, output out : i32>, parameters = [], result_locs = [#loc1], sym_name = "compreg_and_firreg"}> ({
  ^bb0(%arg6: !seq.clock, %arg7: i32, %arg8: i32):
    %5 = "comb.add"(%arg7, %arg8) : (i32, i32) -> i32
    %6 = "seq.compreg"(%5, %arg6) <{name = "", operandSegmentSizes = array<i32: 1, 1, 0, 0, 0>}> : (i32, !seq.clock) -> i32
    %7 = "seq.firreg"(%6, %arg6) <{name = ""}> : (i32, !seq.clock) -> i32
    "hw.output"(%7) : (i32) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, input in0 : i32, input in1 : i32, output out : i32>, parameters = [], result_locs = [#loc2], sym_name = "named_firregs"}> ({
  ^bb0(%arg3: !seq.clock, %arg4: i32, %arg5: i32):
    %2 = "comb.add"(%arg4, %arg5) : (i32, i32) -> i32
    %3 = "seq.firreg"(%2, %arg3) <{name = "firstreg"}> : (i32, !seq.clock) -> i32
    %4 = "seq.firreg"(%3, %arg3) <{name = "secondreg"}> : (i32, !seq.clock) -> i32
    "hw.output"(%4) : (i32) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, input rst : i1, input in : i32, output out : i32>, parameters = [], result_locs = [#loc3], sym_name = "firreg_with_sync_reset"}> ({
  ^bb0(%arg0: !seq.clock, %arg1: i1, %arg2: i32):
    %0 = "hw.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "seq.firreg"(%arg2, %arg0, %arg1, %0) <{name = ""}> : (i32, !seq.clock, i1, i32) -> i32
    "hw.output"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

