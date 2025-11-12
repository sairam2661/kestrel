"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "complexArith"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith_fastmath_attrs}> : (f32, f32) -> f32
    %1 = "arith.cmpf"("oeq", %0, %0) <{fastmath = #arith_fastmath_attrs}> : (f32, f32) -> i1
    %2 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %3 = "arith.select"(%1, %0, %2) <{fastmath = #arith_fastmath_attrs}> : (i1, f32, f32) -> f32
    "func.return"(%3) : (f32) -> ()
  }) : () -> ()
}) : () -> ()