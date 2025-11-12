"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "tensor_mixer"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>, %arg2: tensor<4x4xi32>):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2 = "tensor.extract"(%arg0, %0, %1) : (tensor<4x4xi32>, i32, i32) -> i32
    %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %5 = "tensor.extract"(%arg1, %3, %4) : (tensor<4x4xi32>, i32, i32) -> i32
    %6 = "arith.addi"(%2, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "tensor.insert"(%6, %arg2, %0, %1) : (i32, tensor<4x4xi32>, i32, i32) -> tensor<4x4xi32>
    "func.return"(%7) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secret_secreti32, !secret_secreti32) -> !secret_secreti32, sym_name = "secret_mult"}> ({
  ^bb0(%arg0: !secret_secreti32, %arg1: !secret_secreti32):
    %2 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg3: i32, %arg4: i32):
      %5 = "arith.muli"(%arg3, %arg4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "secret.yield"(%5) : (i32) -> ()
    }) : (!secret_secreti32, !secret_secreti32) -> !secret_secreti32
    "func.return"(%2) : (!secret_secreti32) -> ()
  }) : () -> ()
}) : () -> ()