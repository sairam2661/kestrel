"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret_tensor_2x4xi32, !secret_secret_tensor_2x4xi32) -> !secret_secret_tensor_2x4xi32, sym_name = "tensor_combine"}> ({
  ^bb0(%arg0: !secret_secret_tensor_2x4xi32, %arg1: !secret_secret_tensor_2x4xi32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<2x4xi32>, %arg3: tensor<2x4xi32>):
      %3 = "tensor.extract"(%arg2, %0, %1) : (tensor<2x4xi32>, index, index) -> i32
      %4 = "tensor.extract"(%arg3, %0, %1) : (tensor<2x4xi32>, index, index) -> i32
      %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %6 = "tensor.insert"(%5, %arg2, %0, %1) : (i32, tensor<2x4xi32>, index, index) -> tensor<2x4xi32>
      "secret.yield"(%6) : (tensor<2x4xi32>) -> ()
    }) : (!secret_secret_tensor_2x4xi32, !secret_secret_tensor_2x4xi32) -> !secret_secret_tensor_2x4xi32
    "func.return"(%2) : (!secret_secret_tensor_2x4xi32) -> ()
  }) : () -> ()
}) : () -> ()