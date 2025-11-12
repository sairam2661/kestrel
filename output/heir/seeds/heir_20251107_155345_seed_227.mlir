"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_rotate_add"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<8xi32>, i32) -> tensor<8xi32>
    %2 = "tensor_ext.rotate"(%arg1, %0) : (tensor<8xi32>, i32) -> tensor<8xi32>
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "func.return"(%3) : (tensor<8xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "add_constant"}> ({
  ^bb0(%arg0: i32):
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4xi8>) -> tensor<4xi8>, sym_name = "byte_rotations"}> ({
  ^bb0(%arg0: tensor<4xi8>):
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2 = "tensor_ext.rotate"(%arg0, %1) : (tensor<4xi8>, i32) -> tensor<4xi8>
    "func.return"(%2) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()