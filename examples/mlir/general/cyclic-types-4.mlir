"builtin.module"() ({
  "func.func"() <{function_type = (!testd.type1<!testd.type2<i32>>) -> (), sym_name = "type1_one_references"}> ({
  ^bb0(%arg0: !testd.type1<!testd.type2<i32>>):
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

