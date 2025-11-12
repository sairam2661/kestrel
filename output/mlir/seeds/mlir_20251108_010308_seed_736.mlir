"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2x3xf32>, tensor<2xi32>) -> tensor<2x3xf64>, sym_name = "unusual_tensor_gather"}> ({
    ^bb0(%arg0: tensor<1x2x3xf32>, %arg1: tensor<2xi32>):
      %0 = "arith.constant"() <{value = 1.0 : f64}> : () -> f64
      %1 = "arith.constant"() <{value = 2.0 : f64}> : () -> f64
      %2 = "arith.addf"(%0, %1) : (f64, f64) -> f64
      %3 = "tosa.gather"(%arg0, %arg1) : (tensor<1x2x3xf32>, tensor<2xi32>) -> tensor<2x3xf32>
      %4 = "arith.addf"(%3, %2) : (tensor<2x3xf32>, f64) -> tensor<2x3xf64>
      "func.return"(%4) : (tensor<2x3xf64>) -> ()
  }) : () -> ()
}) : () -> ()