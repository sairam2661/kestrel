"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "allowed_cases_pass"}> ({
    %0 = "test.i64_enum_attr"() <{attr = 5 : i64}> : () -> i32
    %1 = "test.i64_enum_attr"() <{attr = 10 : i64}> : () -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

