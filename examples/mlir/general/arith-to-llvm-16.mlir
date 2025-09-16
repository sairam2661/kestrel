"builtin.module"() ({
  "func.func"() <{function_type = (f32, f64) -> (), sym_name = "fptrunc"}> ({
  ^bb0(%arg0: f32, %arg1: f64):
    %0 = "arith.truncf"(%arg0) : (f32) -> f16
    %1 = "arith.truncf"(%arg1) : (f64) -> f16
    %2 = "arith.truncf"(%arg1) : (f64) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

