#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/externalize-registers-errors-3.mlir":2:107)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, input in : i32, input init : !seq.immutable<i32>, output out : i32>, parameters = [], result_locs = [#loc], sym_name = "reg_with_argument_initial"}> ({
  ^bb0(%arg0: !seq.clock, %arg1: i32, %arg2: !seq.immutable<i32>):
    %0 = "seq.compreg"(%arg1, %arg0, %arg2) <{name = "", operandSegmentSizes = array<i32: 1, 1, 0, 0, 1>}> : (i32, !seq.clock, !seq.immutable<i32>) -> i32
    "hw.output"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

