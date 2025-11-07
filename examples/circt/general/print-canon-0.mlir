"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clock : !seq.clock>, parameters = [], sym_name = "always_disabled"}> ({
  ^bb0(%arg1: !seq.clock):
    %1 = "hw.constant"() <{value = false}> : () -> i1
    %2 = "sim.fmt.lit"() <{literal = "Foo"}> : () -> !sim.fstring
    "sim.print"(%2, %arg1, %1) : (!sim.fstring, !seq.clock, i1) -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input trigger : i1>, parameters = [], sym_name = "emtpy_proc_print"}> ({
  ^bb0(%arg0: i1):
    "hw.triggered"(%arg0) <{event = 0 : i32}> ({
      %0 = "sim.fmt.lit"() <{literal = ""}> : () -> !sim.fstring
      "sim.proc.print"(%0) : (!sim.fstring) -> ()
    }) : (i1) -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

