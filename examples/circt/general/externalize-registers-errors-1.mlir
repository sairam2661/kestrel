#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/externalize-registers-errors-1.mlir":2:54)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clk_i1 : i1, input in : i32, output out : i32>, parameters = [], result_locs = [#loc], sym_name = "two_clks"}> ({
  ^bb0(%arg0: i1, %arg1: i32):
    %0 = "seq.to_clock"(%arg0) : (i1) -> !seq.clock
    %1 = "seq.compreg"(%arg1, %0) <{name = "", operandSegmentSizes = array<i32: 1, 1, 0, 0, 0>}> : (i32, !seq.clock) -> i32
    "hw.output"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

