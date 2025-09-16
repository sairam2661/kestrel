"builtin.module"() ({
  "func.func"() <{function_type = () -> i1, sym_name = "while_cond_true"}> ({
    %0 = "scf.while"() ({
      %1 = "test.condition"() : () -> i1
      "scf.condition"(%1, %1) : (i1, i1) -> ()
    }, {
    ^bb0(%arg0: i1):
      "test.use"(%arg0) : (i1) -> ()
      "scf.yield"() : () -> ()
    }) : () -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

