#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/dividers-0.mlir":2:51)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/dividers-0.mlir":9:51)
#loc2 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/dividers-0.mlir":17:51)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clock : !seq.clock, output by_2 : !seq.clock>, parameters = [], result_locs = [#loc], sym_name = "divide_by_0"}> ({
  ^bb0(%arg2: !seq.clock):
    %2 = "seq.clock_div"(%arg2) <{pow2 = 0 : i64}> : (!seq.clock) -> !seq.clock
    "hw.output"(%2) : (!seq.clock) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clock : !seq.clock, output by_2 : !seq.clock>, parameters = [], result_locs = [#loc1], sym_name = "divide_by_2"}> ({
  ^bb0(%arg1: !seq.clock):
    %1 = "seq.clock_div"(%arg1) <{pow2 = 1 : i64}> : (!seq.clock) -> !seq.clock
    "hw.output"(%1) : (!seq.clock) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clock : !seq.clock, output by_8 : !seq.clock>, parameters = [], result_locs = [#loc2], sym_name = "divide_by_8"}> ({
  ^bb0(%arg0: !seq.clock):
    %0 = "seq.clock_div"(%arg0) <{pow2 = 3 : i64}> : (!seq.clock) -> !seq.clock
    "hw.output"(%0) : (!seq.clock) -> ()
  }) : () -> ()
}) : () -> ()

