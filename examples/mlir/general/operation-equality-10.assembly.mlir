module {
  "test.block_type_mismatch"() ({
  ^bb0(%arg0: f32, %arg1: f32):
    "test.some_branching_op"() : () -> ()
  }) : () -> ()
  "test.block_type_mismatch"() ({
  ^bb0(%arg0: i32, %arg1: f32):
    "test.some_branching_op"() : () -> ()
  }) : () -> ()
}

