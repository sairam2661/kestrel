"builtin.module"() ({
  "func.func"() <{function_type = (!secret_SECRET_tensor_ext_LAYOUT_tensor_2xi32, !secret_SECRET_tensor_ext_LAYOUT_tensor_2xi32) -> !secret_SECRET_tensor_ext_LAYOUT_tensor_2xi32, sym_name = "complex_addition"}> ({
  ^bb0(%arg0: !secret_SECRET_tensor_ext_LAYOUT_tensor_2xi32, %arg1: !secret_SECRET_tensor_ext_LAYOUT_tensor_2xi32):
    %0 = "arith.constant"() <{value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %1 = "tensor.insert"(%0, %arg0, %c0_0) : (tensor<2x2xi32>, !secret_SECRET_tensor_ext_LAYOUT_tensor_2xi32, index, index) -> !secret_SECRET_tensor_ext_LAYOUT_tensor_2xi32
    %2 = "arith.constant"() <{value = dense<[[5, 6], [7, 8]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %3 = "tensor.insert"(%2, %arg1, %c0_0) : (tensor<2x2xi32>, !secret_SECRET_tensor_ext_LAYOUT_tensor_2xi32, index, index) -> !secret_SECRET_tensor_ext_LAYOUT_tensor_2xi32
    %4 = "secret.generic"(%1, %3) ({
    ^bb0(%arg2: tensor<2x2xi32>, %arg3: tensor<2x2xi32>):
      %5 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_none}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
      "secret.yield"(%5) : (tensor<2x2xi32>) -> ()
    }) : (!secret_SECRET_tensor_ext_LAYOUT_tensor_2xi32, !secret_SECRET_tensor_ext_LAYOUT_tensor_2xi32) -> !secret_SECRET_tensor_ext_LAYOUT_tensor_2xi32
    "func.return"(%4) : (!secret_SECRET_tensor_ext_LAYOUT_tensor_2xi32) -> ()
  }) : () -> ()
}) : () -> ()