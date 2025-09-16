"builtin.module"() ({
  "test.block_arg_num_mismatch"() ({
  ^bb0(%arg1: f32, %arg2: f32):
    "test.some_branching_op"() : () -> ()
  }) : () -> ()
  "test.block_arg_num_mismatch"() ({
  ^bb0(%arg0: f32):
    "test.some_branching_op"() : () -> ()
  }) : () -> ()
}) : () -> ()

