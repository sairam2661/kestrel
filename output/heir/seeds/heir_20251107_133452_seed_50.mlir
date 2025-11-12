"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, i32, tensor<8xi16>) -> i64, sym_name = "complex_secret_tensor_rotations"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: i32, %arg2: tensor<8xi16>):
    %0 = "arith.constant"() <{value = 16 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 8 : index}> : () -> index
    %2 = "secret.generic"(%arg0, %arg2) ({
    ^bb1(%arg3: !secretsecret, %arg4: tensor<8xi16>):
      %3 = "tensor_ext.rotate"(%arg4, %1) : (tensor<8xi16>, index) -> tensor<8xi16>
      %4 = "secret.generic"(%arg3, %3) ({
      ^bb2(%arg5: !secretsecret, %arg6: tensor<8xi16>):
        %5 = "tensor_ext.rotate"(%arg6, %1) : (tensor<8xi16>, index) -> tensor<8xi16>
        "secret.yield"(%5) : (tensor<8xi16>) -> ()
      }) : (!secretsecret, tensor<8xi16>) -> !secretsecret
      "secret.yield"(%4) : (tensor<8xi16>) -> ()
    }) : (!secretsecret, tensor<8xi16>) -> !secretsecret
    %5 = "arith.addi"(%arg1, %1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %6 = "arith.cast"(%5) : (i32) -> i64
    %7 = "arith.addi"(%0, %6) <{overflowFlags = #arithoverflownone}> : (i64, i64) -> i64
    "func.return"(%7) : (i64) -> ()
  }) : () -> ()
}) : () -> ()