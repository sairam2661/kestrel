"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "tensor_rotate_fuzz"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "tensor_ext.rotate"(%arg0, %0) <{shift = 1, dimensions = [0]}> : (tensor<4xi8>, i32) -> tensor<4xi8>
    %2 = "tensor_ext.rotate"(%arg1, %0) <{shift = 1, dimensions = [0]}> : (tensor<4xi8>, i32) -> tensor<4xi8>
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    "func.return"(%3) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()