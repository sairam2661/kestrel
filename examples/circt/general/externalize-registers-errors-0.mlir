#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/externalize-registers-errors-0.mlir":2:82)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clk0 : !seq.clock, input clk1 : !seq.clock, input in : i32, output out : i32>, parameters = [], result_locs = [#loc], sym_name = "two_clks"}> ({
  ^bb0(%arg0: !seq.clock, %arg1: !seq.clock, %arg2: i32):
    %0 = "seq.compreg"(%arg2, %arg0) <{name = "", operandSegmentSizes = array<i32: 1, 1, 0, 0, 0>}> : (i32, !seq.clock) -> i32
    %1 = "seq.compreg"(%0, %arg1) <{name = "", operandSegmentSizes = array<i32: 1, 1, 0, 0, 0>}> : (i32, !seq.clock) -> i32
    "hw.output"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

