"builtin.module"() ({
  "func.func"() <{function_type = (!testd.self_referencing<!testd.self_referencing<i32>>) -> (), sym_name = "one_reference"}> ({
  ^bb0(%arg0: !testd.self_referencing<!testd.self_referencing<i32>>):
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

