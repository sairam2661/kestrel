"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, tensor<4x4xi32>) -> i32, sym_name = "mixed_secret_tensor"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: tensor<4x4xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "secret.generic"(%arg0) ({
    ^bb0(%arg2: i32):
      %3 = "arith.addi"(%arg2, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "secret.yield"(%3) : (i32) -> ()
    }) : (!secretsecret) -> !secretsecret
    %4 = "tensor.extract"(%arg1, %0) : (tensor<4x4xi32>, index) -> i32
    %5 = "arith.cmpi"(%4, %0, "eq") : (i32, i32) -> i1
    %6 = "arith.select"(%5, %4, %0) : (i1, i32, i32) -> i32
    "func.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()