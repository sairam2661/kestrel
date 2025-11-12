"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow_surrounded_by_none}> : (i32, i32) -> i32
    %1 = "arith.addi"(%0, %arg0) <{overflowFlags = #arith_overflow_surrounded_by_none}> : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %arg1) <{overflowFlags = #arith_overflow_surrounded_by_none}> : (i32, i32) -> i32
    %3 = "arith.subi"(%2, %arg0) <{overflowFlags = #arith_overflow_surrounded_by_none}> : (i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "tensor_ops"}> ({
  ^bb0(%arg4: tensor<2xi32>, %arg5: tensor<2xi32>):
    %4 = "arith.addi"(%arg4, %arg5) <{overflowFlags = #arith_overflow_surrounded_by_none}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %5 = "arith.muli"(%4, %arg4) <{overflowFlags = #arith_overflow_surrounded_by_none}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%5) : (tensor<2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secret_secret, !secret_secret) -> !secret_secret, sym_name = "secret_ops"}> ({
  ^bb0(%arg6: !secret_secret, %arg7: !secret_secret):
    %6 = "secret.generic"(%arg6) ({
    ^bb0(%arg8: i32):
      %7 = "arith.addi"(%arg8, %arg8) <{overflowFlags = #arith_overflow_surrounded_by_none}> : (i32, i32) -> i32
      %8 = "arith.muli"(%7, %arg8) <{overflowFlags = #arith_overflow_surrounded_by_none}> : (i32, i32) -> i32
      "secret.yield"(%8) : (i32) -> ()
    }) : (!secret_secret) -> !secret_secret
    "func.return"(%6) : (!secret_secret) -> ()
  }) : () -> ()
}) : () -> ()