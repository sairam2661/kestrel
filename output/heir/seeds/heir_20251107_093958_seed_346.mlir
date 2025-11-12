"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi8>, tensor<3xi8>) -> tensor<3xi8>, sym_name = "tensor_mix"}> ({
  ^bb0(%arg0: tensor<3xi8>, %arg1: tensor<3xi8>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "tensor.extract"(%arg0, %0) : (tensor<3xi8>, index) -> i8
    %2 = "tensor.extract"(%arg1, %0) : (tensor<3xi8>, index) -> i8
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %4 = "arith.constant"() <{value = 1 : index}> : () -> index
    %5 = "tensor.extract"(%arg0, %4) : (tensor<3xi8>, index) -> i8
    %6 = "tensor.extract"(%arg1, %4) : (tensor<3xi8>, index) -> i8
    %7 = "arith.subi"(%5, %6) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %8 = "arith.constant"() <{value = 2 : index}> : () -> index
    %9 = "tensor.extract"(%arg0, %8) : (tensor<3xi8>, index) -> i8
    %10 = "tensor.extract"(%arg1, %8) : (tensor<3xi8>, index) -> i8
    %11 = "arith.muli"(%9, %10) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %12 = "tensor.empty"() : () -> tensor<3xi8>
    %13 = "tensor.insert"(%3, %12, %0) : (i8, tensor<3xi8>, index) -> tensor<3xi8>
    %14 = "tensor.insert"(%7, %13, %4) : (i8, tensor<3xi8>, index) -> tensor<3xi8>
    %15 = "tensor.insert"(%11, %14, %8) : (i8, tensor<3xi8>, index) -> tensor<3xi8>
    "func.return"(%15) : (tensor<3xi8>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secret_secreti16) -> !secret_secreti16, sym_name = "secret_square"}> ({
  ^bb0(%arg0: !secret_secreti16):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: i16):
      %1 = "arith.muli"(%arg1, %arg1) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
      "secret.yield"(%1) : (i16) -> ()
    }) : (!secret_secreti16) -> !secret_secreti16
    "func.return"(%0) : (!secret_secreti16) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "arith_chain"}> ({
  ^bb0(%arg0: i32):
    %1 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.subi"(%2, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.addi"(%3, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()