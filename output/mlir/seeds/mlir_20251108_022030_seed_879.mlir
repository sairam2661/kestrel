"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32, f32) -> f32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
    %0 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith_fastmath_flags}> : (f32, f32) -> f32
    %1 = "arith.cmpf"("oeq", %0, %arg2) : (f32, f32) -> i1
    %2 = "scf.if"(%1) ({
      %3 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
      %4 = "arith.mulf"(%0, %3) <{fastmath = #arith_fastmath_flags}> : (f32, f32) -> f32
      "scf.yield"(%4) : (f32) -> ()
    }, {
      %3 = "arith.constant"() <{value = 3.000000e+00 : f32}> : () -> f32
      %4 = "arith.divf"(%0, %3) <{fastmath = #arith_fastmath_flags}> : (f32, f32) -> f32
      "scf.yield"(%4) : (f32) -> ()
    }) : (i1) -> f32
    "func.return"(%2) : (f32) -> ()
  }) : () -> ()
}) : () -> ()