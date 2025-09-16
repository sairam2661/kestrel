"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (), sym_name = "uitofp"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.uitofp"(%arg0) : (i32) -> f32
    %1 = "arith.uitofp"(%arg0) : (i32) -> f64
    %2 = "arith.uitofp"(%arg1) : (i64) -> f32
    %3 = "arith.uitofp"(%arg1) : (i64) -> f64
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

