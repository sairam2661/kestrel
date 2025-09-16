"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (), sym_name = "arith_shift_right"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.shrui"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.shrsi"(%arg0, %arg1) : (i32, i32) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

