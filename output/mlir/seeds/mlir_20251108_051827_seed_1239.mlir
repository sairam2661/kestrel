"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xf32>, tensor<2x3xf32>) -> tensor<2x3xf32>, sym_name = "complex_tensor_op"}> ({
  ^bb0(%arg0: tensor<2x3xf32>, %arg1: tensor<2x3xf32>):
    %0 = "arith.cmpf"(%arg0, %arg1) <{predicate = "oeq"}> : (tensor<2x3xf32>, tensor<2x3xf32>) -> tensor<2x3xi1>
    %1 = "arith.cmpi"(%0, %0) <{predicate = "eq"}> : (tensor<2x3xi1>, tensor<2x3xi1>) -> tensor<2x3xi1>
    %2 = "arith.addf"(%arg0, %arg1) <{fastmath = #arithfastmathattrsROUNDING_MODE_RN}> : (tensor<2x3xf32>, tensor<2x3xf32>) -> tensor<2x3xf32>
    %3 = "tosa.const"() <{values = dense<1> : tensor<2x3xi1>}> : () -> tensor<2x3xi1>
    %4 = "tosa.mul"(%2, %3, %1) : (tensor<2x3xf32>, tensor<2x3xi1>, tensor<2x3xi1>) -> tensor<2x3xf32>
    "func.return"(%4) : (tensor<2x3xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2x3xf32>) -> tensor<2x3xf32>, sym_name = "simple_add"}> ({
  ^bb0(%arg0: tensor<2x3xf32>):
    %0 = "arith.constant"() <{value = dense<2.000000e+00> : tensor<2x3xf32>}> : () -> tensor<2x3xf32>
    %1 = "arith.addf"(%arg0, %0) : (tensor<2x3xf32>, tensor<2x3xf32>) -> tensor<2x3xf32>
    "func.return"(%1) : (tensor<2x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()