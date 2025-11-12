"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (f32, i32), sym_name = "complex_interactions"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.cmpf"(%arg0, %arg0) <{predicate = "OEQ"}> : (f32, f32) -> i1
    %1 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %2 = "arith.addf"(%arg0, %arg0) <{fastmath = #arith_fastmath_attrs}> : (f32, f32) -> f32
    %3 = "arith.cmpi"(%arg1, %arg1) <{predicate = "eq"}> : (i32, i32) -> i1
    %4 = "scf.if"(%0) ({
    ^bb0:
      %5 = "arith.addf"(%2, %2) <{fastmath = #arith_fastmath_attrs}> : (f32, f32) -> f32
      "scf.yield"(%5) : (f32) -> ()
    }) {
    } : (f32) -> (f32)
    %6 = "scf.if"(%3) ({
    ^bb0:
      %7 = "arith.addi"(%arg1, %arg1) <{overflowFlags = #arith_overflow_attrs}> : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) {
    } : (i32) -> (i32)
    "func.return"(%4, %6) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()