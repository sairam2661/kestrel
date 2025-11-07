"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<inout in0 : i32>, parameters = [], sym_name = "someModule"}> ({
  ^bb0(%arg0: !hw.inout<i32>):
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

