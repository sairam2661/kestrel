#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/errors-24-1.mlir":2:97)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clk1 : !seq.clock, input clk2 : !seq.clock, input input : i1, output output : i1>, parameters = [], result_locs = [#loc], sym_name = "multiple_clocks_error"}> ({
  ^bb0(%arg0: !seq.clock, %arg1: !seq.clock, %arg2: i1):
    %0 = "seq.compreg"(%arg2, %arg0) <{name = "reg1", operandSegmentSizes = array<i32: 1, 1, 0, 0, 0>}> : (i1, !seq.clock) -> i1
    %1 = "seq.compreg"(%0, %arg1) <{name = "reg2", operandSegmentSizes = array<i32: 1, 1, 0, 0, 0>}> : (i1, !seq.clock) -> i1
    "hw.output"(%1) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

