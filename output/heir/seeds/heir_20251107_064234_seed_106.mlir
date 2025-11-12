"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, i8) -> tensor<4xi8>, sym_name = "byte_shift"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: i8):
    %0 = "arith.constant"() <{value = 2 : i8}> : () -> i8
    %1 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %2 = "tensor_ext.rotate"(%arg0, %1) : (tensor<4xi8>, i8) -> tensor<4xi8>
    %3 = "arith.constant"() <{value = -1 : i8}> : () -> i8
    %4 = "arith.addi"(%arg1, %3) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %5 = "tensor_ext.rotate"(%2, %4) : (tensor<4xi8>, i8) -> tensor<4xi8>
    "func.return"(%5) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()