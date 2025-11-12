"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "matrix_sum"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "tensor.empty"() : () -> tensor<4x4xi32>
    %1 = "linalg.map"(%arg0, %arg1, %0) ({
    ^bb0(%arg2: i32, %arg3: i32):
      %2 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      "linalg.yield"(%2) : (i32) -> ()
    }) : (tensor<4x4xi32>, tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    "func.return"(%1) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()