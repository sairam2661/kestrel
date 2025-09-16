"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> (), sym_name = "solver_input"}> ({
  ^bb0(%arg0: i1):
    "smt.solver"(%arg0) ({
    ^bb0(%arg1: i1):
      "smt.yield"() : () -> ()
    }) : (i1) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

