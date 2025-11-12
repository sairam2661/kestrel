"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "mixed_arithmetic"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %1 = "arith.cmpf"("oeq", %0, %arg0) : (f32, f32) -> i1
    %2 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
    %3 = "arith.constant"() <{value = 2.0 : f32}> : () -> f32
    %4 = "arith.select"(%1, %2, %3) : (i1, f32, f32) -> f32
    "func.return"(%4) : (f32) -> ()
  }) : () -> ()
}) : () -> ()