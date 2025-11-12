"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xf32>) -> tensor<4x4xf32>, sym_name = "matrix_transform"}> ({
  ^bb0(%arg0: tensor<4x4xf32>):
    %0 = "arith.constant"() <{value = dense<[[1.0, 0.0, 0.0, 0.0], [0.0, 1.0, 0.0, 0.0], [0.0, 0.0, 1.0, 0.0], [0.0, 0.0, 0.0, 1.0]]> : tensor<4x4xf32>}> : () -> tensor<4x4xf32>
    %1 = "arith.mulf"(%arg0, %0) <{overflowFlags = #arith_overflow_mode}> : (tensor<4x4xf32>, tensor<4x4xf32>) -> tensor<4x4xf32>
    %2 = "arith.addf"(%1, %arg0) <{overflowFlags = #arith_overflow_mode}> : (tensor<4x4xf32>, tensor<4x4xf32>) -> tensor<4x4xf32>
    "func.return"(%2) : (tensor<4x4xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "increment"}> ({
  ^bb1(%arg1: i32):
    %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %4 = "arith.addi"(%arg1, %3) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4x4xf32>) -> tensor<4x4xf32>, sym_name = "main"}> ({
  ^bb2(%arg2: tensor<4x4xf32>):
    %5 = "func.call"(%arg2) <{callee = @matrix_transform}> : (tensor<4x4xf32>) -> tensor<4x4xf32>
    "func.return"(%5) : (tensor<4x4xf32>) -> ()
  }) : () -> ()
}) : () -> ()