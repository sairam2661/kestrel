"builtin.module"() ({
  "func.func"() <{function_type = () -> i1, sym_name = "test_refines_trivialreturn"}> ({
    %0 = "verif.refines"() ({
      "verif.yield"() : () -> ()
    }, {
      "verif.yield"() : () -> ()
    }) : () -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

