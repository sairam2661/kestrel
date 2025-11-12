"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x4xi32>, tensor<2x4xi64>) -> tensor<2x4xi64>, sym_name = "complex_tensors"}> ({
  ^bb0(%arg0: tensor<2x4xi32>, %arg1: tensor<2x4xi64>):
    %0 = "tensor_ext.cast"(%arg0) <{type = tensor<2x4xi64>}> : (tensor<2x4xi32>) -> tensor<2x4xi64>
    %1 = "tensor_ext.add"(%0, %arg1) : (tensor<2x4xi64>, tensor<2x4xi64>) -> tensor<2x4xi64>
    %2 = "arith.constant"() <{value = 2 : i64}> : () -> i64
    %3 = "tensor_ext.multiply"(%1, %2) : (tensor<2x4xi64>, i64) -> tensor<2x4xi64>
    %4 = "tensor_ext.permute"(%3) <{permutation = dense<[[1, 0], [3, 2]]> : tensor<2x2xi64>}> : (tensor<2x4xi64>) -> tensor<2x4xi64>
    "func.return"(%4) : (tensor<2x4xi64>) -> ()
  }) : () -> ()
}) : () -> ()