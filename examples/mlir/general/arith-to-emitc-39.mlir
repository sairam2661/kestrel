"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "arith_divui_remui"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.divui"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.remui"(%arg0, %arg1) : (i32, i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

