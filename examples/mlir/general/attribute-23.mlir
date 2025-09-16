"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "string_attr_custom_mixed_type"}> ({
    "test.string_attr_with_mixed_type"() <{attr = "string_data" : i64}> : () -> ()
    "test.string_attr_with_mixed_type"() <{attr = 42 : i64}> : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

