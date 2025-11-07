#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/clock-mux-0.mlir":2:96)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input cond : i1, input trueClock : !seq.clock, input falseClock : !seq.clock, output out : !seq.clock>, parameters = [], result_locs = [#loc], sym_name = "clock_mux"}> ({
  ^bb0(%arg0: i1, %arg1: !seq.clock, %arg2: !seq.clock):
    %0 = "seq.clock_mux"(%arg0, %arg1, %arg2) : (i1, !seq.clock, !seq.clock) -> !seq.clock
    "hw.output"(%0) : (!seq.clock) -> ()
  }) : () -> ()
}) : () -> ()

