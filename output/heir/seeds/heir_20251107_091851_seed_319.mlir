"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret, tensor<4xi8>) -> i32, sym_name = "fuzz_secret_tensor"}> ({
  ^bb0(%arg0: !secret_secret, %arg1: tensor<4xi8>):
    %0 = "secret.conceal"(%arg0) : (!secret_secret) -> i32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    %4 = "arith.constant"() <{value = 3 : index}> : () -> index
    %5 = "tensor.extract"(%arg1, %1) : (tensor<4xi8>, index) -> i8
    %6 = "tensor.extract"(%arg1, %2) : (tensor<4xi8>, index) -> i8
    %7 = "tensor.extract"(%arg1, %3) : (tensor<4xi8>, index) -> i8
    %8 = "tensor.extract"(%arg1, %4) : (tensor<4xi8>, index) -> i8
    %9 = "arith.addi"(%5, %6) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %10 = "arith.addi"(%7, %8) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %11 = "arith.addi"(%9, %10) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %12 = "arith.addi"(%0, %11) <{overflowFlags = #arith_overflownone}> : (i32, i8) -> i32
    "func.return"(%12) : (i32) -> ()
  }) : () -> ()
}) : () -> ()