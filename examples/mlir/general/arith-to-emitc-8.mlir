"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (), sym_name = "arith_shift_left"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.shli"(%arg0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

