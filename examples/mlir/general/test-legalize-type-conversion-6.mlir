"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_valid_result_legalization"}> ({
    %0 = "test.type_producer"() : () -> f32
    "foo.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

