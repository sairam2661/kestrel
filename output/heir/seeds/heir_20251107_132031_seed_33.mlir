"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret_i32_tensor_4x4, !secret_secret_index) -> !secret_secret_i32_tensor_4x4, sym_name = "unusual_tensor_insertion"}> ({
  ^bb0(%arg0: !secret_secret_i32_tensor_4x4, %arg1: !secret_secret_index):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<4x4xi32>, %arg3: index):
      %2 = "arith.cmpi"(%arg3, %arg3) <{predicate = "eqi"}> : (index, index) -> i1
      %3 = "arith.select"(%2, %0, %arg2) : (i1, i32, tensor<4x4xi32>) -> tensor<4x4xi32>
      "secret.yield"(%3) : (tensor<4x4xi32>) -> ()
    }) : (!secret_secret_i32_tensor_4x4, !secret_secret_index) -> !secret_secret_i32_tensor_4x4
    "func.return"(%1) : (!secret_secret_i32_tensor_4x4) -> ()
  }) : () -> ()
}) : () -> ()