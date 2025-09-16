"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_replace_with_new_op"}> ({
    %0 = "test.replace_with_new_op"() : () -> i32
    %1 = "test.dummy_user"(%0) : (i32) -> i32
    %2 = "test.dummy_user"(%0) : (i32) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

