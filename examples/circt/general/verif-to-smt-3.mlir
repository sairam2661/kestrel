"builtin.module"() ({
  "func.func"() <{function_type = () -> i1, sym_name = "test_refines_withreturn"}> ({
    %0 = "verif.refines"() ({
    ^bb0(%arg1: i32):
      "verif.yield"(%arg1) : (i32) -> ()
    }, {
    ^bb0(%arg0: i32):
      "verif.yield"(%arg0) : (i32) -> ()
    }) : () -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

