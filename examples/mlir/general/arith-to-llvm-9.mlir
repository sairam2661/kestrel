"builtin.module"() ({
  "func.func"() <{function_type = (f16, f32) -> (), sym_name = "fpext"}> ({
  ^bb0(%arg0: f16, %arg1: f32):
    %0 = "arith.extf"(%arg0) : (f16) -> f32
    %1 = "arith.extf"(%arg0) : (f16) -> f64
    %2 = "arith.extf"(%arg1) : (f32) -> f64
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

