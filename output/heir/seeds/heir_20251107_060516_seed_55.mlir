"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret_tensor_i32, !secret_secret_tensor_i32) -> !secret_secret_tensor_i32, sym_name = "tensor_conceal_add"}> ({
  ^bb0(%arg0: !secret_secret_tensor_i32, %arg1: !secret_secret_tensor_i32):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<2x3xi32>, %arg3: tensor<2x3xi32>):
      %1 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_none}> : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
      %2 = "secret.conceal"(%1) : (tensor<2x3xi32>) -> !secret_secret_tensor_i32
      "secret.yield"(%2) : (!secret_secret_tensor_i32) -> ()
    }) : (!secret_secret_tensor_i32, !secret_secret_tensor_i32) -> !secret_secret_tensor_i32
    "func.return"(%0) : (!secret_secret_tensor_i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "integer_add"}> ({
  ^bb0(%arg4: i32, %arg5: i32):
    %3 = "arith.addi"(%arg4, %arg5) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "float_add"}> ({
  ^bb0(%arg6: f32, %arg7: f32):
    %4 = "arith.addf"(%arg6, %arg7) : (f32, f32) -> f32
    "func.return"(%4) : (f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>, sym_name = "vector_float_add"}> ({
  ^bb0(%arg8: tensor<2xf32>, %arg9: tensor<2xf32>):
    %5 = "arith.addf"(%arg8, %arg9) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>
    "func.return"(%5) : (tensor<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()