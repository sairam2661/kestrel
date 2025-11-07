"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock>, parameters = [], sym_name = "InputProp"}> ({
  ^bb0(%arg0: !seq.clock):
    %0 = "seq.from_clock"(%arg0) : (!seq.clock) -> i1
    "verif.assert"(%0) : (i1) -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

