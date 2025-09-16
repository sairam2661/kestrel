"builtin.module"() ({
  "func.func"() <{function_type = (f32, f64) -> (), sym_name = "fptosi"}> ({
  ^bb0(%arg0: f32, %arg1: f64):
    %0 = "arith.fptosi"(%arg0) : (f32) -> i32
    %1 = "arith.fptosi"(%arg0) : (f32) -> i64
    %2 = "arith.fptosi"(%arg1) : (f64) -> i32
    %3 = "arith.fptosi"(%arg1) : (f64) -> i64
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

