"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_invalid_result_materialization"}> ({
    %0 = "test.type_producer"() : () -> f16
    "foo.return"(%0) : (f16) -> ()
  }) : () -> ()
}) : () -> ()

