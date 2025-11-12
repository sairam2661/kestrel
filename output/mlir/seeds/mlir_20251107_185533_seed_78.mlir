"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x2xf32>, tensor<2xf32>, tensor<10x2x3xi32>) -> tensor<10x1xf64>, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: tensor<10x2xf32>, %arg1: tensor<2xf32>, %arg2: tensor<10x2x3xi32>):
    %0 = "tosa.const"() <{value = dense<1.0 : f32> : tensor<1x1xf32>}> : () -> tensor<1x1xf32>
    %1 = "tosa.add"(%arg0, %0) : (tensor<10x2xf32>, tensor<1x1xf32>) -> tensor<10x2xf32>
    %2 = "tosa.matmul"(%1, %arg1) <{transpose_lhs = false, transpose_rhs = false}> : (tensor<10x2xf32>, tensor<2xf32>) -> tensor<10x1xf32>
    %3 = "tosa.cast"(%2, "tensor<10x1xf64>") : (tensor<10x1xf32>) -> tensor<10x1xf64>
    "func.return"(%3) : (tensor<10x1xf64>) -> ()
  }) : () -> ()
}) : () -> ()