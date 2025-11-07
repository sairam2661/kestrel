#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/externalize-registers-0.mlir":2:49)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/externalize-registers-0.mlir":7:73)
#loc2 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/externalize-registers-0.mlir":17:73)
#loc3 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/externalize-registers-0.mlir":24:76)
#loc4 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/externalize-registers-0.mlir":31:76)
#loc5 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/externalize-registers-0.mlir":36:83)
#loc6 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/externalize-registers-0.mlir":54:78)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input in0 : i32, input in1 : i32, output out : i32>, parameters = [], result_locs = [#loc], sym_name = "comb"}> ({
  ^bb0(%arg20: i32, %arg21: i32):
    %21 = "comb.add"(%arg20, %arg21) : (i32, i32) -> i32
    "hw.output"(%21) : (i32) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, input in0 : i32, input in1 : i32, output out : i32>, parameters = [], result_locs = [#loc1], sym_name = "one_reg"}> ({
  ^bb0(%arg17: !seq.clock, %arg18: i32, %arg19: i32):
    %17 = "comb.add"(%arg18, %arg19) : (i32, i32) -> i32
    %18 = "seq.initial"() ({
      %20 = "hw.constant"() <{value = 0 : i32}> : () -> i32
      "seq.yield"(%20) : (i32) -> ()
    }) : () -> !seq.immutable<i32>
    %19 = "seq.compreg"(%17, %arg17, %18) <{name = "single_reg", operandSegmentSizes = array<i32: 1, 1, 0, 0, 1>}> : (i32, !seq.clock, !seq.immutable<i32>) -> i32
    "hw.output"(%19) : (i32) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, input in0 : i32, input in1 : i32, output out : i32>, parameters = [], result_locs = [#loc2], sym_name = "two_reg"}> ({
  ^bb0(%arg14: !seq.clock, %arg15: i32, %arg16: i32):
    %14 = "comb.add"(%arg15, %arg16) : (i32, i32) -> i32
    %15 = "seq.compreg"(%14, %arg14) <{name = "", operandSegmentSizes = array<i32: 1, 1, 0, 0, 0>}> : (i32, !seq.clock) -> i32
    %16 = "seq.compreg"(%15, %arg14) <{name = "", operandSegmentSizes = array<i32: 1, 1, 0, 0, 0>}> : (i32, !seq.clock) -> i32
    "hw.output"(%16) : (i32) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, input in0 : i32, input in1 : i32, output out : i32>, parameters = [], result_locs = [#loc3], sym_name = "named_regs"}> ({
  ^bb0(%arg11: !seq.clock, %arg12: i32, %arg13: i32):
    %11 = "comb.add"(%arg12, %arg13) : (i32, i32) -> i32
    %12 = "seq.compreg"(%11, %arg11) <{name = "firstreg", operandSegmentSizes = array<i32: 1, 1, 0, 0, 0>}> : (i32, !seq.clock) -> i32
    %13 = "seq.compreg"(%12, %arg11) <{name = "secondreg", operandSegmentSizes = array<i32: 1, 1, 0, 0, 0>}> : (i32, !seq.clock) -> i32
    "hw.output"(%13) : (i32) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, input in0 : i32, input in1 : i32, output out : i32>, parameters = [], result_locs = [#loc4], sym_name = "nested_reg"}> ({
  ^bb0(%arg8: !seq.clock, %arg9: i32, %arg10: i32):
    %10 = "hw.instance"(%arg8, %arg9, %arg10) <{argNames = ["clk", "in0", "in1"], instanceName = "one_reg", moduleName = @one_reg, parameters = [], resultNames = ["out"]}> : (!seq.clock, i32, i32) -> i32
    "hw.output"(%10) : (i32) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, input in0 : i32, input in1 : i32, output out : i32>, parameters = [], result_locs = [#loc5], sym_name = "nested_nested_reg"}> ({
  ^bb0(%arg5: !seq.clock, %arg6: i32, %arg7: i32):
    %8 = "hw.instance"(%arg5, %arg6, %arg7) <{argNames = ["clk", "in0", "in1"], instanceName = "nested_reg", moduleName = @nested_reg, parameters = [], resultNames = ["out"]}> : (!seq.clock, i32, i32) -> i32
    %9 = "seq.compreg"(%8, %arg5) <{name = "top_reg", operandSegmentSizes = array<i32: 1, 1, 0, 0, 0>}> : (i32, !seq.clock) -> i32
    "hw.output"(%9) : (i32) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, input in : i32>, parameters = [], sym_name = "different_initial_values"}> ({
  ^bb0(%arg3: !seq.clock, %arg4: i32):
    %2:2 = "seq.initial"() ({
      %6 = "hw.constant"() <{value = 0 : i32}> : () -> i32
      %7 = "hw.constant"() <{value = 42 : i32}> : () -> i32
      "seq.yield"(%6, %7) : (i32, i32) -> ()
    }) : () -> (!seq.immutable<i32>, !seq.immutable<i32>)
    %3 = "seq.compreg"(%arg4, %arg3, %2#0) <{name = "reg0", operandSegmentSizes = array<i32: 1, 1, 0, 0, 1>}> : (i32, !seq.clock, !seq.immutable<i32>) -> i32
    %4 = "seq.compreg"(%arg4, %arg3, %2#1) <{name = "reg1", operandSegmentSizes = array<i32: 1, 1, 0, 0, 1>}> : (i32, !seq.clock, !seq.immutable<i32>) -> i32
    %5 = "seq.compreg"(%arg4, %arg3) <{name = "reg2", operandSegmentSizes = array<i32: 1, 1, 0, 0, 0>}> : (i32, !seq.clock) -> i32
    "hw.output"() : () -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, input rst : i1, input in : i32, output out : i32>, parameters = [], result_locs = [#loc6], sym_name = "reg_with_reset"}> ({
  ^bb0(%arg0: !seq.clock, %arg1: i1, %arg2: i32):
    %0 = "hw.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "seq.compreg"(%arg2, %arg0, %arg1, %0) <{name = "", operandSegmentSizes = array<i32: 1, 1, 1, 1, 0>}> : (i32, !seq.clock, i1, i32) -> i32
    "hw.output"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

