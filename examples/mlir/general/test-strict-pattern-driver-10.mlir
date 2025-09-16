"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_move_op_before"}> ({
    "test.op_with_region"() ({
      "test.move_before_parent_op"() : () -> ()
      "test.dummy_terminator"() : () -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

