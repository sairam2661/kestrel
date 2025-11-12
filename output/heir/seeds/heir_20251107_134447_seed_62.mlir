"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret, tensor<4xi32>) -> !secret_secret, sym_name = "complex_secret_tensor_op"}> ({
  ^bb0(%arg0: !secret_secret, %arg1: tensor<4xi32>):
    %1 = "arith.constant"() <{value = 5 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "tensor.extract"(%arg1, %1) : (tensor<4xi32>, index) -> i32
    %4 = "arith.addi"(%3, %2) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %5 = "secret.generic"(%arg0, %4) ({
    ^bb0(%arg2: i32, %arg3: i32):
      %6 = "arith.subi"(%arg3, %arg2) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %7 = "arith.muli"(%6, %3) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "secret.yield"(%7) : (i32) -> ()
    }) : (!secret_secret, i32) -> !secret_secret
    "func.return"(%5) : (!secret_secret) -> ()
  }) : () -> ()
}) : () -> ()