#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/convert-to-arcs-names-0.mlir":2:74)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clock : !seq.clock, input i0 : i4, input reset : i1, output o0 : i4>, parameters = [], result_locs = [#loc], sym_name = "Trivial"}> ({
  ^bb0(%arg0: !seq.clock, %arg1: i4, %arg2: i1):
    %0 = "seq.compreg"(%arg1, %arg0) <{name = "foo", operandSegmentSizes = array<i32: 1, 1, 0, 0, 0>}> : (i4, !seq.clock) -> i4
    "hw.output"(%0) : (i4) -> ()
  }) : () -> ()
}) : () -> ()

