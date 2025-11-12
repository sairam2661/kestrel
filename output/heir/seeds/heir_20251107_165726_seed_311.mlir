"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi8>, i32) -> tensor<16xi8>, sym_name = "rotate_and_multiply"}> ({
  ^bb0(%arg0: tensor<16xi8>, %arg1: i32):
    %0 = "arith.constant"() <{value = dense<[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]> : tensor<16xi8>}> : () -> tensor<16xi8>
    %1 = "arith.addi"(%arg1, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "tensor_ext.rotate"(%arg0, %1) <{axis = 0}> : (tensor<16xi8>, i32) -> tensor<16xi8>
    %3 = "arith.muli"(%2, %0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>
    %4 = "arith.subi"(%3, %0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>
    "func.return"(%4) : (tensor<16xi8>) -> ()
  }) : () -> ()
}) : () -> ()