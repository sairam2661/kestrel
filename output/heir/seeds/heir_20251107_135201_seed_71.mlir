"builtin.module"() ({
  "func.func"() <{function_type = (!secret, tensor<4xi32>, tensor<4xi32>) -> !secret, sym_name = "test_complex_operations"}> ({
  ^bb0(%arg0: !secret, %arg1: tensor<4xi32>, %arg2: tensor<4xi32>):
    %4 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %6 = "secret.generic"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
      %7 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
      %8 = "arith.muli"(%7, %arg5) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
      %9 = "arith.addi"(%8, %4) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
      "secret.yield"(%9) : (i32) -> ()
    }) : (!secret, tensor<4xi32>, tensor<4xi32>) -> !secret
    "func.return"(%6) : (!secret) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secret, tensor<4xi32>, tensor<4xi32>) -> !secret, sym_name = "test_nested_secret_operations"}> ({
  ^bb0(%arg0: !secret, %arg1: tensor<4xi32>, %arg2: tensor<4xi32>):
    %4 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %6 = "secret.generic"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
      %7 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
      %8 = "secret.generic"(%arg0, %7) ({
      ^bb0(%arg6: i32, %arg7: i32):
        %9 = "arith.muli"(%arg6, %arg7) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
        "secret.yield"(%9) : (i32) -> ()
      }) : (!secret, i32) -> !secret
      "secret.yield"(%8) : (!secret) -> ()
    }) : (!secret, tensor<4xi32>, tensor<4xi32>) -> !secret
    "func.return"(%6) : (!secret) -> ()
  }) : () -> ()
}) : () -> ()