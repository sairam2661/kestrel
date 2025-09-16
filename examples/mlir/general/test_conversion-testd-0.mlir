"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test"}> ({
    %0 = "test_irdl_to_cpp.bar"() : () -> i32
    %1 = "test_irdl_to_cpp.beef"(%0, %0) : (i32, i32) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

