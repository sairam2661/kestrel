"builtin.module"() ({
  "test.operand_num_mismatch"() ({
  ^bb0(%arg2: i32, %arg3: f32):
    "test.some_branching_op"(%arg3, %arg2) : (f32, i32) -> ()
  }) : () -> ()
  "test.operand_num_mismatch"() ({
  ^bb0(%arg0: i32, %arg1: f32):
    "test.some_branching_op"(%arg1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

