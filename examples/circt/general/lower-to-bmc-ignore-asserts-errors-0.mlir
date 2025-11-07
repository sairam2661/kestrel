"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input in0 : i1>, parameters = [], sym_name = "testModule"}> ({
  ^bb0(%arg0: i1):
    "verif.assert"(%arg0) : (i1) -> ()
    "hw.output"() : () -> ()
  }) {initial_values = [], num_regs = 0 : i32} : () -> ()
}) : () -> ()

