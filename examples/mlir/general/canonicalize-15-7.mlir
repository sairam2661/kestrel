"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> (), sym_name = "empty_if1"}> ({
  ^bb0(%arg0: i1):
    "scf.if"(%arg0) ({
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

