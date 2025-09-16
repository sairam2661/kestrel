"builtin.module"() ({
  "func.func"() <{function_type = (!testd.self_referencing<i64>) -> (), sym_name = "wrong_parameter"}> ({
  ^bb0(%arg0: !testd.self_referencing<i64>):
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

