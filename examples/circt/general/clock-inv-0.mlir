#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/clock-inv-0.mlir":2:51)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/clock-inv-0.mlir":7:61)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clk_in : !seq.clock, output clk_out : !seq.clock>, parameters = [], result_locs = [#loc], sym_name = "clock_inv"}> ({
  ^bb0(%arg1: !seq.clock):
    %1 = "seq.clock_inv"(%arg1) : (!seq.clock) -> !seq.clock
    "hw.output"(%1) : (!seq.clock) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clk_in : !seq.clock, output clk_out : !seq.clock>, parameters = [], result_locs = [#loc1], sym_name = "clock_inv_with_hint"}> ({
  ^bb0(%arg0: !seq.clock):
    %0 = "seq.clock_inv"(%arg0) {sv.namehint = "hint"} : (!seq.clock) -> !seq.clock
    "hw.output"(%0) : (!seq.clock) -> ()
  }) : () -> ()
}) : () -> ()

