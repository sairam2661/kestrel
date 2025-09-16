"builtin.module"() ({
  "func.func"() <{function_type = (!testd.type1<!testd.type2<!testd.type1<i32>>>) -> (), sym_name = "type1_two_references"}> ({
  ^bb0(%arg0: !testd.type1<!testd.type2<!testd.type1<i32>>>):
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

