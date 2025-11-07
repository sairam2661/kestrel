#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/arcilator-0.mlir":2:70)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clock : !seq.clock, input i0 : i4, input i1 : i4, output out : i4>, parameters = [], result_locs = [#loc], sym_name = "Top"}> ({
  ^bb0(%arg0: !seq.clock, %arg1: i4, %arg2: i4):
    %0 = "comb.add"(%arg1, %arg2) : (i4, i4) -> i4
    %1 = "comb.xor"(%0, %arg1) : (i4, i4) -> i4
    %2 = "comb.xor"(%0, %arg2) : (i4, i4) -> i4
    %3 = "seq.compreg"(%1, %arg0) <{name = "foo", operandSegmentSizes = array<i32: 1, 1, 0, 0, 0>}> : (i4, !seq.clock) -> i4
    %4 = "seq.compreg"(%2, %arg0) <{name = "bar", operandSegmentSizes = array<i32: 1, 1, 0, 0, 0>}> : (i4, !seq.clock) -> i4
    %5 = "comb.mul"(%3, %4) : (i4, i4) -> i4
    "hw.output"(%5) : (i4) -> ()
  }) : () -> ()
}) : () -> ()

