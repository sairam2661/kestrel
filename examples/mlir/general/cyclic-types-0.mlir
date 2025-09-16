"builtin.module"() ({
  "func.func"() <{function_type = (!testd.self_referencing<i32>) -> (), sym_name = "no_references"}> ({
  ^bb0(%arg0: !testd.self_referencing<i32>):
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

