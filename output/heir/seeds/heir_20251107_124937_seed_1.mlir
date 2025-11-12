"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, tensor<4xi32>) -> !secretsecret, sym_name = "nested_secret_op"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %1 = "tensor.extract"(%arg1, %0) : (tensor<4xi32>, tensor<2x2xi32>) -> tensor<4xi32>
    %2 = "secret.generic"() ({
    ^bb1(%arg2: i1, %arg3: i32, %arg4: i32, %arg5: i32):
      %3 = "arith.addi"(%arg3, %arg4) : (i32, i32) -> i32
      %4 = "arith.muli"(%arg3, %arg5) : (i32, i32) -> i32
      %5 = "secret.yield"(%2, %3, %4) : (tensor<4xi32>, i32, i32) -> ()
    }) : () -> !secretsecret
    "func.return"(%2) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()