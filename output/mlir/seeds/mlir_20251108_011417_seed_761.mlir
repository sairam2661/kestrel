"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi64>, sym_name = "tensor_add_cast"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %1 = "tosa.cast"(%0) : (tensor<4x4xi32>) -> tensor<4x4xi64>
    "func.return"(%1) : (tensor<4x4xi64>) -> ()
  }) : () -> ()
}) : () -> ()