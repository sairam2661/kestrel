"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret_tensor_4xi32, !secret_secret_tensor_4xi32) -> !secret_secret_tensor_4xi32, sym_name = "tensor_rotation_and_addition"}> ({
  ^bb0(%arg0: !secret_secret_tensor_4xi32, %arg1: !secret_secret_tensor_4xi32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<4xi32>, %arg3: tensor<4xi32>):
      %4 = "tensor_ext.rotate"(%arg2, %1) : (tensor<4xi32>, index) -> tensor<4xi32>
      %5 = "arith.addi"(%4, %arg3) <{overflowFlags = #arith_overflow_none}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      "secret.yield"(%5) : (tensor<4xi32>) -> ()
    }) : (!secret_secret_tensor_4xi32, !secret_secret_tensor_4xi32) -> !secret_secret_tensor_4xi32
    "func.return"(%2) : (!secret_secret_tensor_4xi32) -> ()
  }) : () -> ()
}) : () -> ()