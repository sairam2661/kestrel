"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "matrix_add_with_rotations"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = -2 : i32}> : () -> i32
    %2 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4x4xi32>, i32) -> tensor<4x4xi32>
    %3 = "tensor_ext.rotate"(%arg1, %1) : (tensor<4x4xi32>, i32) -> tensor<4x4xi32>
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    "func.return"(%4) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "self_rotate_and_negate"}> ({
  ^bb0(%arg0: tensor<4x4xi32>):
    %0 = "arith.constant"() <{value = -3 : i32}> : () -> i32
    %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4x4xi32>, i32) -> tensor<4x4xi32>
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<4x4xi32>, i32) -> tensor<4x4xi32>
    "func.return"(%2) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()