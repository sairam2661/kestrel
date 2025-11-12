"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "tensor_rotate_test"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "tensor_ext.rotate"(%arg0, %arg1) <{dims = [0, 1], shifts = [1, 2]}> : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %1 = "tensor_ext.rotate"(%1, %0) <{dims = [1, 0], shifts = [2, 1]}> : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    "func.return"(%1) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()