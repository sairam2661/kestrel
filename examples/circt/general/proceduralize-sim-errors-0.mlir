"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock>, parameters = [], sym_name = "cyclic_concat"}> ({
  ^bb0(%arg0: !seq.clock):
    %0 = "hw.constant"() <{value = true}> : () -> i1
    %1 = "sim.fmt.concat"(%2) : (!sim.fstring) -> !sim.fstring
    %2 = "sim.fmt.concat"(%1) : (!sim.fstring) -> !sim.fstring
    "sim.print"(%1, %arg0, %0) : (!sim.fstring, !seq.clock, i1) -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

