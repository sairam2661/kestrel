"builtin.module"() ({
  "func.func"() <{function_type = () -> i1, sym_name = "test_bmc"}> ({
    %0 = "verif.bmc"() <{bound = 10 : i32, initial_values = [], num_regs = 0 : i32}> ({
      "verif.yield"() : () -> ()
    }, {
      "verif.yield"() : () -> ()
    }, {
    ^bb0(%arg0: i32):
      %1 = "hw.constant"() <{value = true}> : () -> i1
      "verif.assert"(%1) : (i1) -> ()
      "verif.yield"(%arg0) : (i32) -> ()
    }) {ignore_asserts_until = 3 : i64} : () -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

