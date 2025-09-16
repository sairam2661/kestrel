"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_move_op_before_rollback"}> ({
    "test.one_region_op"() ({
      %0 = "test.hoist_me"() : () -> i32
      "test.valid"(%0) : (i32) -> ()
    }) : () -> ()
    "test.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

