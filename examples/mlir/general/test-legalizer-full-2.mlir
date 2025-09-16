"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_undo_region_clone"}> ({
    "test.region"() ({
    ^bb0(%arg0: i64):
      "test.invalid"(%arg0) : (i64) -> ()
    }) {legalizer.should_clone} : () -> ()
    %0 = "test.illegal_op_f"() : () -> i32
    "test.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

