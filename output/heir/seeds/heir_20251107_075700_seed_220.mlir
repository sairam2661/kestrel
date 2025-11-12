"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xi32>, tensor<10x10xi32>) -> tensor<10x10xi32>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: tensor<10x10xi32>, %arg1: tensor<10x10xi32>):
    %0 = "tensor.empty"() : () -> tensor<10x10xi32>
    %1 = "linalg.map"(%arg0, %arg1, %0) ({
    ^bb0(%arg2: i32, %arg3: i32):
      %4 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_OVERFLOW_NONE}> : (i32, i32) -> i32
      "linalg.yield"(%4) : (i32) -> ()
    }) : (tensor<10x10xi32>, tensor<10x10xi32>, tensor<10x10xi32>) -> tensor<10x10xi32>
    "func.return"(%1) : (tensor<10x10xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, tensor<10x10xi32>) -> tensor<10x10xi32>, sym_name = "scalar_multiply"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<10x10xi32>):
    %2 = "tensor.empty"() : () -> tensor<10x10xi32>
    %3 = "linalg.map"(%arg0, %arg1, %2) ({
    ^bb0(%arg4: i32, %arg5: i32):
      %6 = "arith.muli"(%arg4, %arg5) <{overflowFlags = #arith_OVERFLOW_NONE}> : (i32, i32) -> i32
      "linalg.yield"(%6) : (i32) -> ()
    }) : (i32, tensor<10x10xi32>, tensor<10x10xi32>) -> tensor<10x10xi32>
    "func.return"(%3) : (tensor<10x10xi32>) -> ()
  }) : () -> ()
}) : () -> ()