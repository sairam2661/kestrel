"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi64>) -> tensor<4x4xf32>, sym_name = "mixed_tensor_types"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi64>):
    %0 = "arith.addi"(%arg0, %arg0) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %1 = "arith.addi"(%arg1, %arg1) : (tensor<4x4xi64>, tensor<4x4xi64>) -> tensor<4x4xi64>
    %2 = "arith.sitofp"(%0) : (tensor<4x4xi32>) -> tensor<4x4xf32>
    %3 = "arith.sitofp"(%1) : (tensor<4x4xi64>) -> tensor<4x4xf32>
    %4 = "arith.addf"(%2, %3) : (tensor<4x4xf32>, tensor<4x4xf32>) -> tensor<4x4xf32>
    "func.return"(%4) : (tensor<4x4xf32>) -> ()
  }) : () -> ()
}) : () -> ()