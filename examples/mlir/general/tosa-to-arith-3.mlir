"builtin.module"() ({
  "func.func"() <{function_type = (i48, i32, i8) -> i32, sym_name = "apply_scale_test_i48"}> ({
  ^bb0(%arg0: i48, %arg1: i32, %arg2: i8):
    %0 = "tosa.apply_scale"(%arg0, %arg1, %arg2) <{rounding_mode = "DOUBLE_ROUND"}> : (i48, i32, i8) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

