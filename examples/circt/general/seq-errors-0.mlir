#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/seq-errors-0.mlir":3:45)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, output count : i2>, parameters = [], result_locs = [#loc], sym_name = "Counter"}> ({
  ^bb0(%arg0: !seq.clock):
    %0 = "seq.initial"() ({
      %6 = "hw.constant"() <{value = 0 : i2}> : () -> i2
      "seq.yield"(%6) : (i2) -> ()
    }) : () -> !seq.immutable<i2>
    %1 = "hw.constant"() <{value = 1 : i2}> : () -> i2
    %2 = "comb.add"(%3, %1) : (i2, i2) -> i2
    %3 = "seq.compreg"(%2, %arg0, %0) <{name = "reg", operandSegmentSizes = array<i32: 1, 1, 0, 0, 1>}> : (i2, !seq.clock, !seq.immutable<i2>) -> i2
    %4 = "hw.constant"() <{value = -1 : i2}> : () -> i2
    %5 = "comb.icmp"(%3, %4) <{predicate = 6 : i64}> : (i2, i2) -> i1
    "verif.assert"(%5) : (i1) -> ()
    "hw.output"(%3) : (i2) -> ()
  }) : () -> ()
}) : () -> ()

