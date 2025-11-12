"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x3xf32>, tensor<5x3xf32>) -> tensor<5x3xf32>, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: tensor<5x3xf32>, %arg1: tensor<5x3xf32>):
    %0 = "arith.addf"(%arg0, %arg1) : (tensor<5x3xf32>, tensor<5x3xf32>) -> tensor<5x3xf32>
    %1 = "arith.constant"() <{value = 2.0 : f32}> : () -> f32
    %2 = "arith.mulf"(%0, %1) : (tensor<5x3xf32>, f32) -> tensor<5x3xf32>
    %3 = "arith.cmpf"(%2, %arg1, "oeq") : (tensor<5x3xf32>, tensor<5x3xf32>, i32) -> tensor<5x3xi1>
    %4 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
    %5 = "arith.select"(%3, %4, %1) : (tensor<5x3xi1>, f32, f32) -> tensor<5x3xf32>
    "func.return"(%5) : (tensor<5x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()