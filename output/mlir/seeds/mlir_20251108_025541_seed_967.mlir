"builtin.module"() ({
  "func.func"() <{function_type = (tensor<512x32xf32>, tensor<512x32xf32>) -> tensor<512x32xf32>, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: tensor<512x32xf32>, %arg1: tensor<512x32xf32>):
    %0 = "arith.addf"(%arg0, %arg1) : (tensor<512x32xf32>, tensor<512x32xf32>) -> tensor<512x32xf32>
    %1 = "arith.constant"() <{value = 1.5 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = -2.0 : f32}> : () -> f32
    %3 = "arith.addf"(%0, %1) : (tensor<512x32xf32>, f32) -> tensor<512x32xf32>
    %4 = "arith.cmpf"(%3, %2) <{predicate = 0 : i64}> : (tensor<512x32xf32>, f32) -> i1
    %5 = "arith.constant"() <{value = 3.0 : f32}> : () -> f32
    %6 = "arith.addf"(%3, %5) : (tensor<512x32xf32>, f32) -> tensor<512x32xf32>
    "func.return"(%6) : (tensor<512x32xf32>) -> ()
  }) : () -> ()
}) : () -> ()