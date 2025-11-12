"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, tensor<4xi32>) -> tensor<4xi32>, sym_name = "test_secret_tensor_interaction"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: tensor<4xi32>):
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb1(%sarg0: i32, %sarg1: tensor<4xi32>):
      %1 = "tensor.extract"(%sarg1, %c0_i32) : (tensor<4xi32>, i32) -> i32
      %2 = "arith.mulf"(%1, %sarg0) : (i32, i32) -> i32
      %3 = "tensor.insert"(%2, %sarg1, %c0_i32) : (i32, tensor<4xi32>, i32) -> tensor<4xi32>
      "secret.yield"(%3) : (tensor<4xi32>) -> ()
    }) : (!secretsecret, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%0) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()