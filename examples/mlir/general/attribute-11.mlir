"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "non_negative_int_attr_pass"}> ({
    "test.non_negative_int_attr"() <{i32attr = 5 : i32, i64attr = 10 : i64}> : () -> ()
    "test.non_negative_int_attr"() <{i32attr = 0 : i32, i64attr = 0 : i64}> : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

