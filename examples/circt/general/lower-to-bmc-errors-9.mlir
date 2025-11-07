"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input in0 : i32>, parameters = [], sym_name = "testModule"}> ({
  ^bb0(%arg0: i32):
    %0 = "comb.add"(%arg0, %1) : (i32, i32) -> i32
    %1 = "comb.or"(%arg0, %0) : (i32, i32) -> i32
    %2 = "hw.constant"() <{value = true}> : () -> i1
    "verif.assert"(%2) : (i1) -> ()
    "hw.output"() : () -> ()
  }) {initial_values = [], num_regs = 0 : i32} : () -> ()
}) : () -> ()

