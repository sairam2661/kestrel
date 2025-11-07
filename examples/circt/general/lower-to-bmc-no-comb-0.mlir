"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock>, parameters = [], sym_name = "NoComb"}> ({
  ^bb0(%arg0: !seq.clock):
    %0 = "hw.constant"() <{value = true}> : () -> i1
    "verif.assert"(%0) : (i1) -> ()
    "hw.output"() : () -> ()
  }) {initial_values = [], num_regs = 0 : i32} : () -> ()
}) : () -> ()

