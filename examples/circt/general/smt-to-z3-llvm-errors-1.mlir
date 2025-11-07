"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "multiple_set_logics"}> ({
    "smt.solver"() ({
      "smt.check"() ({
        "smt.yield"() : () -> ()
      }, {
        "smt.yield"() : () -> ()
      }, {
        "smt.yield"() : () -> ()
      }) : () -> ()
      "smt.set_logic"() <{logic = "HORN"}> : () -> ()
      "smt.yield"() : () -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

