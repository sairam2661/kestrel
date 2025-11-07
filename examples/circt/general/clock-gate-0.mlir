#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/clock-gate-0.mlir":2:59)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/clock-gate-0.mlir":7:81)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, input enable : i1, output gclk : !seq.clock>, parameters = [], result_locs = [#loc], sym_name = "cg1"}> ({
  ^bb0(%arg3: !seq.clock, %arg4: i1):
    %1 = "seq.clock_gate"(%arg3, %arg4) : (!seq.clock, i1) -> !seq.clock
    "hw.output"(%1) : (!seq.clock) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, input enable : i1, input test_enable : i1, output gclk : !seq.clock>, parameters = [], result_locs = [#loc1], sym_name = "cg2"}> ({
  ^bb0(%arg0: !seq.clock, %arg1: i1, %arg2: i1):
    %0 = "seq.clock_gate"(%arg0, %arg1, %arg2) : (!seq.clock, i1, i1) -> !seq.clock
    "hw.output"(%0) : (!seq.clock) -> ()
  }) : () -> ()
}) : () -> ()

