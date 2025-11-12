"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, i32, tensor<10xi32>) -> (!secretsecret, tensor<10xi32>), sym_name = "complex_interaction"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: i32, %arg2: tensor<10xi32>):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg1, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
    %3 = "tensor.insert"(%2, %arg2, %0) : (f32, tensor<10xi32>, i32) -> tensor<10xi32>
    %4 = "secret.generic"(%arg0, %1, %3) ({
    ^bb1(%arg3: !secretsecret, %arg4: i32, %arg5: tensor<10xi32>):
      %5 = "arith.addi"(%arg4, %arg1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %6 = "tensor.extract"(%arg5, %0) : (tensor<10xi32>, i32) -> f32
      "secret.yield"(%arg3, %5, %6) : (!secretsecret, i32, f32) -> ()
    }) : (!secretsecret, i32, tensor<10xi32>) -> (!secretsecret, i32, f32)
    "func.return"(%4#0, %4#1, %4#2) : (!secretsecret, tensor<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()