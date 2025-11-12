"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x?x?x8x2x?xf32>, tensor<4x?x?x8x2x?xf32>) -> tensor<4x?x?x8x2x?xi1>, sym_name = "unusual_cmpf"}> ({
  ^bb0(%arg0: tensor<4x?x?x8x2x?xf32>, %arg1: tensor<4x?x?x8x2x?xf32>):
    %0 = "arith.constant"() <{value = 0.0 : f32}> : () -> f32
    %1 = "tosa.const"() <{value = dense<0.0> : tensor<4x?x?x8x2x?xf32>}> : () -> tensor<4x?x?x8x2x?xf32>
    %2 = "arith.addf"(%arg0, %0) : (tensor<4x?x?x8x2x?xf32>, f32) -> tensor<4x?x?x8x2x?xf32>
    %3 = "arith.addf"(%arg1, %0) : (tensor<4x?x?x8x2x?xf32>, f32) -> tensor<4x?x?x8x2x?xf32>
    %4 = "arith.cmpf"(%2, %3) <{fastmath = #arith_fastmathattrs_fastmath_flags, predicate = 4 : i64}> : (tensor<4x?x?x8x2x?xf32>, tensor<4x?x?x8x2x?xf32>) -> tensor<4x?x?x8x2x?xi1>
    "func.return"(%4) : (tensor<4x?x?x8x2x?xi1>) -> ()
  }) : () -> ()
}) : () -> ()