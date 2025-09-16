"builtin.module"() ({
  "func.func"() <{function_type = (i1, i1) -> (), sym_name = "merge_nested_if"}> ({
  ^bb0(%arg0: i1, %arg1: i1):
    "scf.if"(%arg0) ({
      "scf.if"(%arg1) ({
        "test.op"() : () -> ()
        "scf.yield"() : () -> ()
      }, {
      }) : (i1) -> ()
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

