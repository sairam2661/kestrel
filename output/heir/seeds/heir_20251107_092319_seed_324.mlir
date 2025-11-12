"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret_tensor_i32, !secret_secret_tensor_i32, !secret_secret_tensor_i32) -> !secret_secret_tensor_i32, sym_name = "tensor_op_mixer"}> ({
  ^bb0(%arg0: !secret_secret_tensor_i32, %arg1: !secret_secret_tensor_i32, %arg2: !secret_secret_tensor_i32):
    %0 = "arith.constant"() <{value = dense<0> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %4 = "secret.generic"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: tensor<2x2xi32>, %arg4: tensor<2x2xi32>, %arg5: tensor<2x2xi32>):
      %5 = "tensor.extract"(%arg3, %2) : (tensor<2x2xi32>, i32) -> i32
      %6 = "tensor.extract"(%arg4, %2) : (tensor<2x2xi32>, i32) -> i32
      %7 = "tensor.extract"(%arg5, %2) : (tensor<2x2xi32>, i32) -> i32
      %8 = "arith.addi"(%5, %6) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %9 = "arith.addi"(%8, %7) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %10 = "arith.muli"(%9, %1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %11 = "tensor.insert"(%10, %0, %3) : (i32, tensor<2x2xi32>, i32) -> tensor<2x2xi32>
      "secret.yield"(%11) : (tensor<2x2xi32>) -> ()
    }) : (!secret_secret_tensor_i32, !secret_secret_tensor_i32, !secret_secret_tensor_i32) -> !secret_secret_tensor_i32
    "func.return"(%4) : (!secret_secret_tensor_i32) -> ()
  }) : () -> ()
}) : () -> ()