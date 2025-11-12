"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret, tensor<2x2xi32>) -> (!secret_secret, tensor<2x2xi32>), sym_name = "secret_add_tensor"}> ({
  ^bb0(%arg0: !secret_secret, %arg1: tensor<2x2xi32>):
    %1 = "arith.constant"() <{value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %2 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i32, %arg3: i32):
      %4 = "arith.addi"(%arg2, %arg3) : (i32, i32) -> i32
      "secret.yield"(%4) : (i32) -> ()
    }) : (!secret_secret, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%arg0, %2) : (!secret_secret, tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()