"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_refines_noreturn"}> ({
    "verif.refines"() ({
    ^bb0(%arg1: i32):
      "verif.yield"(%arg1) : (i32) -> ()
    }, {
    ^bb0(%arg0: i32):
      "verif.yield"(%arg0) : (i32) -> ()
    }) : () -> ()
    "verif.refines"() ({
      "verif.yield"() : () -> ()
    }, {
      "verif.yield"() : () -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

