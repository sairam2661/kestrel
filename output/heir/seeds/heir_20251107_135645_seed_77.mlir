"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi8>, tensor<4x4xi8>) -> tensor<4x4xi8>, sym_name = "tensor_rotation_test"}> ({
  ^bb0(%arg0: tensor<4x4xi8>, %arg1: tensor<4x4xi8>):
    %0 = "tensor_ext.rotate"(%arg0) <{axis = [1, 2], direction = "clockwise"}> : (tensor<4x4xi8>) -> tensor<4x4xi8>
    %1 = "tensor_ext.rotate"(%arg1) <{axis = [0, 3], direction = "counterclockwise"}> : (tensor<4x4xi8>) -> tensor<4x4xi8>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_overflow}> : (tensor<4x4xi8>, tensor<4x4xi8>) -> tensor<4x4xi8>
    "func.return"(%2) : (tensor<4x4xi8>) -> ()
  }) : () -> ()
}) : () -> ()