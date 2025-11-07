"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "multiple_set_logics"}> ({
    "smt.solver"() ({
      "smt.set_logic"() <{logic = "HORN"}> : () -> ()
      "smt.set_logic"() <{logic = "AUFLIA"}> : () -> ()
      "smt.yield"() : () -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

