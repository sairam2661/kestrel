"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_multiple_1_to_n_replacement"}> ({
    %0 = "test.multiple_1_to_n_replacement"() : () -> f16
    "test.invalid"(%0) : (f16) -> ()
  }) : () -> ()
}) : () -> ()

