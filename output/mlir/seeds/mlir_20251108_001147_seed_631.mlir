"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "compute_distance"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.subf"(%arg0, %arg1) : (f32, f32) -> f32
    %1 = "arith.mulf"(%0, %0) : (f32, f32) -> f32
    %2 = "arith.sqrtf"(%1) : (f32) -> f32
    "func.return"(%2) : (f32) -> ()
  }) : () -> ()
}) : () -> ()