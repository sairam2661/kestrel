"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>, i32) -> tensor<2x2xi32>, sym_name = "matrix_multiply_with_secret"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>, %arg2: i32):
    %0 = "secret.conceal"(%arg2) : (i32) -> tensor<2x2xi32>
    %1 = "tensor.empty"() : () -> tensor<2x2xi32>
    %2 = "linalg.map"(%arg0, %arg1, %1) ({
    ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
      %6 = "arith.addi"(%arg3, %arg4) : (i32, i32) -> i32
      "linalg.yield"(%6) : (i32) -> ()
    }) : (tensor<2x2xi32>, tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %7 = "arith.constant"() <{value = dense<[[1, 0], [0, 1]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %8 = "linalg.map"(%0, %7, %2) ({
    ^bb0(%arg6: i32, %arg7: i32, %arg8: i32):
      %9 = "arith.addi"(%arg6, %arg7) : (i32, i32) -> i32
      "linalg.yield"(%9) : (i32) -> ()
    }) : (tensor<2x2xi32>, tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%8) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()