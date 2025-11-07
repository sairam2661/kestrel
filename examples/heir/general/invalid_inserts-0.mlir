"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<tensor<16x16xi32>>, !secret.secret<index>) -> !secret.secret<tensor<16x16xi32>>, sym_name = "multi_dimensional_insert"}> ({
  ^bb0(%arg0: !secret.secret<tensor<16x16xi32>>, %arg1: !secret.secret<index>):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<16x16xi32>, %arg3: index):
      %2 = "tensor.insert"(%0, %arg2, %arg3, %arg3) : (i32, tensor<16x16xi32>, index, index) -> tensor<16x16xi32>
      "secret.yield"(%2) : (tensor<16x16xi32>) -> ()
    }) : (!secret.secret<tensor<16x16xi32>>, !secret.secret<index>) -> !secret.secret<tensor<16x16xi32>>
    "func.return"(%1) : (!secret.secret<tensor<16x16xi32>>) -> ()
  }) : () -> ()
}) : () -> ()

