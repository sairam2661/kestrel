"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret, tensor<2x2xi32>, !secret_secret) -> !secret_secret, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: !secret_secret, %arg1: tensor<2x2xi32>, %arg2: !secret_secret):
    %0 = "tensor.extract"(%arg1, %c0) : (tensor<2x2xi32>, index) -> i32
    %1 = "tensor.extract"(%arg1, %c1) : (tensor<2x2xi32>, index) -> i32
    %2 = "tensor.extract"(%arg1, %c2) : (tensor<2x2xi32>, index) -> i32
    %3 = "tensor.extract"(%arg1, %c3) : (tensor<2x2xi32>, index) -> i32
    %4 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "secret.generic"(%arg0, %arg1, %arg2) ({
    ^bb1(%arg3: tensor<2x2xi32>, %arg4: tensor<2x2xi32>, %arg5: tensor<2x2xi32>):
      %8 = "tensor.insert"(%6, %arg3, %c0) : (i32, tensor<2x2xi32>, index) -> tensor<2x2xi32>
      %9 = "tensor.insert"(%6, %arg4, %c1) : (i32, tensor<2x2xi32>, index) -> tensor<2x2xi32>
      %10 = "tensor.insert"(%6, %arg5, %c2) : (i32, tensor<2x2xi32>, index) -> tensor<2x2xi32>
      "secret.yield"(%8, %9, %10) : (tensor<2x2xi32>, tensor<2x2xi32>, tensor<2x2xi32>) -> ()
    }) {__resattrs = [{some_attr = 42 : i32}]} : (!secret_secret, tensor<2x2xi32>, !secret_secret) -> !secret_secret
    "func.return"(%7) : (!secret_secret) -> ()
  }) : () -> ()
}) : () -> ()